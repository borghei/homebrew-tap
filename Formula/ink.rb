class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.13.0/ink-macos-arm64"
      sha256 "19950d9efe8837d494d552958b60662416259d2b7651287e616f8eb95d8de982"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.13.0/ink-macos-amd64"
      sha256 "2b667f57fc96e91d4a8f4e7044684b6ba8f6ddd97de2e759097041f7ecafab27"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.13.0/ink-linux-arm64"
      sha256 "2d37d77efa2d4a23548fdd4c866c3dd2a88f789478ff53b02e56c988dfa71d2f"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.13.0/ink-linux-amd64"
      sha256 "87c936e79342c6016783ca783fa423479f0a0f6327304527c998791acd896ce9"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
