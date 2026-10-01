class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.10.0/ink-macos-arm64"
      sha256 "5afb8c41a4acc8809f8d5748e06ecb29ef1d86753d882029e8691236a5b6f353"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.10.0/ink-macos-amd64"
      sha256 "c72de3ceb07d4f2e054a21c35f04f567ac8495451133c46bbcb176a68beea458"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.10.0/ink-linux-arm64"
      sha256 "c1296b6430ead14bc9c41a6931a050910bac70bca82eca8144a16761757c76d4"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.10.0/ink-linux-amd64"
      sha256 "742a407d4043d25ae5f17b41ffffb9b728b0268bdbd7699b0db0a3ed745bc5ef"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
