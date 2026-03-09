class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.1.6/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "efca74a407641823f2c4b333ebe587ce8ae167072dcf7459fca1d440a1567c03"
    else
      url "https://updater.linkly.ai/cli/v0.1.6/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "560ec5f16533df9330bd7ae9d60a7ad36f5becc1019cf840227ffc1c5e575a1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.1.6/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ed6883f9e4d9a8a67f95bb4492b5da2ea7612054d6c5dd9e5f0a8f2f919881f"
    else
      url "https://updater.linkly.ai/cli/v0.1.6/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6805c96ad767fd48aecd0c5a1c1b3255d06e5c37412dc5c6a52e53fd9ae98b27"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
