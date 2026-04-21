class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.3/manzano-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "39b25781d8e6750ff4c0081205860a84d6260908222f177b5a255d45ccf07581"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.3/manzano-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "d41bd8b5c34260c84274fe1ac8e5bd36044d983fb5901b4ffdb93f018a23de72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.3/manzano-0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc85dc2604d27f8eee7aea8c77acc5e2b1787ae558d35476306290591932e585"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.3/manzano-0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c4c04dc5708b290193360a2d70a1c48747d18005de4971c344e18517f9bca76"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
