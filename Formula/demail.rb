class Demail < Formula
  homepage "https://github.com/vst/demail"
  url "https://github.com/vst/demail/releases/download/0.0.4/demail-assembly-0.0.4.jar", :using => NoUnzipCurlDownloadStrategy
  sha256 "2dfbc21f8a08db35f4f1fdd3cac059a5c71a50a2b560de2459df761f2f37c38c"

  def install
    libexec.install "demail-assembly-0.0.4.jar"

    (bin/"demail").write <<~EOS
      #!/bin/sh
      exec java -jar "#{libexec}/demail-assembly-0.0.4.jar" "$@"
    EOS
  end
end
