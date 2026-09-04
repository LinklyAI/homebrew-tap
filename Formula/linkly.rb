class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "44ffb74281cf522b843b4419d4edb8fd3d5d888fe450fdcde2f838bb4bf8e3fa"
    else
      url "https://updater.linkly.ai/cli/v0.7.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "5e000eca595f3ec6bb729ba6ed62014628c45d8e4ccd05017d92650bd83c1abe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5c71c2151e1e003e210efaf7069c38989352a6296ee46161c65b31dde6d65e9"
    else
      url "https://updater.linkly.ai/cli/v0.7.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccb05e4224b24cf4fb3d9c91f6ecfcc855e9a7339b4905a16a2b7bf63f1849de"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
