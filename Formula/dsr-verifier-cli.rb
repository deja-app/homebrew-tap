# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.4/dsr-verifier-cli-v1.6.4-darwin-arm64.tar.gz"
      sha256 "eabee1479ccaa7b13aaa95aca7c31bafd615b64343a34ea0890af8e38c041a76"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.4/dsr-verifier-cli-v1.6.4-darwin-amd64.tar.gz"
      sha256 "4e886dbec74b5ad20b09b97d5f48ffe2b6193bd377240dda3e03d91b0ce5d128"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.4/dsr-verifier-cli-v1.6.4-linux-arm64.tar.gz"
      sha256 "bd7d893bec5f26ed2c33f4d27c46c37c52b42e201160b4d35f5b57d2f7e42ae1"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.4/dsr-verifier-cli-v1.6.4-linux-amd64.tar.gz"
      sha256 "f1e470d4186ac7eb72c27cbc80cef6e80c515f4948b7b8152e71c10263b820e5"

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
