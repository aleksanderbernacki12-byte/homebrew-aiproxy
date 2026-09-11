class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.57.0/aiproxy-darwin-arm64"
      sha256 "2911899d5db5ad2d8150c39bbeefd9f9693b4d67290cef9ee83152fc78c74d03"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.57.0/aiproxy-darwin-amd64"
      sha256 "c0ce142841cdafb9a43b5c47d1605daff94fd5c7d45635b4a5bf74b02ddbcc75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.57.0/aiproxy-linux-arm64"
      sha256 "bdcf5f33eb84110421b2b02f1f86665e168ebdb118372d87ca353a879337bc4c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.57.0/aiproxy-linux-amd64"
      sha256 "9c44a6e73d515d5e209639d1278543d8586f36ee4d9d12e64333cedbc02c683a"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
