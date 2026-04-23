class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.5/manzano-0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "b717fea0136dfc671efa535ea5f176b01eb9138944bf4377de0b1eac370fcbdd"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.5/manzano-0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "39e0f41968334850870b51b9a20764a5247f617f38733944cc859a34410c8cba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.5/manzano-0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b547ef60d389ab9eb9df03073cd49be100748751253fb76c497098c25c649a8"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.5/manzano-0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c4ad6ce746fa8c17da0ac02f782dad66eeb81d1972c524a7619b57965e91f54"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
