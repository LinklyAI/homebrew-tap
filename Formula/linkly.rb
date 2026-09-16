class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.2/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "900ac06f14c0141ae75bd80b29ade8b5b14c6e4c8df54ced6cf5cb8a5152ecd6"
    else
      url "https://updater.linkly.ai/cli/v0.8.2/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "e1299f31072acf8c6ba0bf1e3ba706dd84039379d23cf30d86e414bb78983adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v0.8.2/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9214a348e71501716ce5c3b3211a55cd22259c250bf93dbc1df1ad966ab5afb1"
    else
      url "https://updater.linkly.ai/cli/v0.8.2/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b67bce4deddeddab968a6e459e1eb47c8f1d54621cb769bba9de4e48dcf04494"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
