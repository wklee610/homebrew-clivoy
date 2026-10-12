# Generated from release artifacts; do not edit checksums by hand.
class Clivoy < Formula
  desc "Local coding CLI and model server API gateway"
  homepage "https://github.com/wklee610/clivoy"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.1/clivoy_1.0.1_darwin_arm64.tar.gz"
      sha256 "b82f28ed676826da26ea1757c4120dc26b135ac196a44b03f234975c565a2b45"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.1/clivoy_1.0.1_darwin_amd64.tar.gz"
      sha256 "6872ce585becd1ce505671e474f12377e61f69e65d4d927c51502a0493582faa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.1/clivoy_1.0.1_linux_arm64.tar.gz"
      sha256 "72024670b035216c4f17f5c487da2675ccec1ce5620e28ad02c1944a7e483f94"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.1/clivoy_1.0.1_linux_amd64.tar.gz"
      sha256 "232a1ffca65d7d125b985b4a28f877d78a272cddaf9e6819b99693087f597034"
    end
  end

  def install
    bin.install "clivoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clivoy version")
  end
end
