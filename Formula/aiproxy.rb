class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.24.0/aiproxy-darwin-arm64"
      sha256 "d8533b8d85f007563eb977492527c663459c295047acedb0cc95f9aa7753a120"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.24.0/aiproxy-darwin-amd64"
      sha256 "8ac91ad861cbb6734b69dcb522f2f93f49ad7e9223a9f8a3b419abd7943c34be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.24.0/aiproxy-linux-arm64"
      sha256 "33aa873168ce935064a55a04d687019f144c7b2e13a3d76110448ff42eda07fc"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.24.0/aiproxy-linux-amd64"
      sha256 "3370296abf8ea493865849a932ebc907daa6175e4d26f0f090c5a0fb7d40e9a7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
