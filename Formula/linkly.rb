class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.1/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "8d462124cbeee42b0584c191091b704e5fb9f7029cedc5bed45be86e2604b3ab"
    else
      url "https://updater.linkly.ai/cli/v0.6.1/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "9be9f5e09de665436fd896c10ccda4ef3b27422f2a2511686e3c8585d400feec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.6.1/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34317a4052ba8e163f351322c1d264dfadac1f0146e7127d6076a6cb983cdf3c"
    else
      url "https://updater.linkly.ai/cli/v0.6.1/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa7f9c4036d47c0230bb1f9ccfbcaac6446413d27bf717ac26192dff927c728b"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
