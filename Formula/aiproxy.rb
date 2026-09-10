class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.49.0/aiproxy-darwin-arm64"
      sha256 "1e6713714c97d74773b39cf84d08a46d6ca599d1e35f87a460dbc341f5fc5c51"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.49.0/aiproxy-darwin-amd64"
      sha256 "4816b31f272b3971ad95e9a2604a7b8e50074cc74d3e4197782e1c3f2fae9978"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.49.0/aiproxy-linux-arm64"
      sha256 "3c968a43bf4d30c6eaf4c2322f9e2544844cc19a0eb408ec0316df1519637af9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.49.0/aiproxy-linux-amd64"
      sha256 "02c4d499f73b6735d1427cfb164a28ab156a71664c63d557bb96d9ba3d78aaf9"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
