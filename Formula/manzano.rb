class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.3/manzano-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "5d8c09570c5ccb3a4c8ea17ff42e177243915223f2369eba14606aea1659df5d"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.3/manzano-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "1aed1dd0323318b7a3e81ac0f18e387ee2f9f4998f44133852600a5afb41c12f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.3/manzano-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1e6eb33024900f5a61da0fe49c4dc49d0003ee5d226fa42834a75f23e33ff1b"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.3/manzano-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5058a07950aae15d89ff24d549ff564465b157a6004b9d1ace407b37fc38487"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
