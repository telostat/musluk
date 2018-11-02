class Demail < Formula
  homepage "https://github.com/vst/demail"
  url "https://github.com/vst/demail/releases/download/0.0.1/demail-assembly-0.0.1.jar", :using => NoUnzipCurlDownloadStrategy
  sha256 "fd56537f2c93d1da98fda4aca0a41cd02ee053fa4681760aa960e8effc8d462c"

  def install
    libexec.install "demail-assembly-0.0.1.jar"

    (bin/"demail").write <<~EOS
      #!/bin/sh
      exec java -jar "#{libexec}/demail-assembly-0.0.1.jar" "$@"
    EOS
  end
end
