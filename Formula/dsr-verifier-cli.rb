# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-darwin-arm64.tar.gz"
      sha256 "a0651f326e39de25fdd7dfb95958aa27dfdae54745955d0d582becb9536acb73"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-darwin-amd64.tar.gz"
      sha256 "959e9e475040a380b6c3940c2a5f0e9344bcebe01dc25822bafa1a4afaccaf50"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-linux-arm64.tar.gz"
      sha256 "cd80ec970069aefc00c9d15cc2974765d423acd2b0aabe1c62ee74b89bc43901"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-linux-amd64.tar.gz"
      sha256 "13a79f16f00abc73ed9840f32c9ff6adb16c44400d9bca1d66b66352e8641b6f"

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
