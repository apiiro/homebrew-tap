class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.10.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.0/apiiro-macos-arm64"
      sha256 "43248b20ed45470ec70a08f996ed99c8a52599ff7f580bb2a47cc58b04bc2f89"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.0/apiiro-macos-x64"
      sha256 "e26192dfbfb919cadf2b753e1ac6a0581c9c4b914f298b4ec76703f78ac71976"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.0/apiiro-linux-x64"
      sha256 "d17b9d2ab3f824884dceab4963699983afc783721ac5058cae46e9619e2f5d22"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.10.0/apiiro-linux-arm64"
      sha256 "defe97b173cfb3f4cfcbca779d1be0faf483eaf241f43d5c89de1d6ea20e3df8"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
