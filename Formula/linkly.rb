class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.2.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "bd431f2a6587ee5cb779d61775be6851a060efd2f0275431e276623e34e8ff5a"
    else
      url "https://updater.linkly.ai/cli/v1.2.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "fcf0fe564a0d62fcd10bf170159e90d879b1eace8dbe670cea584616bda463c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.2.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f857d3bec08d228e3c3d65ac909383114ca804ef01a7471e09522467264cf500"
    else
      url "https://updater.linkly.ai/cli/v1.2.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbe546183a8231a6bb23a4d5003ddaf7b83b2d14e9760edc41c64658bd8f5827"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
