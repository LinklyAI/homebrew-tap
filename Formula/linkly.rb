class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "80e1d3e445de2daafa7309b654ba22985dd26a7181c9173cb3ae9e74042f3155"
    else
      url "https://updater.linkly.ai/cli/v0.6.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "c96d375e5864fd6be14c4dae1d21f5f1711e39549536d3ed7027599df5514e70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18bf9ffc517ada6eeb5b35e7f36017ac2732885873232b437cfeb711c7702537"
    else
      url "https://updater.linkly.ai/cli/v0.6.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e694b5a9a8fc480ddd5203a0d268103e1a57d15b45c2db56df5ee0e92d63733d"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
