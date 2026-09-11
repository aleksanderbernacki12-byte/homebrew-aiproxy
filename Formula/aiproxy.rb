class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.53.0/aiproxy-darwin-arm64"
      sha256 "96596523e228acb4a5f160f89c56e4d5ce2ccfe7d55b62b09572d9f3aee9ee45"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.53.0/aiproxy-darwin-amd64"
      sha256 "2e29aa39e9696f884e259f5529067be0c8c11ad7caba41488b1c2b93a9bc0a81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.53.0/aiproxy-linux-arm64"
      sha256 "55f94390e23b0d9eadf7bc1c824815ffacb6334fb2c5ce9ddc3e770956fb94ae"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.53.0/aiproxy-linux-amd64"
      sha256 "136a979d81cc6b8a5d06273bdee3b5d607ec46a98fd5b924353f44694d86db6c"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
