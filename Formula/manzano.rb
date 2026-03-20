class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.4/manzano-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "4ee004477f93d67b4e139ba764948c1a1ba3bc1113157955165b2af5137309db"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.4/manzano-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "f59abbe82585ab30c51e82ed5d67ba1b163433ccc9ecff051c685c4decd2d3c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.4/manzano-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42d59bf1e98726537cd829b463a04d59c19da8adfe73bc9f4d48a50037c21b10"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.4/manzano-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55d7a641b9528caf387f03c6dd36497ee3ba04f59e4e6c4ebb09a3df650a8a71"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
