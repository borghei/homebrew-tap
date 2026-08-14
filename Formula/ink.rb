class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.7.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.7.0/ink-macos-arm64"
      sha256 "3fb9749e9b7d96ff0790893952514637fa527e9ac64c4048a11761f12ee82997"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.7.0/ink-macos-amd64"
      sha256 "6ebd88bd8ae3d1853b014d60d1319936842ce95616354087af12cf1e7cceb4bc"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.7.0/ink-linux-arm64"
      sha256 "8f3dc09d1da0f40e888c269713c5d59b99ed9e5696d99efc4b6ee68ec3f3242c"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.7.0/ink-linux-amd64"
      sha256 "20b3002c5b71ee6ea0339e8b35ff79515c1c30b98c80bc7540ea40e24fbc60f0"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
