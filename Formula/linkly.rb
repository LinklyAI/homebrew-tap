class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.6/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "0efe198ac46dbd727ec8ce0af68e2c9cb9a6cc6e30a07421c70c526e5ad5dfa8"
    else
      url "https://updater.linkly.ai/cli/v1.0.6/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "4f2f581db368de6f8889563e6f719136e618e955d0bbb9f5ce192b9c64c18e52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.6/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2d782d3ac7ec1238ed0e3b3878a7b99f4ed865d2777887a4b76c34746efd2ec"
    else
      url "https://updater.linkly.ai/cli/v1.0.6/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce129924cd874b091594b6c7d11bdf658cd8db8de8b8a6c185eae1c46bc2eccd"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
