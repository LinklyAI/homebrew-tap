class Linkly < Formula
  desc "CLI for Linkly AI - search your local documents from the terminal"
  homepage "https://linkly.ai"
  license "Apache-2.0"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.4/linkly-aarch64-apple-darwin.tar.gz"
      sha256 "d17bdd3b389a759c255c3355fda11ef458ee925b38f94f861068d6be9a3eb06a"
    else
      url "https://updater.linkly.ai/cli/v1.0.4/linkly-x86_64-apple-darwin.tar.gz"
      sha256 "aa2c7a6333060f2971a880b6ea26472a51b9c3f527852f94f127a76840d12126"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://updater.linkly.ai/cli/v1.0.4/linkly-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e66e8006810decf9b660a8ff51cf8d654de5700601f70d22b13fc2108af9017"
    else
      url "https://updater.linkly.ai/cli/v1.0.4/linkly-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "204075c24331820cd669107977582fff9b26be69f8827603cc0a6385e6e122ce"
    end
  end

  def install
    bin.install "linkly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkly --version")
  end
end
