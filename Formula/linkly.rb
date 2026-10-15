class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.2/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "46e847005f9828f444676584c7b96e2feeeeaf6cb37118f387c3b0a9eb737e1b"
    else
      url "https://updater.linkly.ai/cli/v1.0.2/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "fd0f1d080777fe9269adaa87106ba60eeef215d2d6ad6ded2c30210e03ec7e6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.2/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "336ab5a341ffd8d248ff090f225799fa14d61284a5cbe5a27c04af6ab01dcd01"
    else
      url "https://updater.linkly.ai/cli/v1.0.2/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8583b4758989acb90ff68a9b6fad0215f7f89fc8b184ed13efa506e5a74b9907"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
