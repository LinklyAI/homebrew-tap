class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "c807c5f4037d85ee2edf66fcef056f0e536148e8e8abc83448cc75f736cbdecb"
    else
      url "https://updater.linkly.ai/cli/v0.8.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "fafb42da4eb09be22f527dcdaca573d7110d2687649db08c8d55475972a288cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48f02e64a5e2fc1f076d1e029439d7df5f929056805428fdec76aa6a5456a83b"
    else
      url "https://updater.linkly.ai/cli/v0.8.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d76e2b35f9fa42d41238aa2a5ac95d97b836841b9b945a05163325d2d93bde8"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
