class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.2/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "48dcb9bcbc1b9253ed4cbd883849491908646cae11f30635c17007a7323c2eff"
    else
      url "https://updater.linkly.ai/cli/v0.7.2/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "dcb772710c04303baaac0f7fdd4dac2ecd8e5a43271d1c49d9c7b33ba3eb3ce2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.7.2/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fad736ae27001ff68fe1870cf8467b2c78d82f1aaaae0ddf1e3ce930986adca5"
    else
      url "https://updater.linkly.ai/cli/v0.7.2/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "460aaea580a4485b20fc0ed72e95cb7c3bc14a1a9791db15df1243cbfe5e5468"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
