class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.1/manzano-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "5201e6023bb63a867dee49adf7ca6efb76935fc50a3ab28909ee85da428ed3e1"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.1/manzano-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "5bf03e137a5a070c2fd0b521363af02ebc8c0fe50bd942e9dca8a7266164c04c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.1/manzano-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20bca4dc5b9a3475e729970cdded2d9c19056834e238ba27820a4055b1177507"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.1/manzano-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "147a1ac3cbdc2773206a7696d8d841378c20ec755f3c6b3830b680672b23a0bf"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
