# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.1/dsr-verifier-cli-v1.6.1-darwin-arm64.tar.gz"
      sha256 "cd083699634ae53233a36e8bec63373cf76abb2983f82b6c2f6d2c533de00393"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.1/dsr-verifier-cli-v1.6.1-darwin-amd64.tar.gz"
      sha256 "91c46f7061c73bf1ada28585791e9b12e5fc6e0cd01a4537f2aed35124432f4d"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.1/dsr-verifier-cli-v1.6.1-linux-arm64.tar.gz"
      sha256 "aeff8e745b9179a9d4703a0e52df143608c21bc5d2260bf6f308725caa6ec6b5"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.1/dsr-verifier-cli-v1.6.1-linux-amd64.tar.gz"
      sha256 "80621905662f7c072b24328e32426b0ed6fa56f85a2bff48f13f8628e0f3906e"

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
