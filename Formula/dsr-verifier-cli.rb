# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v#{version}/dsr-verifier-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "0d3a116a8267bfd99868e6217f3b51e9513a2c515126e29b9134db4b5653b98d"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v#{version}/dsr-verifier-cli-v#{version}-darwin-amd64.tar.gz"
      sha256 "7413a43fb98dfa839785acc37164f51971723fd037eac356831eba07fb94d7de"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v#{version}/dsr-verifier-cli-v#{version}-linux-arm64.tar.gz"
      sha256 "f258f5cc9392bc01399e98d1b94e622ba7137bccbd6f2705802471107e9f3e8e"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v#{version}/dsr-verifier-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "be482cf432646f94dc1753c02ac3c5d76a8c5b3a023cf9e4bb484e1351cfb878"

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
