# Generated from release artifacts; do not edit checksums by hand.
class Clivoy < Formula
  desc "Local coding CLI and model server API gateway"
  homepage "https://github.com/wklee610/clivoy"
  version "1.1.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/wklee610/homebrew-clivoy/releases/download/clivoy-1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7872f31ad58f1ff508f2294e14ab71310fb139880162731198ffde29eaf3deca"
  end

  on_macos do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.1.0/clivoy_1.1.0_darwin_arm64.tar.gz"
      sha256 "5da481757b846e4e1c6d8ce879be68a2fd6327ea6ca3783fbca8427b97608da9"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.1.0/clivoy_1.1.0_darwin_amd64.tar.gz"
      sha256 "d49c16eafc369dd27b26bfdc6c872f28ff1c043f408d0c9c3a171975ee48a944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.1.0/clivoy_1.1.0_linux_arm64.tar.gz"
      sha256 "369060cdf750a86eac4f0d97b5120cc9006ea2bf181b04dfde1d6e2592603169"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.1.0/clivoy_1.1.0_linux_amd64.tar.gz"
      sha256 "92c205916142c4d353a6f9fe5bc19305f45a53b520beedf90eb15bbefc5ead1c"
    end
  end

  def install
    bin.install "clivoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clivoy version")
  end
end
