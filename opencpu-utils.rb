class OpencpuUtils < Formula
  homepage "https://github.com/vst/opencpu-utils"
  url "https://github.com/vst/opencpu-utils/archive/0.0.2.tar.gz"
  sha1 "3afda0631581a6a9167cf239f1b195b8bbd3899c"

  def install
    bin.install "copencpu-version"
    bin.install "copencpu-render"
  end
end
