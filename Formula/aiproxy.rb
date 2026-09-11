class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.73.0/aiproxy-darwin-arm64"
      sha256 "d1e76ebd68110c1185a3ae1a6db9c92975c53e15cc52ad0a036eb38c2ebf1ec7"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.73.0/aiproxy-darwin-amd64"
      sha256 "8fa71959e4af5e438ef1f5f162e4f3f7632ad000d23b5626461e0ecc93da85dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.73.0/aiproxy-linux-arm64"
      sha256 "12e241c701ff87244ffcccd0470f0bff2f0bd5c0a5cbd86ab8ff014a2baef49c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.73.0/aiproxy-linux-amd64"
      sha256 "38251e636068e7385cadf5a9ac359229aab95e8984d5a11a86bc7eecc5b3cce0"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
