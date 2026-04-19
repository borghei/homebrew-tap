class Ink < Formula
  desc "A terminal markdown reader that actually looks good"
  homepage "https://github.com/borghei/ink"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.2.1/ink-macos-arm64"
      sha256 "43abc6bcb323c1844537b17fbf35c198dfc07124d16bba452494c37412b676a1"

      def install
        bin.install "ink-macos-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.2.1/ink-macos-amd64"
      sha256 "02f42d2b8562d9133756430a72a0698e67d3c3101128b2a9131d4363dfa2d608"

      def install
        bin.install "ink-macos-amd64" => "ink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/borghei/ink/releases/download/v0.2.1/ink-linux-arm64"
      sha256 "f7d39560f2596e914c9a8c33e276076a467b4373ad3a784c73f087c3f2e54f86"

      def install
        bin.install "ink-linux-arm64" => "ink"
      end
    else
      url "https://github.com/borghei/ink/releases/download/v0.2.1/ink-linux-amd64"
      sha256 "b145be4603bc518924ec7d2b8a24dc71b60079a723fffc526c9ee1f9a0901dff"

      def install
        bin.install "ink-linux-amd64" => "ink"
      end
    end
  end

  test do
    assert_match "ink", shell_output("#{bin}/ink --version")
  end
end
