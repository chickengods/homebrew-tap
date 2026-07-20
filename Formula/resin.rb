class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.2.3"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.3/resin_0.2.3_darwin_arm64.tar.gz"
      sha256 "189e005b0d1c9971c5161f8d3112ac8bf7f92960e0beeb9785cdd34040c83c53"
    end

    on_intel do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.2.3/resin_0.2.3_darwin_amd64.tar.gz"
      sha256 "0b5f10487414ef5032dbc515ad9fc6f0dedc2e481ff7d7f84952d4521ba7320f"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.2.3"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
