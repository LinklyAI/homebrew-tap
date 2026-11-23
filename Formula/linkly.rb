class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.1.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "9e481bfda57c8b6c1beb50ffdd0add78e1bed1750c4d75768414afc5ec853244"
    else
      url "https://updater.linkly.ai/cli/v1.1.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "e608c11bf2bd20f6e78513f7e3242aaf27d19183fa859c7da7e1bd9b50422602"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.1.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5e99649530b0312f255a196beee97da85268278c705c802a5fd922161ea6ebc"
    else
      url "https://updater.linkly.ai/cli/v1.1.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4935246ad40ba04c9987830dde414e072eead4c5df260cbb1056d9eac6ad7160"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
