class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.67.0/aiproxy-darwin-arm64"
      sha256 "3456343fd1b8ebad3e5e2507ee93ac244beea05df22c96715666806e12edcec0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.67.0/aiproxy-darwin-amd64"
      sha256 "04fe057d1634c7a471bc2b8ebfc3203d8a79c0654495ed663b208cd59c08e9fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.67.0/aiproxy-linux-arm64"
      sha256 "276eb34fd106771ff32fc14d18663603a8dafef7d00bcc4cc866c297a688b5e1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.67.0/aiproxy-linux-amd64"
      sha256 "f58e28e25b351b4dd488251baee77426e029b488bcb825a5409050de094505fd"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
