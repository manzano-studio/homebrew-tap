class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.0/manzano-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "01ee98352ccb9ad551b15458c978371030007e91e1ed16f6d389d647944b8190"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.0/manzano-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "102dfc6138a2b4f33b806a710bfce9f8bec06cc647c89368fcec2d9b3b7d0f15"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
