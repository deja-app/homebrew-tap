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
      sha256 "95236e7ceb65631d1ebf2795cdbbcae31f3aa8a4f4a4516e976ab9c88cda0f4b"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-darwin-amd64.tar.gz"
      sha256 "667baea1062ab333d69e392da06335d76c169f26262ec50bcd4e00f09ccebf89"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-linux-arm64.tar.gz"
      sha256 "199c1d165268d2567022bbc4d485a46ce480e547af874ba78b34256a22701c67"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.4.3/dsr-verifier-cli-v1.4.3-linux-amd64.tar.gz"
      sha256 "751360e8db2467e338b531f3461486bc3255650f88d2f45884ff694830ec7ca9"

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
