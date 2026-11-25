class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.2.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "8c168f5aa35a1a06a370bb3e9adb913dbfa7a5928e77698342fde34966cdc999"
    else
      url "https://updater.linkly.ai/cli/v1.2.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "5af18c21184a8beceef268d233cdb5bccebf66bae08faa735b722dbf02b9e81d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.2.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9d14325705dc6f7a09b9eba9965e8907d49a62cca89d09a147a880ff25019fb"
    else
      url "https://updater.linkly.ai/cli/v1.2.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d74ae9b9fb3c0a2e465efda13b88e531d642db364b99275572254a30f1c24e6"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
