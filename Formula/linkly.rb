class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "d83bdf41da449d2d06e12eb95ac21f2635bdaf7fe7fd6b046a9b883447f6b6ea"
    else
      url "https://updater.linkly.ai/cli/v0.2.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "75099fd276d1f599b6d18ca74888194bd7e661e2860c787212e6d5a3a6e298d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.2.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c72424df53b897eece2846c82924f7fdc716af3be9141fafc19999cf8b3eadd1"
    else
      url "https://updater.linkly.ai/cli/v0.2.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d450abbe1e79f2670d01229b59bc7108b7ecee82e255d9470a0aee9feb0a11a"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
