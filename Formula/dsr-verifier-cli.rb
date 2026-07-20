# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-darwin-arm64.tar.gz"
      sha256 "d337787e439a29600ffffe824c6cf13afc852f655a49c59be8f3a1a73cd730e3"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-darwin-amd64.tar.gz"
      sha256 "850dd6b663add043e44fd16652d51fe109fd63da38eb16e07097abcdd33b879d"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-linux-arm64.tar.gz"
      sha256 "cc1d0d7724080fe622913d017bae81fad77557bf3b715cb29d812b816a2fcbab"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-linux-amd64.tar.gz"
      sha256 "52865a313667464cc73d92c7abeb014142ad7a66784cf8415e5c11163fdd353b"

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
