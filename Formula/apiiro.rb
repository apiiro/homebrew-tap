class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.2.0/apiiro-macos-arm64"
      sha256 "b9ec866c5fca1f9441b84da39c78ad900ee7022c06fa348da8e6aefea1e7f7db"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.2.0/apiiro-macos-x64"
      sha256 "20cc68e7ac0e6be496f4827a1992a85021a8c101ebf4fd5d97a1c880e86fe5ad"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.2.0/apiiro-linux-x64"
      sha256 "26aecc52f05020b3fee42659204008f5f8a920f50c6835896ede6f58fe5608dd"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.2.0/apiiro-linux-arm64"
      sha256 "b8b01556f8300cf85ff6df272ded82d47cda5a935018e818b6c5172aaf5a1efa"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
