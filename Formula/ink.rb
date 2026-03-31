class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-macos-arm64"
      sha256 "4ce76f18c9ffe36b972dd57bed3300f2349f82347a96e3acf5466de833fd0730"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-macos-amd64"
      sha256 "c299a89000aa07757bbe74ffe80c1f35fc1dadd41878a74f1ac75d11cbd2b498"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-linux-arm64"
      sha256 "5b5d6a77de37dc32c63344b53e2c3d32a0589e0928a8d6547e4d10857169e647"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v#{version}/ink-linux-amd64"
      sha256 "aef3571a41c412c43086b8db32c56bf6367abb5e6e4dc46f0d13b6ce3f087a30"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
