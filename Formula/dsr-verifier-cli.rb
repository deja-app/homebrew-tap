# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.5/dsr-verifier-cli-v1.6.5-darwin-arm64.tar.gz"
      sha256 "0aff8d36d062fb93449e0721225dc615797247b93fb03e4b8354fb03c896c9ff"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.5/dsr-verifier-cli-v1.6.5-darwin-amd64.tar.gz"
      sha256 "dba83e4465b85e7ad54e8717d692eeade329891a3523a9316afb9dc5fc0b48af"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.5/dsr-verifier-cli-v1.6.5-linux-arm64.tar.gz"
      sha256 "27aa19d7755d3a0aeb9f4d047f09117103511ad8dab80a96b3ff1ce85de7c424"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.5/dsr-verifier-cli-v1.6.5-linux-amd64.tar.gz"
      sha256 "00a0522ab8dba70e885459f23b544754a971f3ef4c3e999582797d176fda193c"

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
