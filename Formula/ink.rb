class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.6.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.7/ink-macos-arm64"
      sha256 "00c367c156ccf90cb5645ad2b12e1270457e6cf72cac193587e8a230e99f46ee"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.7/ink-macos-amd64"
      sha256 "d8b365e72d28c58c35afd007bdcdc613ccf4545398c78c15d65738ca53d749cd"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.6.7/ink-linux-arm64"
      sha256 "8be92c76ec33bea529d2d6d3c4a33d46fea443b49ca05c3504120f26829b278a"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.6.7/ink-linux-amd64"
      sha256 "fc6c357e63bfe222565729f04cfb3df5ece273d5e9618a2da2a09b02b0fc98fa"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
