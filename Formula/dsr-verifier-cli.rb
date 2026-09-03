# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.10/dsr-verifier-cli-v1.6.10-darwin-arm64.tar.gz"
      sha256 "da9334fa4c22a71e776799752b5be1f1f078043d59080e703ed567eb8cc97a74"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.10/dsr-verifier-cli-v1.6.10-darwin-amd64.tar.gz"
      sha256 "484a139c9ec83e2170b7184ded77e7fc39b991c540a8d558805b1ee0a7a442f2"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.10/dsr-verifier-cli-v1.6.10-linux-arm64.tar.gz"
      sha256 "b709b341d0b5ed64167aa403fc611c33ff0e717fd0c48421ff54624a05b48438"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.10/dsr-verifier-cli-v1.6.10-linux-amd64.tar.gz"
      sha256 "3e15dbb2250969139f6913bd0247dd3b990aaee02c964bdb25fddfd0f736dc36"

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
