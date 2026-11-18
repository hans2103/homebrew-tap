class Linkrot < Formula
  desc "Find dead links on a website from the command-line"
  homepage "https://github.com/hans2103/linkrot"
  license "MIT"

  depends_on "lychee"

  on_macos do
    on_arm do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.2/linkrot-darwin-arm64"
      sha256 "63952654f63555d8a00314237388b8fb8b609a1b53e14e27e928a36161c0f124"
    end
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.2/linkrot-darwin-x64"
      sha256 "fb8a4598424a2a2e4d29899d5c22b24d5aab5e77d35ec5ca20eab1a2bb85eab6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hans2103/linkrot/releases/download/v0.2.2/linkrot-linux-x64"
      sha256 "b565c3027017c30873d03743f80886a51e4c79495ade5b7c13f5e53a75591900"
    end
  end

  def install
    bin.install Dir["linkrot-*"].first => "linkrot"
  end

  test do
    assert_match "linkrot #{version}", shell_output("#{bin}/linkrot --version")
  end
end
