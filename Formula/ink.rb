class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.6.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.4/ink-macos-arm64"
      sha256 "33d72ed2767743bd1bda0dcdf3df9a9c3b56ef8b8762e179871e57dc6c4ef9cd"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.4/ink-macos-amd64"
      sha256 "b260260cedb500259e16220d7f23995e233debb510a6256c12bd01434531d8cb"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.4/ink-linux-arm64"
      sha256 "2d6fe330ceaef427f3300f459958f0f05267c96cc5b2a732642fcd0f2cdc2456"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.4/ink-linux-amd64"
      sha256 "4492bee1a6fe43614144ed937cfcf5fe10e51dba0b8ea73e7aeb9c210a0fdc15"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
