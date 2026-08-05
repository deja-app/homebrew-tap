# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.2/dsr-verifier-cli-v1.6.2-darwin-arm64.tar.gz"
      sha256 "6fb3d3281a47bd8225a6d16fcb8a4b1832469647868db7c079c244cf43ee8ee7"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.2/dsr-verifier-cli-v1.6.2-darwin-amd64.tar.gz"
      sha256 "c397bed9cef79067a16d095c7d0c68a6028546ea1819fbd8b14f48967d887fce"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.2/dsr-verifier-cli-v1.6.2-linux-arm64.tar.gz"
      sha256 "93eb7babaf6053ffd8263a83979e8bac9e8219022fc86a9013be7039f5924ae9"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.2/dsr-verifier-cli-v1.6.2-linux-amd64.tar.gz"
      sha256 "61c0d6ac7122b3a2a19b6999e5343f61724df32744ec1f95d2c3aa8093cc9bb8"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  test do
    assert_match "dsr-verifier-cli v#{version}", shell_output("#{bin}/dsr-verifier-cli --version")
    assert_match "offline", shell_output("#{bin}/dsr-verifier-cli --help")
  end
end
