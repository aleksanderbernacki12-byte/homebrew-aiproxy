class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.31.0/aiproxy-darwin-arm64"
      sha256 "6e5515260052c0ad77d47c32bf9360bb95826fbae2be96c2d40a92d9065b3718"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.31.0/aiproxy-darwin-amd64"
      sha256 "a85f8c36fe271467870cb125fee0653d0504cd1fa13bd275c18d40bf3a0fe166"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.31.0/aiproxy-linux-arm64"
      sha256 "1a2a0cdc61b756ec121e2a2354a4130ce233a9f46fb83be50c314a001108b1bf"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.31.0/aiproxy-linux-amd64"
      sha256 "dc701000af3d478de4e805f359754e7fe34f7443cdc3e8162eb55b52559f31f6"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
