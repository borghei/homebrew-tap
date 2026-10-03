class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.11.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.1/ink-macos-arm64"
      sha256 "22242ce4fff5ae265b9bc5ab2aa32b5a3ce4107536b42b1cb06a54ce123440ea"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.1/ink-macos-amd64"
      sha256 "8d9023bed2aa693cfe13ef052adc50a7824b79642d852375c839d027f7bc897c"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.1/ink-linux-arm64"
      sha256 "879849271b2af6847ca24bd8078c37c08e6fe0a01d9f52aef5d1d9091ae493d7"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.1/ink-linux-amd64"
      sha256 "57e7864b2e56bd62f486f51e2c1971ecccc2d51c0b92ad83e0d9a7464f2f8782"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
