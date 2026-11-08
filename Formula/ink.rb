class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.15.0/ink-macos-arm64"
      sha256 "cfb2b95cdf209273cfdd594bb5a9d34daf1f386b23450f36517eaf45c43a6b67"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.15.0/ink-macos-amd64"
      sha256 "e42f4f7c5aab1044f7f5822bb419c7dcadabed24739d4d683e434f4df2b9923a"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.15.0/ink-linux-arm64"
      sha256 "6c813967af71193eeab548c3af7209f79ca9b57b7f790ac25f5ff09c3f038bd1"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.15.0/ink-linux-amd64"
      sha256 "138472bd7b8eaad12c1c3e2b418b54027cd39583d880971bd638793871f2b312"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
