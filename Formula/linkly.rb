class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.2/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "9c63bee4592426d7bd5c620a0c4f6278465695c69e2a96131aeb19bcff43ba10"
    else
      url "https://updater.linkly.ai/cli/v0.6.2/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "90d472c3aac514f3a6789d892dbfaf69a588d30c8eb044502bfcb5ac874b0994"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.2/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f23cd9e734eefb518c2b6ec5baeb1de3082728c66b9a8fcd22e149ebd0964304"
    else
      url "https://updater.linkly.ai/cli/v0.6.2/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "def5d492e572d985d2c49be6bbbf8393e51e89b1191ddc44eaab3f9d445a4204"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
