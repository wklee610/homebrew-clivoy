# Generated from release artifacts; do not edit checksums by hand.
class Clivoy < Formula
  desc "Local coding CLI and model server API gateway"
  homepage "https://github.com/wklee610/clivoy"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.2.0/clivoy_1.2.0_darwin_arm64.tar.gz"
      sha256 "be736cb4ae198737151f959aa3c0ab4b1500ccab413bb3432b0a20c0d0e8c6d0"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.2.0/clivoy_1.2.0_darwin_amd64.tar.gz"
      sha256 "36a3c8adc232bcf459a77a4b7f89d8d819ec39625ff305dda349004f9ff09b7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.2.0/clivoy_1.2.0_linux_arm64.tar.gz"
      sha256 "1811d1891e131b62f22f04d727ad6af508e4ee16bc4bd78ae7469b33eb59a20a"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.2.0/clivoy_1.2.0_linux_amd64.tar.gz"
      sha256 "def5878e7403f25cbc0d597c569195cbed266f2d39299888ac6f7746b7d4bce5"
    end
  end

  def install
    bin.install "clivoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clivoy version")
  end
end
