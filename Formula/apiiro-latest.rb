class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.9.3"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.3/apiiro-macos-arm64"
      sha256 "5137cf3c6f2a86b2dce6040dca10abf51a2ca6fc6d269c17b3868f76dddb5348"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.3/apiiro-macos-x64"
      sha256 "1ea6d33f86d25965f57265e3255fabb908674d12afb0ce85297d6dd00bc4e261"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.3/apiiro-linux-x64"
      sha256 "3532000828aa5b7b52345bc78de21513d5cb00a7c3eaf847d55c8ed7b1f09cfa"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.3/apiiro-linux-arm64"
      sha256 "05a9b8788d5e739651d8825f79ad3bb7c139abec8791d12ea74cc714a7428000"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
