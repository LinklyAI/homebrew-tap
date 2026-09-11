class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "96485a15c60ebfc5ab651ac850a4c13a6fe25bb2c4556876a4caf7109be95764"
    else
      url "https://updater.linkly.ai/cli/v0.8.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "0a4c6e7ace4f68bb3d396a882942810be46cd8f9ea40f9b6300b9e9b1d26762f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33632c9acf70aeb1c6578f5785c2db34ce9163ad78503a87dc9e96f3e775d643"
    else
      url "https://updater.linkly.ai/cli/v0.8.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f7bd53287b0477eb135d0c11e88fe15478a3ed35cb089cda899b872e75d42c0"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
