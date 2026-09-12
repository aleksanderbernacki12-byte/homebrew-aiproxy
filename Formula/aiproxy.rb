class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.0/aiproxy-darwin-arm64"
      sha256 "f3d3b69014413bf22c4ce738eccefcbbd5e26d53cb2b34b8047df6eb7b923419"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.0/aiproxy-darwin-amd64"
      sha256 "db7872fb96a4448ed8e99c0756147b08d8bac1c1c97f657b8b0fe76afcbf6bf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.0/aiproxy-linux-arm64"
      sha256 "9c72fb4e57f5c4f518e39cedcc9c483451f3d98231429981905dbe71df8b3777"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.74.0/aiproxy-linux-amd64"
      sha256 "df968055a20eca5f711de63ade6751054823affdc47ddbe55d82c3db0816f194"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
