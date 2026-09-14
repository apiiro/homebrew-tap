class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.6.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.0/apiiro-macos-arm64"
      sha256 "9b837f6a523f674635a7869ee5ab7fbc0b83af0c9f8b36cd07dcc4bd7ec29521"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.0/apiiro-macos-x64"
      sha256 "3a74a04cead5463af6198ff0db29aa9a5e304d12ea68c4d82205efccc0b1c8f4"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.0/apiiro-linux-x64"
      sha256 "d4792c9e38a066d9592d7172599f80e7e6e07ac135df8cfc6914c9f6c9de3009"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.0/apiiro-linux-arm64"
      sha256 "25f42eb44c29fe314cd9438c971d8473f245954880c29a74fb40f5f7ef7377d3"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
