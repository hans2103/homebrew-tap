class Linkrot < Formula
  desc "Find dead links on a website from the command-line"
  homepage "https://github.com/hans2103/linkrot"
  license "MIT"

  depends_on "lychee"

  on_macos do
    on_arm do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.1/linkrot-darwin-arm64"
      sha256 "21ca12672c955a9eccf744333f570fc42ac8b8dea538746f08dc221b04d9f8f2"
    end
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.1/linkrot-darwin-x64"
      sha256 "6462d5ba5f58a5ebdf4da253f3235a9ae1dd671b3ab0efd283c0ab5f8deb6cd3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.1/linkrot-linux-x64"
      sha256 "8b7d36e69818b367c9711f51828f51471fa8c533c5c2b0042c7d9a9421c9d790"
    end
  end

  def install
    bin.install Dir["linkrot-*"].first => "linkrot"
  end

  test do
    assert_match "linkrot #{version}", shell_output("#{bin}/linkrot --version")
  end
end
