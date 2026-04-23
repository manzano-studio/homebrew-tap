class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.6/manzano-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "e564301ef937771dbbefa9e2065fa6bed7a2f831077afdf6026641994081ded8"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.6/manzano-0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "9deb8c15ec2e9fe775920416a71e342b4ce77bcc33faf7347df9f5770739de60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.6/manzano-0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d71c659bbc5a0a8f6b8e1e62f326ef7ccebb813592a3abf454c020d8cd3fe11"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.6/manzano-0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "826c43cf50dcf4bbc1cc942834897ef5aa0c8e9ddd134fb069018fba0e9d9c81"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
