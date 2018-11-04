class Demail < Formula
  homepage "https://github.com/vst/demail"
  url "https://github.com/vst/demail/releases/download/0.0.1/demail-assembly-0.0.2.jar", :using => NoUnzipCurlDownloadStrategy
  sha256 "98df0165cd52c0c9ebf9e998ab5cd5a49682033844bfdda56dac56c22a8f13e7"

  def install
    libexec.install "demail-assembly-0.0.2.jar"

    (bin/"demail").write <<~EOS
      #!/bin/sh
      exec java -jar "#{libexec}/demail-assembly-0.0.2.jar" "$@"
    EOS
  end
end
