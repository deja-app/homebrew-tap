# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.9/dsr-verifier-cli-v1.6.9-darwin-arm64.tar.gz"
      sha256 "2c836e2a2f54199807740d9d16329e721790e51c86e7198e4be8eb4871ba1ee8"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.9/dsr-verifier-cli-v1.6.9-darwin-amd64.tar.gz"
      sha256 "aac681fa202f1fe6e1897a2aa666f111906575cccc7e15c5c91f88ab431fd988"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.9/dsr-verifier-cli-v1.6.9-linux-arm64.tar.gz"
      sha256 "351fec6e055fa052b7dc904fc6d38430ea92f592180c414586fbbcdf59cc8709"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.9/dsr-verifier-cli-v1.6.9-linux-amd64.tar.gz"
      sha256 "a59a979490e4b262a517ee374cab5d7271f29ab62ca75bae02ca5653ccc28bf4"

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
