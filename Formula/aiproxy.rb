class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.20.0/aiproxy-darwin-arm64"
      sha256 "dbb773b871a7f44b74a5302d0d1a22df01c8d2bdbd83cc508eb8ffce940af6d7"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.20.0/aiproxy-darwin-amd64"
      sha256 "b680fd572b095041ba05fcacb2d640cb14edac73ab47bd309a85083cfcd36521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.20.0/aiproxy-linux-arm64"
      sha256 "40f2612d86690c7887e23cdb07446417109d02dffb908c61caf28039b63932ab"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.20.0/aiproxy-linux-amd64"
      sha256 "cc782d634e00563924fbbd1d141ff10c5a2e4079d74fc5fdf11af3c18c1225b2"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
