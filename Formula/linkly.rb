class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.3/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "9eeb96394dae46233b9ea82303017ebd96d6414860406a85dceab2e40bb2460a"
    else
      url "https://updater.linkly.ai/cli/v1.0.3/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "ce315506d92a096d9a393db957f11e406f710b239db29ad378a98e367b930c59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.3/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59334eb5bb2615b836369a12d3b1047584ca51d7399da4e541a6736fbe24876d"
    else
      url "https://updater.linkly.ai/cli/v1.0.3/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37fc23d69067e7f6119f0785b95a2540c1840e9e3bab17e77eccae7b648f74ed"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
