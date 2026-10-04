class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.7.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.1/apiiro-macos-arm64"
      sha256 "dd17d54eaf1faec07cd246d45be4d7a6173b5aa5243237a16a9315d7deb02eff"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.1/apiiro-macos-x64"
      sha256 "802434fbb0a16cb0980ef7ecb78c1208c68e7bc3b08907963378bb43a5f2c3e0"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.1/apiiro-linux-x64"
      sha256 "80cd1c10f6976ca0405e6f8cee5f70b2a78aac6dd35ad0fc56efe7239fe8374a"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.1/apiiro-linux-arm64"
      sha256 "dbc26351a3107e6b4fb1f5b1f13819392ac6e75d2ba27adfe0a70e8b7854c190"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
