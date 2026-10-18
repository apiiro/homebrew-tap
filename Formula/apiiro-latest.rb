class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.9.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.1/apiiro-macos-arm64"
      sha256 "8d24fe29b0f9b1e476ba305da2d39ebd9ab6210845dbccb9d8d5895d01047fb6"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.1/apiiro-macos-x64"
      sha256 "a8de8c5bbf5431b7e55eb7b042b31191783f2037e78c8182f3adc69ed663f15a"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.1/apiiro-linux-x64"
      sha256 "a732657f6f5168f3855d08ff5b8f841b0fb5fe5da8367c4ec553babe5cd2adb4"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.1/apiiro-linux-arm64"
      sha256 "36e57912133196aeb605a281f5284c4dffa02c02a5e2434ca31df5955ed0a2d7"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
