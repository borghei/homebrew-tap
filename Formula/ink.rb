class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.14.0/ink-macos-arm64"
      sha256 "2d252ad010f31a3292255c3e6cddb5554efc5088f1e361db0f0212c75a028098"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.14.0/ink-macos-amd64"
      sha256 "b37d69da31e02268c8b7bdc3886d4b87ad09a1be51a4e1376ba02309420a6d0e"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.14.0/ink-linux-arm64"
      sha256 "ae692b9f97ba70b0dedbdec665e32ed22cb1169a5087b0466ec23d2f94a32bae"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.14.0/ink-linux-amd64"
      sha256 "9f8b25466078d8efae423e8e05502604c94c5e8621d996b15b49fa360e766981"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
