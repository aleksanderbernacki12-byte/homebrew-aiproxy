class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.60.0/aiproxy-darwin-arm64"
      sha256 "48cc4e3c0431d5a054f866adb0f6d6835766c37ad055ec7bf2a5c274708f2b6a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.60.0/aiproxy-darwin-amd64"
      sha256 "573a9b50c43e31585a379dd3ae293b7282579ae231beaa8553a578da6a08770b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.60.0/aiproxy-linux-arm64"
      sha256 "f8e060a5eb1e77f0e785ffd72becb3752bc42f0aa37a8b93f99575ac4aaf9a44"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.60.0/aiproxy-linux-amd64"
      sha256 "34c9074a39a358ee71c72fb46e0dad3b66e69a59bdf1d1044cbca66b5f1772e0"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
