class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.8.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.8.0/ink-macos-arm64"
      sha256 "34bd68211cd8ed658f66b211b57529f66a243e5342767cd11569ad90becfef36"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.8.0/ink-macos-amd64"
      sha256 "6936ecdd2b8227e15a952079d93c6c954dada0d6d00412bfb60194a28d880cfd"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.8.0/ink-linux-arm64"
      sha256 "df5cef416f2367fe554c0e467efa05466868930a3d4a366461b2d21354c31fe8"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.8.0/ink-linux-amd64"
      sha256 "e794b774f812b0faccb0210b34062fb51ca6d9aced582f88cf4ac5dfafd3b77c"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
