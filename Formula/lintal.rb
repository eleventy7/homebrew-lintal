# Homebrew formula for lintal
# Update the SHA256 checksums after each release

class Lintal < Formula
  desc "A fast Java linter with auto-fix, reading checkstyle.xml configs"
  homepage "https://github.com/eleventy7/lintal"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-aarch64-apple-darwin.tar.gz"
      sha256 "e49f17a0f0b3eaa60d96217274fb509d2286982902e6dedea7f95ce9940f6a9c"
    end
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-apple-darwin.tar.gz"
      sha256 "eb9d06ec0b951b94f47a9af63c9d85d3f85095ce47f42ba12c3f412399abb154"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "588ba1348fc8cf4f65aff639d09027689b68d392b69f2a0e52a4dfc3b48498b9"
    end
  end

  def install
    bin.install "lintal"
  end

  test do
    assert_match "lintal", shell_output("#{bin}/lintal --help")
  end
end
