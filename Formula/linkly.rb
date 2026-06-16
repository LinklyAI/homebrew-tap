class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.5.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "77b062ce01e091cb2b7b2866f2f341380f40b2f2cc0c67e55a131f1b82abbf1e"
    else
      url "https://updater.linkly.ai/cli/v0.5.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "ffd71a8149d46b3a2278bed69d6ca82ac4ed1b065274b1f3b26de1ee6177379f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.5.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "632b77ed696a35de2c74d59a460e913b78861c11e3c4dd7bda8866aee82a5c17"
    else
      url "https://updater.linkly.ai/cli/v0.5.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e8ded0b67c4fe1200e89c7d711f8df283959f0880c87848ef198fe72e7a8448"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
