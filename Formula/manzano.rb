class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.2/manzano-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "3eb502d3260372050bbb824624490128bc4ac7cf2f9f2f31aa7129e1e06ad700"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.2/manzano-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "7d5dd3f8c08656cd14e8fec179eaabeb6b0a0679a17a75c8db5ee46689058d65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.2/manzano-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66044f4f69b3683b71257ebc1ed9f8be424ab4c16d806b392000899e33d99f3b"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.3.2/manzano-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3a1bb5e1491316a1f9d9997f90d0699c905b0d801abbf9668faa3a4f2dd1316"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
