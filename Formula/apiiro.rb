class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.6.1"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.1/apiiro-macos-arm64"
      sha256 "14bf8756ca071aec6b9cfc4e9de7c43677cd5db6f28fbed83f19cecf99eb04e2"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.1/apiiro-macos-x64"
      sha256 "c2b02810eab04e2895e1b8180e93c47392a21dceb62567602a16d2527c79dc1d"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.1/apiiro-linux-x64"
      sha256 "640203fada96c670e111cd2163437efb7b9239ef0ac64a5e2b090a18751df1e7"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.6.1/apiiro-linux-arm64"
      sha256 "e96941bc759cfbcd71f813ebfedee85932081b46854cdef74108639bd771e75d"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
