class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.6.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.6/ink-macos-arm64"
      sha256 "e128b883a93cd1d449e805f929c816179b8fe6e03b53ffc0ab4b8afe69108c71"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.6/ink-macos-amd64"
      sha256 "632b6e176b986cc6cc7bb158461e1605eb2f2f3d29d7e43e6f22dc95806f8961"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.6/ink-linux-arm64"
      sha256 "3f572681a513c96a2507e475faa11970534f82a3311060e170fce3a6a5373c12"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.6/ink-linux-amd64"
      sha256 "953b05eb7aa36f1c46853a14e1018d97e8958aa9ef331d772a15934414c081af"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
