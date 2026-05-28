class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.4.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "43c5de007da39f4c0e2e81377ec50e0c7b1af6e5a89cfd040d43664c037eff85"
    else
      url "https://updater.linkly.ai/cli/v0.4.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "5213ea57152aa420e849a7468905f2530a2290988783b461f75dc87dc2093faa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.4.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c0b12a94930226bea0ec19ecb2762f6502a649340eff39cde9b61f1765b0e5a"
    else
      url "https://updater.linkly.ai/cli/v0.4.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d57fee73ad773233a45f787c231cc481e47f3ab6fac8827e6d35c1040afffa60"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
