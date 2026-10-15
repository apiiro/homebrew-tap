class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.9.0"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.0/apiiro-macos-arm64"
      sha256 "498f1f8eed242ad7dd36f32b6943e2f251c0342239b1e970ee6b9020f8047237"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.0/apiiro-macos-x64"
      sha256 "01001240b0d26bd16a8f689c715b4a35f29f564ac8638673e55498ccace86814"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.0/apiiro-linux-x64"
      sha256 "fb8caf21d95ae0ae99b5c3e0c5a435ac6ef943f7ddff869ecdad88f58bc0b973"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.0/apiiro-linux-arm64"
      sha256 "123d8f62aeac1633901171fbbbdc8574f26e16921fe8b05763caa82a5c7afd82"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
