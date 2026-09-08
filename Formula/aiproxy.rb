class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.32.0/aiproxy-darwin-arm64"
      sha256 "c7123268df5654e584020f36c389ca8391df4c84560443518b0172b4b5a3b814"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.32.0/aiproxy-darwin-amd64"
      sha256 "6a3afd723ad61c1ed15ef472c97b9d83d9ab321abad8de4622c63653f9a85a0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.32.0/aiproxy-linux-arm64"
      sha256 "3484964dd2db1d2e3f51a423898efdbe69a0ff2027f621f02806b28dd74158d9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.32.0/aiproxy-linux-amd64"
      sha256 "243775ab6b6576d80fdcb64918cace2f278c4d3ca538fb974c55f211510fabd4"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
