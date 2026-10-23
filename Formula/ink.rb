class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.12.0/ink-macos-arm64"
      sha256 "701354825d9ed978e072988538c905c9bb2ae8367efd4e25ad4db611d70a6550"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.12.0/ink-macos-amd64"
      sha256 "9cbd132aa4f594937f0878cc4b0736b3a4d1d89d39c20a88abf76fc2de030e61"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.12.0/ink-linux-arm64"
      sha256 "9acba9ecc192864f76c2b87bb208d3efd2a4848e61d8fab8faf269dbafb74bc7"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.12.0/ink-linux-amd64"
      sha256 "f453f0805b44cc14a6f823e07aa96968d2c2aa06365befa1cd6de8b02b913d61"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
