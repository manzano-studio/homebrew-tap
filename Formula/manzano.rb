class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.1.0/manzano-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c7c0ccfe6abdf2281d925a213b929ff1a3641ba6622a0e3b103bc7cf353aca5"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/v0.1.0/manzano-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c32426161bad9eddb7b67f1bb74491ca1cd2be9892f585152c7dd05d272fa952"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
