class Manzano < Formula
  desc "Manzano development server"
  homepage "https://github.com/manzano-studio"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.0/manzano-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "960fbc57ee3751bed25064049b90605ef375c11424d9c2b471e98a76a9b5ae9c"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.0/manzano-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd4053408522937c04dce35a87d0f846c6b4aca6f76843bdcd58cffb59880dbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.0/manzano-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e45116059eca00deba71d5c45b0555a19ae1fd82ede9ad356edaca32a4b6112"
    else
      url "https://github.com/manzano-studio/homebrew-tap/releases/download/manzano-v0.4.0/manzano-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce9ac82a7d3850c56df878e104d8760c1af7366ef2993ad0d6d01cb0e4006abe"
    end
  end

  def install
    bin.install "manzano"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/manzano --version")
  end
end
