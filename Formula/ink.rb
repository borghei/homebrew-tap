class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.0/ink-macos-arm64"
      sha256 "b21248d1bc7f03acb04bd2d582357f66f2a9ee32681b7d70a952879d1a0c3fda"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.0/ink-macos-amd64"
      sha256 "751819821d6ec71186c51de483b3c8890c90455ee933698f6f849297b4a6116d"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.0/ink-linux-arm64"
      sha256 "469f8f96956e9a1362fa2d41c5c30cb75787361e61cc02878dd611fa6d1b086c"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.0/ink-linux-amd64"
      sha256 "97ba1eb24f429e043d2778c13011d70f2ee5b4a1135bcfc660d339b35657e8ef"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
