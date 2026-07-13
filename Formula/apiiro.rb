class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.4"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.4/apiiro-macos-arm64"
      sha256 "5d32fb6816453ba4b50dc2cd4fbea40a549f9f9039545d3563aaf23c498e67ed"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.4/apiiro-macos-x64"
      sha256 "9b80d4a6220c31fbe257376c01b192d07dfa4a9f51ea49239a504c996f3de5b2"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.4/apiiro-linux-x64"
      sha256 "60274458c2f0d9dfc7ff7f1a3f982a5f679a29ad5f6a3c7632c4f71430bb3b51"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.4/apiiro-linux-arm64"
      sha256 "027a961f2fec7e035c3b302e6c19ee05ed81071e3cee825b05ecdbda210261bd"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
