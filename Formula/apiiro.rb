class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.6"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.6/apiiro-macos-arm64"
      sha256 "473d5ccf26c65a181d1e4ce8006ff9f1d4855c11a0987523d52aebffc58b873a"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.6/apiiro-macos-x64"
      sha256 "508f9fec0bee5f3cb1fbbf6c8667dccf8e63984eb547ba771c24b9728d47a10f"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.6/apiiro-linux-x64"
      sha256 "dca689b73f240bc4acf9bc3c94d51a33c49512558678150c3198c5b7cfe2b1d3"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.6/apiiro-linux-arm64"
      sha256 "256599c121ada12579b174d5b9fe9c4713c495abccc411a083caae7a96bd1f66"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
