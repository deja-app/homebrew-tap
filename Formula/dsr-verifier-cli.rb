# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.0/dsr-verifier-cli-v1.7.0-darwin-arm64.tar.gz"
      sha256 "e942ebb352203bb4ae0d0c62fc4a074709b15e18f132793747151e403d104918"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.0/dsr-verifier-cli-v1.7.0-darwin-amd64.tar.gz"
      sha256 "aded10bc8c309a73205d4cf6344a1893dca8852ce2ec66e080bab60163901a4d"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.0/dsr-verifier-cli-v1.7.0-linux-arm64.tar.gz"
      sha256 "df1858ac13b7a37d0b99f62c51ec143b941f869b7fe6e7754244fe8c535eb8f6"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.7.0/dsr-verifier-cli-v1.7.0-linux-amd64.tar.gz"
      sha256 "9b69727f6d0702b9c9bad30589b1e0f7418c4747b6ed7028e56a62ee99b65c27"

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
