class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.7/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "33ff2f74662af342f0ceb1aefa32345012ef00d59bee2e7b9bef9b8e90a0e827"
    else
      url "https://updater.linkly.ai/cli/v1.0.7/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "dd4492b0744054f1252278aa4e1627eed397b8d8fd939e4b7f9ee77cf3d1afa7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.7/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "439e3c5fa83dcaaa13c52bdbcd24c0e7cda3c4505bf9c4697e333ddb3dba33bc"
    else
      url "https://updater.linkly.ai/cli/v1.0.7/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecbb5452daa61af52b954e067ca0cf2885606509e6f4e121d8f0cc7ab24df589"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
