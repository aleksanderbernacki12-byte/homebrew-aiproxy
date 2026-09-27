class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.0/aiproxy-darwin-arm64"
      sha256 "a3723fe11938314fdaf6f89c65c59c978ae062993714cfeff3ffcf3b96a28377"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.0/aiproxy-darwin-amd64"
      sha256 "a9f4b32377605d67499f533e6e93afd8ec91fd5424706d2d6c2347eb0f8d3929"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.0/aiproxy-linux-arm64"
      sha256 "615be535d26d452443f56e1c8de8bc7a141ca6fa696129d072ae21b876f130dd"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.76.0/aiproxy-linux-amd64"
      sha256 "90b00571770a5f672a7aae51442b3ecbf3c429c8d467489e2f5f51d993ebc6dc"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
