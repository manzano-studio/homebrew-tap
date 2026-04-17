class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.2/manzano-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "263c6517c2bc82a641b59fd76633edbea8a3788213ce8812d0fd8d348f53bbaa"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.2/manzano-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "b513522da261888dac14c6b686f12798d4fafaae40c2d6535cafe629e01deb7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.2/manzano-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7d361046a304a009eca89b34effb7e8641cd5abb4cbffde520f867899a07793"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.2/manzano-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbed5c69895e437ab86f38d8f05985087ee0b9d06b9f6600d550e3113b42e11c"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
