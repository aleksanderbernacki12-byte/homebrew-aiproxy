class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.22.0/aiproxy-darwin-arm64"
      sha256 "653a1de841844355feecb1d838aef08927c6edb61abd88a49813fcb070178524"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.22.0/aiproxy-darwin-amd64"
      sha256 "6f9ec641beefa648803ac065e4b81d5181a5c40d2e8a8fdcc75be446241409d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.22.0/aiproxy-linux-arm64"
      sha256 "dca78c595bb01d8667516d690d9f49df1644f5eae94550140d215c714ea9c486"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.22.0/aiproxy-linux-amd64"
      sha256 "58dab2aee87c3d1acb70e6ee8363b3bc79e7831a18db71559da2fb581c515dbe"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
