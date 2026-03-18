class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.2/manzano-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "cabb1c26e05ad89485b46a0aacb2d8ad21929c036aa9d9b686d95c8e8914b984"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.2/manzano-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "dc998f28f38860dda628020ec53f5e2ae5d90c817bfda07b151748da7d7385c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.2/manzano-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6eb6c7c011440835e52c8adf01cfe71907d10c818c59089ebbf7eb9f53c82c6c"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.2/manzano-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9624201b45c60350037a6f541d252c5e46d118c852305a040dd32394515a3416"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
