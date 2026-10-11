# Generated from release artifacts; do not edit checksums by hand.
class Clivoy < Formula
  desc "Local coding CLI and model server API gateway"
  homepage "https://github.com/wklee610/clivoy"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.0/clivoy_1.0.0_darwin_arm64.tar.gz"
      sha256 "04eb9eb1accdabbd8983cbb30fb0e1d0f1cbfb067759bf4b2d1b7ddae7a11273"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.0/clivoy_1.0.0_darwin_amd64.tar.gz"
      sha256 "ea0e5eeaf79e65a5cb52c6373519098e38a527ad951017091cc5f1c0392c7acf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.0/clivoy_1.0.0_linux_arm64.tar.gz"
      sha256 "9e2ee1a751889dd972d52ef09f6cb6d5563b148f5854bbf7af493b06e23196dc"
    end
    on_intel do
      url "https://github.com/wklee610/clivoy/releases/download/v1.0.0/clivoy_1.0.0_linux_amd64.tar.gz"
      sha256 "92a935bd930dc496d8175de832f2683d141746b14b4d43c3aaf22c82c12a8fee"
    end
  end

  def install
    bin.install "clivoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clivoy version")
  end
end
