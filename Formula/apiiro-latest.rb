class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.14.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.0/apiiro-macos-arm64"
      sha256 "2793930cefa3ff1500a1b2899a556253bee6fa94310797123872d7757896e0db"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.0/apiiro-macos-x64"
      sha256 "b2622c862fd75c3993c30b61a20df450fc4f555838ae3bafbd494f4013541719"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.0/apiiro-linux-x64"
      sha256 "6ed7dfaa5bc87e0df1fd960dc330d220689f06aed8a3feffe1bd9d1cb912b800"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.0/apiiro-linux-arm64"
      sha256 "0840047268a376f94950d0a0d2a99f6692cb811e33511e864d4ebf9fce8cbd25"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
