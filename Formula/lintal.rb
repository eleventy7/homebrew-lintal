# Homebrew formula for lintal
# Update the SHA256 checksums after each release

class Lintal < Formula
  desc "A fast Java linter with auto-fix, reading checkstyle.xml configs"
  homepage "https://github.com/eleventy7/lintal"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-aarch64-apple-darwin.tar.gz"
      sha256 "c5735acf37663ae7c0501098d1d2463346633a548983fd7db80685a2d02b981f"
    end
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-apple-darwin.tar.gz"
      sha256 "f004316271b93dc5971ad7e5ec173fa457c0893693a435245054a089a0d5636e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b71639f5d70c116858be68682a4005aa0d10e5fb7b963e6c18071b6da639ec46"
    end
  end

  def install
    bin.install "lintal"
  end

  test do
    assert_match "lintal", shell_output("#{bin}/lintal --help")
  end
end
