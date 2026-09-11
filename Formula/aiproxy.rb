class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.65.0/aiproxy-darwin-arm64"
      sha256 "34fb5d8fbee4bd22f95c92912016271c080df2b39eeb3d9713a98f92985bdef0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.65.0/aiproxy-darwin-amd64"
      sha256 "bf31a1615f66d19719b90e9cee872a4375287b316aa700e7f99df5f9169c00e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.65.0/aiproxy-linux-arm64"
      sha256 "6d30237c297bfb49665fab85b7e1f7d5803cfac98de2abbcccbffcd86edd7629"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.65.0/aiproxy-linux-amd64"
      sha256 "78c55765e3ad6d17e3b30848d45c84cd2deddc4726bbe8e39fbcf016759167bd"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
