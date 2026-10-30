class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.5/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "6d37528c30bc580d6d923d1223ff56337102ae32fd53dd5ca8d319014af5eecd"
    else
      url "https://updater.linkly.ai/cli/v1.0.5/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "91290175d30db31914901255823aef381838e163d633d0e04bae175289b3bae4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.5/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b3ca17b0791f6197f2713fc240493dd50570f3f31261b89dad2d0bcb530d9d8"
    else
      url "https://updater.linkly.ai/cli/v1.0.5/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81d357e70e7079e1f99ad1486fc1b1a59ce29992da7f472477f4158c2c8923a3"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
