class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.4/manzano-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "e7261aeb3355a249c14b40dfbc6fa872027f43a7922486ef281fe9e62092d242"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.4/manzano-0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "552f94a5e0f440b18c0dd2200b1a1f2ddcfe0830c0dcb19c0846b05d22bdd0c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.4/manzano-0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac6ed9b19ffb2c286d2f5a04670fbd5c541d59fa78d21d7bafe937da45b966c5"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.4/manzano-0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ce11f03b7fc7300b2409330505b887fdc2b6b8e6b4bc4a93499957936f27de1"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
