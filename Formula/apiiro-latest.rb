class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.3.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.1/apiiro-macos-arm64"
      sha256 "0c762da99dccd45d0180292508695a023096004d0f9038e238ef8ba28c1a85a6"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.1/apiiro-macos-x64"
      sha256 "ae938673fb9af330dcf5acd0e4bd2e698750250b942045929c7c7a6f954df9c9"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.1/apiiro-linux-x64"
      sha256 "4b3dfa02a127c1812a042c87a91a3c10decb602cdf37c7d8d7a39cbd32a4a806"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.1/apiiro-linux-arm64"
      sha256 "60ec0a9ff6f307fdb9887f9cb52c0adbd86e034350145377953d0e3b3ec70cca"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
