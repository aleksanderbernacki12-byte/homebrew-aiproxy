class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.40.0/aiproxy-darwin-arm64"
      sha256 "5ffeeee6a99fc8c33b7ec9eade62b631a2ada7a722bcb21722b6ac089605682e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.40.0/aiproxy-darwin-amd64"
      sha256 "df49d6173bf30e44ac207ad006306a32561713a562fba342c26dde2ad8d400ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.40.0/aiproxy-linux-arm64"
      sha256 "8683c1cc2f2b5dc1106284dce21882c766da8e36df852d66d2fa8c376f047c95"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.40.0/aiproxy-linux-amd64"
      sha256 "89353352653c7385c1db589c0c82911fdeab3b1d5373dc624eb07f061b6a5172"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
