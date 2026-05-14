class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.4.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "77e0510fc6c1b5024b594032d1537757952c2db5f5a541aa4693c9d6396848e1"
    else
      url "https://updater.linkly.ai/cli/v0.4.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "7aff191af6cf2c0a009a4d77b54fd630d236485328be71ada04a33fd087a76b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.4.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a802aa035192f374291aee772f1931800387d8f7d8f2032d0c091044e4e13b9"
    else
      url "https://updater.linkly.ai/cli/v0.4.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6757bcdd36477f053a4afe7c988c796ced96fcb2b60b2ace055f35f33cde3818"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
