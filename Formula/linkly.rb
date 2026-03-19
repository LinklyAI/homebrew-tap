class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.3/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "ad2181e7311a323452a957170e961ab7d3037a614cccda523a51a562bd96d936"
    else
      url "https://updater.linkly.ai/cli/v0.2.3/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "e7e01d8461d0dd4d960a691ba17fa19591bea84e2768196ce0be07983264827e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.3/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fa7e8b574390e13c81c6c11a083b641f177e5b71dde582731d89ed3c1d23ace"
    else
      url "https://updater.linkly.ai/cli/v0.2.3/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ceead9073bfd58848a041ccba28b9a121271e60b0a31d4c66f9389a19b0c54c7"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
