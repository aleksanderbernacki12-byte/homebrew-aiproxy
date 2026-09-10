class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.43.0/aiproxy-darwin-arm64"
      sha256 "ecdf847b8d6b6e361117e1553509eabafc959d260754d9e68ef7bb7a4bdebaf3"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.43.0/aiproxy-darwin-amd64"
      sha256 "72a58f52a937c39ece30cf7de4c56ef8254fe83f04a3c7598f9ea86228fd779c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.43.0/aiproxy-linux-arm64"
      sha256 "b75d8b8f91f09a5af1f856a9c328f83632efd78acc7158fd842bb4b2cc6c2312"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.43.0/aiproxy-linux-amd64"
      sha256 "d637ba03298789d0f8e8723647d2d409253a5bc336a6bd208df97bcf53a5a738"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
