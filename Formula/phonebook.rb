class Phonebook < Formula
  desc "Storybook-style gallery generated from native preview screenshots"
  homepage "https://github.com/stag-build/phonebook"
  url "https://registry.npmjs.org/@stag-build/phonebook/-/phonebook-0.1.2.tgz"
  sha256 "c3c0c55d77733886beb930f518874fc6b4d6356d7c8652fabd4b4a628fcdb985"
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
