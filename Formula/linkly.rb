class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "28042afddc3a8fa82fd8c15147ec2d39bbc2e199fb3aa4cb8ea26212bb6ac884"
    else
      url "https://updater.linkly.ai/cli/v0.2.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "48a030038325390ac3a31f6397bffd680494b0474783f82b88a34237ae3dcd2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cacfc3716c8c2c5b29315136e2f8c3af20538fd91b01ef5c12a3d4e9e373719"
    else
      url "https://updater.linkly.ai/cli/v0.2.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81b86f2033a4324698769656ca34b104bea02eb50f0ffe38abf92b4ef4ef23b9"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
