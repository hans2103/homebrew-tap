class Linkrot < Formula
  desc "Find dead links on a website from the command-line"
  homepage "https://github.com/hans2103/linkrot"
  license "MIT"

  depends_on "lychee"

  on_macos do
    on_arm do
      url "https://github.com/hans2103/linkrot/releases/download/v0.3.0/linkrot-darwin-arm64"
      sha256 "1f73281a8ae69f3440ce35d9b5e13aee4b11fd0adcd73dfb58302529645337c8"
    end
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.3.0/linkrot-darwin-x64"
      sha256 "8b8d9427fe1f89365371d4771ae7256dcabb4bb0ca23a74c1438976d0b1c0b04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.3.0/linkrot-linux-x64"
      sha256 "ab10b6308f442a00b9d3f43a86626e5a0c0de2112162543a2c06163ca8f7fd6e"
    end
  end

  def install
    bin.install Dir["linkrot-*"].first => "linkrot"
  end

  test do
    assert_match "linkrot #{version}", shell_output("#{bin}/linkrot --version")
  end
end
