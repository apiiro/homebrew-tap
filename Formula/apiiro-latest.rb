class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.9.2"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.2/apiiro-macos-arm64"
      sha256 "2cd44edc5151df00da3afb850579990b03a9eade750bcdf560596a789bfd6988"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.2/apiiro-macos-x64"
      sha256 "5d70232bbc6e50e67188312db9046afd9056dfcf3a51467f0ca357a658cbeaa0"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.2/apiiro-linux-x64"
      sha256 "34e691740a11531cb18f5d205c5160fd5fba2d66ba0c30422e22dcc30cd523d3"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.9.2/apiiro-linux-arm64"
      sha256 "a93d9aeb0379fea0549149d89f55d9f444059b869f9dbc25c20ed805689c4b0b"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
