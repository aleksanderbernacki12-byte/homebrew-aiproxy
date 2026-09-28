class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.0/aiproxy-darwin-arm64"
      sha256 "d8ac18d83c3693d46441c00b12511ac0e00b5507eff5bbe83db8343437951c44"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.0/aiproxy-darwin-amd64"
      sha256 "079761121f01c611ba3cad204652783dfae62cb39c4fe93584f513c0f3127860"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.0/aiproxy-linux-arm64"
      sha256 "455dabb06a4678fdee7a7f59d5d5622808f563e4a4f24a482836bd385fe194f3"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.0/aiproxy-linux-amd64"
      sha256 "84c8a631bfdbca05907673167f4b623aa291a35f59f1fec32fe069ee062a1e43"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
