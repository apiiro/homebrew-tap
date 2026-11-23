class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.12.2"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.2/apiiro-macos-arm64"
      sha256 "dbbe5f863c4b3bee3c864389388ab17823866e17de967988934a1caa21fd43c9"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.2/apiiro-macos-x64"
      sha256 "c6ca767530a3dfd17e9a771aec7e0fff5fbeb01d5d289a593993b5ee88a3c1e3"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.2/apiiro-linux-x64"
      sha256 "03a79939411650bb3a9ee6c7148be08d3e8978e9704507d66b8d565b0f4f9453"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.12.2/apiiro-linux-arm64"
      sha256 "665442dd7f42b76be4eb852a09672581799b9e2a9299b9857a09eea3356e853e"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
