class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.5.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.5.0/apiiro-macos-arm64"
      sha256 "82e871550cd3fa3d122cb86729ab2673831326fbebcff501b0b8154c35ae2699"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.5.0/apiiro-macos-x64"
      sha256 "b64fcb5d30448612a9b47acd215a0d4d20d92edaaed127a67685c2e606886fe5"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.5.0/apiiro-linux-x64"
      sha256 "21e4a20607a96019e3aa5f16777fc1cebd1c11d59936eee3f1139ba16dc5cc5e"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.5.0/apiiro-linux-arm64"
      sha256 "9607ec64636ca948adfd7db06aec2fd3a0f112eb4dddc323599696264169ab33"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
