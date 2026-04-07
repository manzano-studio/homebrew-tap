class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.0/manzano-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "74b4503e59428a262f9303fff865b3363b3a3b06acb3d330755abbd182524f3f"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.0/manzano-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "175697c7812a58efb18a7229bd0ef8cbbc48546ca24c31342801be5cb2539b2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.0/manzano-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa87b2dcdbe7f927af6ae5ebd096f0ff25068d3d003b5e6debb2dca3df2a992f"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.0/manzano-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce0d9acd5563771b8d133fd6a7692a143bcbbaf2cc1de4ba301f4b28c2ad4404"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
