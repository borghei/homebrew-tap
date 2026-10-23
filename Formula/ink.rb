class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.11.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.2/ink-macos-arm64"
      sha256 "13104e7a39c419470fd50228943a11ff94a7a8445012c421188d9987f5780041"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.2/ink-macos-amd64"
      sha256 "32ca1b7ed6e11b97864adc1af5f12dc625b29d986fd8462b157b94de4181d10f"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.11.2/ink-linux-arm64"
      sha256 "e8480c716f13e2c076243f290ca23ad6b7efc5a3cced1290467042cfcd2e9eb3"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.11.2/ink-linux-amd64"
      sha256 "7242256a9c67ee634876dd05e3273e74244d7fb22579a3923ee8e6d5582091a3"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
