class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.9/manzano-0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "18a25870ba3bd214b7c87acffe85b48d8d7abe901d340b6157108436796178f2"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.9/manzano-0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "ff993d969a4680a67f9c586af9f427a5991527fea133f99e3e4bd1be3265f6d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.9/manzano-0.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e2b8a40fa85a8b96a681ab4d7f913058bc295d33f06dfecc3881dc9e83c0a9b"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.9/manzano-0.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "671dd001343efe4b928b488a156100100f3c88bb94d0ad954787d8095437c9be"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
