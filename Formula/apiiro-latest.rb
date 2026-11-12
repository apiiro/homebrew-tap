class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.11.2"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.2/apiiro-macos-arm64"
      sha256 "d0737a595c31f30869ca211cfe1a7b481f6dece947beb4b9838b4c51f6dc9b9c"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.2/apiiro-macos-x64"
      sha256 "c032a138d577e3ff637f8fc46e0b24bf49612ad67453233c8390580d89aff726"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.2/apiiro-linux-x64"
      sha256 "5af74c559e1b2afb42e45578b537e054c291b8e3e99e860ce11e225ef497e25f"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.11.2/apiiro-linux-arm64"
      sha256 "4e5482abf5523f9bd3783c6974417398d45a3f35f242e8e1e63328477e816ee7"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
