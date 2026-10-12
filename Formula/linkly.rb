class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "8e1e9f9ecd4be7a48dfbc398d8fa00ea6658dede6130ff40e284afbc856a6722"
    else
      url "https://updater.linkly.ai/cli/v1.0.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "4fa5018717f779f98a3d2e95aab333b1c78cd71088cb304fa5ed35640059ff21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c3532b06f870f72532e69e38c943a785aab2ec188baff0cfa579bfc9e1b4930"
    else
      url "https://updater.linkly.ai/cli/v1.0.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "386625fab554bbf5d3d22ce59341e639c004bb41d3b3b3dc2692071eb2e65721"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
