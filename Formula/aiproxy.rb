class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.1/aiproxy-darwin-arm64"
      sha256 "ac3953a502a21ac86baec27c02f5a0822c213b40e9a17beb2a8ddbf7b41e9df1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.1/aiproxy-darwin-amd64"
      sha256 "2ee8b43fbffacc964cd6d081e4d2555c29533cc41f2ae353c7f58417b7a07b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.1/aiproxy-linux-arm64"
      sha256 "14d77c90d3e2121ec1d26d6ee12151ff5772d77ef0f3417f5d27a9d3c186337d"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.1/aiproxy-linux-amd64"
      sha256 "f49e6b043963cdbd51d3095011686bb4858403800e4abef142b0241ab149c483"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
