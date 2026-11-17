class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.12.0"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.0/apiiro-macos-arm64"
      sha256 "3923b1421d10e67517880e8e385a9a57483506bfaa2eaa50b4921f00286e2672"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.0/apiiro-macos-x64"
      sha256 "2689edb8b2594072cd87225d1143b6d339a15f26af00ae4d4d1e30f575af936c"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.0/apiiro-linux-x64"
      sha256 "51a310d0c1032670219fb9f0f0542902f7ac36ecca2a729933eecf5853d6e7af"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.0/apiiro-linux-arm64"
      sha256 "33adc3c7ac6e2de3d8a227c75e49bf12be2ca4ce597593830cb03af6dd05c1f5"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
