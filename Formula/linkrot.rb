class Linkrot < Formula
  desc "Find dead links on a website from the command-line"
  homepage "https://github.com/hans2103/linkrot"
  license "MIT"

  depends_on "lychee"

  on_macos do
    on_arm do
      url "https://github.com/hans2103/linkrot/releases/download/v0.1.0/linkrot-darwin-arm64"
      sha256 "983bb9aec5e0e238be76a03b41b93088d25411523c84974279324e036ac459fb"
    end
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.1.0/linkrot-darwin-x64"
      sha256 "fe9d65a7b415ffba88498de24e40b748f58584eee681be222b29a1597492d356"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.1.0/linkrot-linux-x64"
      sha256 "98c301cc62ba2bb6959de3226c6edee269ea6d385b6941f6b15b22aeb65686cd"
    end
  end

  def install
    bin.install Dir["linkrot-*"].first => "linkrot"
  end

  test do
    assert_match "linkrot #{version}", shell_output("#{bin}/linkrot --version")
  end
end
