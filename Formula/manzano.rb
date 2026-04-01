class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.5/manzano-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "89c653d23af0dc25ee8c023449753c560c2958c558a9f8ac8b00571fb37a7ecf"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.5/manzano-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "c3bc2ddad1fe1113c698d6a758b67cbc7f4d22238f9f9dfd46ff5868ab66046e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.5/manzano-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0141b5c4290e3e718a13c5738fe2ed9afca13ec8877ab3ccdcc3929dc8c6326d"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.2.5/manzano-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0303b0459450c48e8a294486a1728db382c590b94efa114f780da876d75ca5b5"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
