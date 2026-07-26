class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.6.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.5/ink-macos-arm64"
      sha256 "127b816c2f3cbc99f181c2c33c60d2f6160f7dd81cd4637922c4d6d429c33a2e"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.5/ink-macos-amd64"
      sha256 "482cf6a0f6f0cc77bbb3d2f4d2c577b4c61a77ad87eccf12be621a85f4fb2cc5"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.5/ink-linux-arm64"
      sha256 "5175b73e1e349fd14829019d7b7a9c2e340555cd1005fa7eab4974369d3a4b7e"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.5/ink-linux-amd64"
      sha256 "4bf246e3d17a5dc7309ba6fcff9082ff5afa6771e7374dd0641ecf3450ab11ab"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
