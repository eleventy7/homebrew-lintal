# Homebrew formula for lintal
# Update the SHA256 checksums after each release

class Lintal < Formula
  desc "A fast Java linter with auto-fix, reading checkstyle.xml configs"
  homepage "https://github.com/eleventy7/lintal"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-aarch64-apple-darwin.tar.gz"
      sha256 "af3253053f5635de8df1dcd953a6285131f2630aa42e0ad1c7c02d2b0e9aa183"
    end
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-apple-darwin.tar.gz"
      sha256 "8538a88f760a00511a58dcab930e87c3125c1df61b7f8f1617d171283aeeae5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e63be1f215ea20c92896e1509fd5815ecbd0fbcf679d0bf27b2c2316f53a1da7"
    end
  end

  def install
    bin.install "lintal"
  end

  test do
    assert_match "lintal", shell_output("#{bin}/lintal --help")
  end
end
