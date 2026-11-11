class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.11.1"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.1/apiiro-macos-arm64"
      sha256 "812b506b1849988ee7f530d8bfd7604ddb5ec187f77ebabb9c4912135c6e524f"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.1/apiiro-macos-x64"
      sha256 "8b6cf5491af2ae205244d3c45e66c5f02732c76cd2b9e791f1ead4fc14032107"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.1/apiiro-linux-x64"
      sha256 "07f8eee2d19ac11e3df52fd20438602feb942e23c49f60dfb0b10abe674cdd78"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.1/apiiro-linux-arm64"
      sha256 "b1dfb823373527dc93137bcd8b2f71d746d043cddd20480db7540daf296a533c"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
