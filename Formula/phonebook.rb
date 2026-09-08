class Phonebook < Formula
  desc "Storybook-style gallery generated from native preview screenshots"
  homepage "https://github.com/stag-build/phonebook"
  url "https://registry.npmjs.org/@stag-build/phonebook/-/phonebook-0.1.3.tgz"
  sha256 "65a973255c7df2ffb6a7dcdd0026cd1f7d43594f24cfb84e647388d07c1a1c40"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Static component gallery", shell_output("#{bin}/phonebook --help")
  end
end
