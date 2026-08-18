class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.3/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "c07a97976f36f6a3a3c19480abb7d54ecd2e62ac89f371afa2d39261ceef7539"
    else
      url "https://updater.linkly.ai/cli/v0.6.3/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "1a5f7746e424e2b45ed1e1269eddd6b80cd39f1c5ad0bcb6028d31e707838ab3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.3/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d4498b84055bf7e2b914d4ac2feacad9d4ac1275560a58590e1907cb5909fb1"
    else
      url "https://updater.linkly.ai/cli/v0.6.3/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4b47c04dab24c21fff742d10045bd92a0402e88dfa88b80832ce504707f2322"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
