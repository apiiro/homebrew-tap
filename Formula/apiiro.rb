class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.2"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.2/apiiro-macos-arm64"
      sha256 "a4be810415ed7570923029c0cdb1cb63a2b05604228a852e4b3935671ff2c42f"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.2/apiiro-macos-x64"
      sha256 "38b083692bc29ae8a211f6227d1a628eaab9f3c7b389cecea1b6b341e6dfb192"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.2/apiiro-linux-x64"
      sha256 "28a323133912fa6c54d8020b3a5ea3d9290e278ba4bbeadc265b0076c23f16b6"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.2/apiiro-linux-arm64"
      sha256 "f072bf3993c51f6f349e8d408cc81afb39d844c12438f79de001f85ee4f87809"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
