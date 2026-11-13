class Linkrot < Formula
  desc "Find dead links on a website from the command-line"
  homepage "https://github.com/hans2103/linkrot"
  license "MIT"

  depends_on "lychee"

  on_macos do
    on_arm do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.0/linkrot-darwin-arm64"
      sha256 "893fbeb5d6a0c8f9168b129bfd58f1a05e210f09b32713e2388612ca936b7470"
    end
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.0/linkrot-darwin-x64"
      sha256 "2a33ac11eda496e4faf281634a65b704c0a2902e45b23c7552cbe1e229bbf153"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.0/linkrot-linux-x64"
      sha256 "fda04dbd91ea7520a8eb3dd9554d2d60cfc4faf191f5148cf86bbf3a24ceed92"
    end
  end

  def install
    bin.install Dir["linkrot-*"].first => "linkrot"
  end

  test do
    assert_match "linkrot #{version}", shell_output("#{bin}/linkrot --version")
  end
end
