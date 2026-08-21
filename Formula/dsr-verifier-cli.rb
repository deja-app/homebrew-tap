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
      sha256 "1a6f11af91ebb22b49eaf22e9b356c310bff27020f9d8f6874ea2953a54cbc69"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-darwin-amd64.tar.gz"
      sha256 "640ea5f618d533a865d07f2d406189d062cf7681f8974f3a7aa32fa4c9519505"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-linux-arm64.tar.gz"
      sha256 "eaec94cc69fca77b96522aaa5d6099e8fb1addc0db5980fd84d96667440cf6e9"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.8/dsr-verifier-cli-v1.6.8-linux-amd64.tar.gz"
      sha256 "824c2038d98bd94ac1f64573a4aa760f346477405e0980f636830b57df0c6d0c"

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
