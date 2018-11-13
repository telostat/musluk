class Demail < Formula
  homepage "https://github.com/vst/demail"
  url "https://github.com/vst/demail/releases/download/0.0.4/demail-assembly-0.0.4.jar", :using => NoUnzipCurlDownloadStrategy
  sha256 "2b8cc2907b990878bb9e5ef9a3708bc4b6afe10826abcf98110fc7704a045896"

  def install
    libexec.install "demail-assembly-0.0.4.jar"

    (bin/"demail").write <<~EOS
      #!/bin/sh
      exec java -jar "#{libexec}/demail-assembly-0.0.4.jar" "$@"
    EOS
  end
end
