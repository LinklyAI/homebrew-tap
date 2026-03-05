class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.1.5/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "6a4fef5659dfe881e6edeb9b0db0f4cbe70901afbc01622eee90069afc5d3668"
    else
      url "https://updater.linkly.ai/cli/v0.1.5/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "380e9cb727ee498f26d0782080415927d5525865c68a2a96e01b5c3c22b1344b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.1.5/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df4dd29fe4c1223cf280e05f9d54f21eeea8e39e3d91303a803f67e552950e5f"
    else
      url "https://updater.linkly.ai/cli/v0.1.5/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6386c9f0b0c6fd879c7b073618f4d75a120ad5c73fc4fe1c69332e5897af76d6"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
