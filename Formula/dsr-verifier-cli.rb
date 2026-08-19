# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.7/dsr-verifier-cli-v1.6.7-darwin-arm64.tar.gz"
      sha256 "0fdc8025bc3d4bf4b02f5ad0ca20b72f3fff1281ad87d7b72b299f2adb417a7c"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.7/dsr-verifier-cli-v1.6.7-darwin-amd64.tar.gz"
      sha256 "bdfc73d44b45529414f73cdd694dafb5a2b7df9aa8fd58a991e3d45e07c66b87"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.7/dsr-verifier-cli-v1.6.7-linux-arm64.tar.gz"
      sha256 "97715139987465997f8b6f4cacefe789ccb32800256a10b0a2fe28904a625388"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.7/dsr-verifier-cli-v1.6.7-linux-amd64.tar.gz"
      sha256 "91b01bc2381842adc167020c74ae44cfa7959700d2ef03e3494d8f94053d10a5"

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
