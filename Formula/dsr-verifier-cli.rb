# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.3/dsr-verifier-cli-v1.6.3-darwin-arm64.tar.gz"
      sha256 "b88326c4f0bb0443ba941254c64c1de8ee12807f80df25ac8bbea07a47f4f7ff"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.3/dsr-verifier-cli-v1.6.3-darwin-amd64.tar.gz"
      sha256 "9bf12bbe71c818309d3cf7448ee39c7bbcf5d7084e9028ccda30915a2b1fb07e"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.3/dsr-verifier-cli-v1.6.3-linux-arm64.tar.gz"
      sha256 "7a8e04206a5df52c7e8fcda5eeb18e538f5b09c811a93c22d4fa54420c9dfd25"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.3/dsr-verifier-cli-v1.6.3-linux-amd64.tar.gz"
      sha256 "3dc0c85ef3b5fed82d143992e7763c9107c1909d408aa0f1f7a4d1a3d62bf10d"

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
