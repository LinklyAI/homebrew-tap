class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.0/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "5d015a7127d4c81dc5c644e9770a6de93054234df665427f4353888fb05b9088"
    else
      url "https://updater.linkly.ai/cli/v1.0.0/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "68098f83d7c9db1ef85ff2defc541354580dd248e0e092ceb1eafab49e863193"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.0/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7641efed30c74b148fcf0c98caf01ea1f9c82ff14f8b864cae0a5549ce0d76f1"
    else
      url "https://updater.linkly.ai/cli/v1.0.0/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c962adbae7a9af2d3f9be94585d2a879b50c6c96201d4f147099ab7f7c4d027"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
