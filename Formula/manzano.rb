class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.1/manzano-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "8a5e35b081bc56e5e28ee26a6e2da8153d81a6aa39eea6e0b42b284804cef128"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.1/manzano-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "6a3e3770cdcc05c0754b31039a5bc53b8f6d0ff7c14e9b64f21ee89663099315"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.1/manzano-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2af58f248e6b014e8c038e836d1634f0f258162ea352a0133066c5550672170a"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.1/manzano-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6406832c25279e2972c3b7f1f9abb01bac364009624fcc63d9b58b62756b11c5"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
