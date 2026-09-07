class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.25.0/aiproxy-darwin-arm64"
      sha256 "4c58978046af103dedbd3b3cafb70ea64983c389b4ed1496e085597250f17b7b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.25.0/aiproxy-darwin-amd64"
      sha256 "8922b44a0a492656b875d831774e6fda86d06b68c15e025f881525f2e0bce05e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.25.0/aiproxy-linux-arm64"
      sha256 "025ec85623e8100d94cf1cd53959e867dd7cf3d42e6abe40299af802564d1ac1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.25.0/aiproxy-linux-amd64"
      sha256 "94bd7f341a5cc8611ee9bdb522ecec74bde82448db1c21c11dbe26463b1847d9"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
