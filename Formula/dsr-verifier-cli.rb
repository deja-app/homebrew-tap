# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.6/dsr-verifier-cli-v1.6.6-darwin-arm64.tar.gz"
      sha256 "1ed9f721483ec0dcb1e5e711eaa26a434bd9b4b80e2e83b0111ab3e7a6e462ba"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.6/dsr-verifier-cli-v1.6.6-darwin-amd64.tar.gz"
      sha256 "a044841c686046700fe8efae5cf0ae158b52be326941b90bfd70220891df2079"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.6/dsr-verifier-cli-v1.6.6-linux-arm64.tar.gz"
      sha256 "8b66a5da125f132c9310750146cd85711d8b49ed1b9f465fb220f0891af8dba0"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.6/dsr-verifier-cli-v1.6.6-linux-amd64.tar.gz"
      sha256 "9a1badd640826a3b04479fc081dc7b59407c55bff59617ce7ea9d46350da9aed"

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
