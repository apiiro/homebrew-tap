class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.5"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.5/apiiro-macos-arm64"
      sha256 "6e60b9362603c429d7a2e8ff8b09f04c454245471a6ec3d0b5d4d4b0b7718e2e"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.5/apiiro-macos-x64"
      sha256 "93d1d152f398dc662847650c6c1133b7a1ebb9e6f326f08766b3d3233824dcea"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.5/apiiro-linux-x64"
      sha256 "44c873bb196de4be7fd50d43d783138578a1a4edb99b0e28b0533f94e393acc6"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.5/apiiro-linux-arm64"
      sha256 "2bbd5f15c0be2b9d37ec3ce13faeab9d649bc735ef21dd53663239b2f4712621"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
