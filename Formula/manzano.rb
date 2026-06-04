class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.8/manzano-0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "eccaba61f63547fe5b16ec8d2e85a590bcbd625493cd465bcdc50bf4df558a01"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.8/manzano-0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "d14f17096b9486634a5e3b5507cb0c4615751c8bb2ca2202455777bfa58e46fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.8/manzano-0.4.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31ae6416d44d491f6e7f014d4f8b1f8041e0549a516fd5fb801d89eb52a65a21"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.8/manzano-0.4.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97ab03bae01fd2555dd494f2f7e9b5c081eeac3f3d076aa894e83988eb95848a"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
