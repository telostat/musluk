class OpencpuUtils < Formula
  homepage "https://github.com/vst/opencpu-utils"
  url "https://github.com/vst/opencpu-utils/archive/0.0.3.tar.gz"
  sha1 "9187d7c237bc5b1f03742a459cff0bba6b9846e6"

  def install
    bin.install "copencpu"
    bin.install "copencpu-version"
    bin.install "copencpu-render"
  end
end
