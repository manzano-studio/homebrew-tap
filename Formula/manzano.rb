class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.1/manzano-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "691a1f76c84fd238d826cba2bb986e313a2c93d1dde09f6febbb771626e6efa7"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.1/manzano-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "a05fd30b795425ecf00ca6ac747f4f699b13dc494b28c2bd9af9c269073d437e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.1/manzano-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db0693ba6a369cf1371a967e17475f9c5a37716b2290aba3ac4c5ffd9be86169"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.1/manzano-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c43ac130f68b65d4767ad78fc005b40262420c41ce2e2c2686eef7551d6b1249"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
