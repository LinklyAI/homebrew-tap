class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.5.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "7dfbe81453ce26ba19736c678c756ec7941f0cba30c4184bdc059e2ab6e40f47"
    else
      url "https://updater.linkly.ai/cli/v0.5.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "76670df9672a8a5d5d02ed2d65aab1be695c501d4823d7ea17cbc4662311aac4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.5.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a770f536a9a0a9680ddb83a69dbc8c136a0645c1a7c522160ccdeee62750650d"
    else
      url "https://updater.linkly.ai/cli/v0.5.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5828fa4c9541470a7e587627da91a24fd5766afe380e882be9711f107f8e898"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
