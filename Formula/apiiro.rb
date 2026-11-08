class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.11.0"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.0/apiiro-macos-arm64"
      sha256 "61c9dc6acb9f0f8e3f134f17d025cb6a0d23a36c286b5c6770785a6677ad040d"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.0/apiiro-macos-x64"
      sha256 "6f360c3db90091b5a5237a45824d82169bceb4a4865cc159c1673ec8621f4db3"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.0/apiiro-linux-x64"
      sha256 "de927b68760962cc0d6cf44fe9406be08412f98912e408b4c98939dd1f952699"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.0/apiiro-linux-arm64"
      sha256 "ed5bf5abd57575e24eb149bea6e3fbe3d8cf77ff118257437456552faf497694"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
