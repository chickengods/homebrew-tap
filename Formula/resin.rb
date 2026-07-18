class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.2.1"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.1/resin_0.2.1_darwin_arm64.tar.gz"
      sha256 "65230e401a920b6f79a6568bd57c4dc6cb8d1bf7815f10061f372f667bfc4117"
    end

    on_intel do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.1/resin_0.2.1_darwin_amd64.tar.gz"
      sha256 "fd6080759ecb59662991e11328140e16048c14a2bd96ea8504a36078a7803a52"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.2.1"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
