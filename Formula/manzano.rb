class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.6/manzano-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "74c4b5c5aa3a9cc5bb61c1fa9ad455c57acdb036c9e147d2d6b685fd981135bc"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.6/manzano-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "e5a406a610e7dfc7ceabb572771352872091cf528d6c4b1a24714668f3317746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.6/manzano-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b42a0d95997bdc6db20f0b20fe43f66f7689989384dbd22078f11b68fef6a0c2"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.6/manzano-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb17365dbda946a965b41fb947015fae36d6e435f568bea96681bec73ed0be78"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
