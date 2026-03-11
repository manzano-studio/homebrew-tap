class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.1.3/manzano-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "1ba5b51c98a103fde0f7955c15af967482ba9819d5e495fe9549cb00b69b8683"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.1.3/manzano-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "13d90a53622036f285ec8e1f9e9d4200021f058858be9412e7cb296968f6b84a"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
