class OpencpuUtils < Formula
  homepage "https://github.com/vst/opencpu-utils"
  url "https://github.com/vst/opencpu-utils/archive/0.0.3.tar.gz"
  sha256 "151b6809a21c1a676775482b23b236ede896ea611cb318b3ceec33edb26baf3b"

  def install
    bin.install "copencpu"
    bin.install "copencpu-version"
    bin.install "copencpu-render"
  end
end
