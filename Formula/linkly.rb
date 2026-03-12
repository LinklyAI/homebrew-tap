class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.2/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "0e3d60a06e8dc974011c4adaca94f9e39e564ed2a50ffb2c4160dacb35a9c3ee"
    else
      url "https://updater.linkly.ai/cli/v0.2.2/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "2cc96dadbb2ab4899a2f0c5172cabfc2f16002797656da4949633f5feaad1159"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.2/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "376755a54fa3b269b3a354875105656435318c044c93502e6338704194ef20bd"
    else
      url "https://updater.linkly.ai/cli/v0.2.2/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16ae94e7442c2dd1b228ddeabe0034f759031889e221d6e95eb2f55b718a4dd1"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
