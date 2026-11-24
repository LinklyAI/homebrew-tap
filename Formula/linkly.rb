class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.1.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "68980ded91bbd3f2f1922ad68e20e77fa25c4749a2c13f99e46d9d7f82922e78"
    else
      url "https://updater.linkly.ai/cli/v1.1.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "df33bf45dd7b0ad5407ac728c979bf0b5129aa5b28044ad4d3fa5cd1d72dba93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.1.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b1d74951051ad60b0118a2d0844e9580ceac51eafd7ed61dda47b2171a85221"
    else
      url "https://updater.linkly.ai/cli/v1.1.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb9067356919291adca7c1bbd09214bea8f40011fc8db3185fe02ad11ebe7dff"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
