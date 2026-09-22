# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.1/dsr-verifier-cli-v1.7.1-darwin-arm64.tar.gz"
      sha256 "dd1f108c9726b1eaf0d0729bb2cd4ad7a0f7210bdf0a6b5b2e41aa6bc5ce7d62"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.1/dsr-verifier-cli-v1.7.1-darwin-amd64.tar.gz"
      sha256 "83c6af0288588954096c3ebe5ffeb9c73cb2cd033ee9f0cf8f1c2e75c5b37656"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.1/dsr-verifier-cli-v1.7.1-linux-arm64.tar.gz"
      sha256 "dd7df803e1bad5b109183f1faade37f45ee8d52e2c5537b197055c9be5351078"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.1/dsr-verifier-cli-v1.7.1-linux-amd64.tar.gz"
      sha256 "22f2f2d57ef9e5b70622a0114c3f2be26ef99b0564a6b3f0d5edbb243c8d38c8"

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
