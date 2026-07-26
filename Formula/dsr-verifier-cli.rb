# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.5.0/dsr-verifier-cli-v1.5.0-darwin-arm64.tar.gz"
      sha256 "23bd3328bed4ed7887aee861172dd0f078a1778404de3190b109b1d04f8702d0"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.5.0/dsr-verifier-cli-v1.5.0-darwin-amd64.tar.gz"
      sha256 "4854d5bfcfec1d152759ea9406765e6ade7f2356dba326ec724da204ad7b0976"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.5.0/dsr-verifier-cli-v1.5.0-linux-arm64.tar.gz"
      sha256 "6b9f8ff8c6b579f854423b46d3d5bfe3f25381a211343cb3f48748ea9c7ba2ac"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.5.0/dsr-verifier-cli-v1.5.0-linux-amd64.tar.gz"
      sha256 "83fca6aa67843744bcb3152432f745a53dea88102438be66c4839f23e24c1fce"

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
