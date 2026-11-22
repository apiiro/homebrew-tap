class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.12.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.1/apiiro-macos-arm64"
      sha256 "62101c8f3c38274f2afc062a12691e26d12b95f64ef6f76477ef2892360ce92b"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.1/apiiro-macos-x64"
      sha256 "536ab58169293d8b9b6cf4dbda09e1c344892a9977e32b1692e604cf8a1ed732"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.1/apiiro-linux-x64"
      sha256 "55d2e93343d8a026469ecb607ff3c7186fab3bc70f314223a12337c3cfe64b07"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.1/apiiro-linux-arm64"
      sha256 "4b19c8b56da70d92960fc2f6a2713aa0fde6da14317225d2987afea2e12debde"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
