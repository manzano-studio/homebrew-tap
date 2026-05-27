class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.7/manzano-0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "0cc06a27e018237d13a460192adee48a10f5ad3d6ecec1fa2430ec239fa5c01f"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.7/manzano-0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "47afead81a1c343e77acf864487e8054fb03160c7e3efb8594f3cc495f13d1e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.7/manzano-0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d920824924a277c9617e5998cd44deb40d480dbe53e06e93a1a15e59cd4ac365"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.7/manzano-0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dcc4860e7858a316daef7946df35308a0e60cc0afb2dd448279b0679a255ad4"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
