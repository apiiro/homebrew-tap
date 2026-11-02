class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.10.1"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.1/apiiro-macos-arm64"
      sha256 "b47bb4773a1f10c946419782ac84fdc2e69262fa3911b6ae68c3b5696bcd27f4"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.1/apiiro-macos-x64"
      sha256 "6e9d2f9d6c8211cb8f4a2f464f8bdb6f3ceafced2ef83addb274afc71fd76010"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.1/apiiro-linux-x64"
      sha256 "bbb22ef3fbec9e603f602c342a0818279817e429ef5439bafade0e494ce19ddb"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.1/apiiro-linux-arm64"
      sha256 "56ae0717f063705a88affbf8603eb553631944a0ea0634b83b96b03ca56ef82d"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
