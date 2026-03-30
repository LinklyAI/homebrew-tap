class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.3.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "a390b9af5e4623fbb854c4712f29f78a7cdaf2a8aa6f9ebebb399391330603bc"
    else
      url "https://updater.linkly.ai/cli/v0.3.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "38ea81cce137f36c44adc0ca990c055655b45442106a26bd13596b2232b5adae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.3.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab773ae5a36d07feb7146b16e79d67e6f5c354213123d044d35725a6513332db"
    else
      url "https://updater.linkly.ai/cli/v0.3.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "729850c1f81e06cef67047acafa0277ed9e0354b0338ce549aa3135550a82af6"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
