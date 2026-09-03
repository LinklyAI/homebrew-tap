class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "a038562c439efbac783407edbf7df0105aab9b791d3ca1add87e4a8ff4a00cfe"
    else
      url "https://updater.linkly.ai/cli/v0.7.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "b25ab7dcbb248fcb326fb803f2be26622b226cd0b987f083639671c76900cfba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cdb5e65fe58e6f3f213498d8f13e4bc72a788f2daf57b582fa38d5b2c0424c6"
    else
      url "https://updater.linkly.ai/cli/v0.7.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e92bd74e2ff7ed39396c902cd8787c3081034a22c1cc57f9aa1d12e928d0a517"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
