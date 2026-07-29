# Live formula — updated by CI on each dsr-verifier-cli release.
# Install: brew install deja-app/tap/dsr-verifier-cli

class DsrVerifierCli < Formula
  desc "Offline DSR/1.0.1 receipt and evidence bundle verifier"
  homepage "https://github.com/deja-app/dsr-verifier-cli"
  license "Apache-2.0"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.0/dsr-verifier-cli-v1.6.0-darwin-arm64.tar.gz"
      sha256 "ea42fabf0fa13decdb28388ffb75633e436894e7c3b9c1303bcb08d432e30e27"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.0/dsr-verifier-cli-v1.6.0-darwin-amd64.tar.gz"
      sha256 "28ee1f90be2017b85b511db7350b698e8202d4215ad76918fbdd7ef246c8c45b"

      def install
        bin.install "dsr-verifier-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.0/dsr-verifier-cli-v1.6.0-linux-arm64.tar.gz"
      sha256 "9862b9dda1479a3bc6c9771e7fe806f491f3c6fba6e9915ca39e267f778ec478"

      def install
        bin.install "dsr-verifier-cli"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/deja-app/dsr-verifier-cli/releases/download/v1.6.0/dsr-verifier-cli-v1.6.0-linux-amd64.tar.gz"
      sha256 "a1f559c9f054ace2ef308117b3168c78ef5a037b7ae8fc51a619f60bc12a1e7f"

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
