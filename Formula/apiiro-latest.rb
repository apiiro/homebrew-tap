class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.8.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.1/apiiro-macos-arm64"
      sha256 "c79b5b0ac1d280e31968c850e1a61fed187b64eac933abaf36a6879901522dee"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.1/apiiro-macos-x64"
      sha256 "c46ae76e4f86a8a0e63cd7b782f33eed37bea6985739f1deabe702319eed21de"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.1/apiiro-linux-x64"
      sha256 "2489b2ade1c0add12aee6b2e48a03db7aaf6e1ea13f8f38621f59d0fbca647a6"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.1/apiiro-linux-arm64"
      sha256 "6d516b2017cd2a7aff437577d8ab2d6f37820b1962ce7d64cd7e1025f2292ffb"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
