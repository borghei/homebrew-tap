class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.2.2/ink-macos-arm64"
      sha256 "a0d7d537b898abd15205d7e2d9774359f46b3aa8e2f33e5f8543a3f6898f0d66"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.2.2/ink-macos-amd64"
      sha256 "0c681ac29ade4f867063ec2470daa4b088154fb80d49967e39c4fa6c33e176c5"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.2.2/ink-linux-arm64"
      sha256 "6430e0e9542f436db9d5b74ce68337fa4fc490d1d384cecaa4a75a432727d291"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.2.2/ink-linux-amd64"
      sha256 "2c7602a36e1c7444e47616854979d8830239fa65f76ec08184802cf5fa9bc9d2"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
