class ApiiroATLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.0/apiiro-macos-arm64"
      sha256 "b33b8ba5abb6cfbd1a9b1d079451cb7a64f6474ee969a087a0f9857816dad8a8"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.0/apiiro-macos-x64"
      sha256 "7cc65e5ef35af7eabe4dce3a6a1ed13ae517b29299fa936c6ec71686388601d5"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.0/apiiro-linux-x64"
      sha256 "aaa270f47bc24649314892c406ed87757231107d7028799fbaba626cec64b040"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.3.0/apiiro-linux-arm64"
      sha256 "6471ce62a48441ce7be2ed34df16c335f2ce3d88941078e460e4bd44ef03100e"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
