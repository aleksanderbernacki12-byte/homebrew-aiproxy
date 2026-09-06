class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.21.0/aiproxy-darwin-arm64"
      sha256 "882ea92f6955f84a289a14af6745c82461e9f4f24c6b9d9150bdb70d059f2b42"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.21.0/aiproxy-darwin-amd64"
      sha256 "0cbfac820f23609e40db7e255d1a709d8b0588104b541403f24109c92d1e73c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.21.0/aiproxy-linux-arm64"
      sha256 "86e462c931a22b5361fa0a93a21d244826a0aa2ad8f0b254068f5d301b8a6b24"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.21.0/aiproxy-linux-amd64"
      sha256 "74715cbd2ee968700ed1d9db1745a0febe2048345e31ec95abeaef1e6327156e"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
