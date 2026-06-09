class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.3"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.3/apiiro-macos-arm64"
      sha256 "12b5dce1f0d0173833b4a0c06df3183a140990a1760910149c3966c933a8ed51"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.3/apiiro-macos-x64"
      sha256 "81522dc9111a5d89f652302e3a2cb7b99e9a7913e782f95feae2db6b05266a63"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.3/apiiro-linux-x64"
      sha256 "8edbda132203ec07f33f69c7104ea268235ae1278bdac4a12c5153ba595ec881"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.3/apiiro-linux-arm64"
      sha256 "000aff3856a400b40c15dc5a321828f73ad16654346ed09c28a616230134aa25"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
