class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-macos-arm64"
      sha256 "317939a76759c8675b5f1c06ce643f0dcfa7a6d9ff4fa325b78f7578c42a07de"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-macos-amd64"
      sha256 "fe04c47edb642ea8330292b7a60704d410c04e80c6b99341ea15035d9417904d"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-linux-arm64"
      sha256 "113c51b3108b79d17b357109d2ed7298abe40b2be8cbc7a3a4df38348c8fc885"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-linux-amd64"
      sha256 "ede33d6384699f108e864321e0305fdfd11a26222b91c904a1028c0878161d01"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
