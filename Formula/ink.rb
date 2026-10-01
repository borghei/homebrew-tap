class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.9.0/ink-macos-arm64"
      sha256 "6e65994c23c89502815bd87eb0d3eeb7f7edf35baf6cfe489a755cd2594c03c3"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.9.0/ink-macos-amd64"
      sha256 "80d56d8476afaa60daa0b2b49d6a2666751b4b5a6f1e54f5934978fe9cc906da"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.9.0/ink-linux-arm64"
      sha256 "7f92c890b73213d8fb47f40aaadcee428850ec8b655f72709cfe50c1a3835275"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.9.0/ink-linux-amd64"
      sha256 "4a384b9b9b8171714ec5527fa8fef2081f953392fac135c8bc0de499a93fc71a"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
