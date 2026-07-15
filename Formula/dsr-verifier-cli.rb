# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.1.1/dsr-verifier-cli-v1.1.1-darwin-arm64.tar.gz"
      sha256 "660e4fe2fe02c1355bad154c2560c22b193bd630cc7fe2e85d7e1735c0f64526"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.1.1/dsr-verifier-cli-v1.1.1-darwin-amd64.tar.gz"
      sha256 "fa170d53c84e8cc940049779848d85f9281c88edfe32dd00a478356ac4b753a6"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.1.1/dsr-verifier-cli-v1.1.1-linux-arm64.tar.gz"
      sha256 "f40bd63a73b68c28b4354fe7c82f9500066b6f9c673521b155222c791a4e6fd8"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.1.1/dsr-verifier-cli-v1.1.1-linux-amd64.tar.gz"
      sha256 "078343691d76aa91207912148a814574c999d1934b54c7a0655611ac9945b333"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  test do
    assert_match "dsr-verifier-cli v1.1.1", shell_output("#{bin}/dsr-verifier-cli --version")
    assert_match "offline", shell_output("#{bin}/dsr-verifier-cli --help")
  end
end
