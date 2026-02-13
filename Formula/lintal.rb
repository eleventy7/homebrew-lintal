# Homebrew formula for lintal
# Update the SHA256 checksums after each release

class Lintal < Formula
  desc "A fast Java linter with auto-fix, reading checkstyle.xml configs"
  homepage "https://github.com/eleventy7/lintal"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-aarch64-apple-darwin.tar.gz"
      sha256 "9ec344bdfad9d3d29487d758c268095c473350d4391059f28b07ed0fc65bd837"
    end
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-apple-darwin.tar.gz"
      sha256 "db829dd683277769fa804d6b5acc36540cac200d39166f8bd9227553158632a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d88c162c0a49952a7538d635eff4f5b193f7e808595f32ce22bf4a55922211fa"
    end
  end

  def install
    bin.install "lintal"
  end

  test do
    assert_match "lintal", shell_output("#{bin}/lintal --help")
  end
end
