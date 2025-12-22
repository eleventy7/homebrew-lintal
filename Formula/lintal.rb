# Homebrew formula for lintal
# Update the SHA256 checksums after each release

class Lintal < Formula
  desc "A fast Java linter with auto-fix, reading checkstyle.xml configs"
  homepage "https://github.com/eleventy7/lintal"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-aarch64-apple-darwin.tar.gz"
      sha256 "f27fc30178add13d13c32fc1bfe5985b1990e18687456f5475eb096c4f0d362c"
    end
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-apple-darwin.tar.gz"
      sha256 "892f26a501c01f08944f661db2480e94b307b3bc22b210b832953f11bb5ba484"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eleventy7/lintal/releases/download/v#{version}/lintal-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd1b4595dc223bdd0d5bbdb7792b5fd57e7accc14d8cc51568de54b81c534397"
    end
  end

  def install
    bin.install "lintal"
  end

  test do
    assert_match "lintal", shell_output("#{bin}/lintal --help")
  end
end
