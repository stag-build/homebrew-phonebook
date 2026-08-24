class Phonebook < Formula
  desc "Storybook-style gallery generated from native preview screenshots"
  homepage "https://github.com/stag-build/phonebook"
  url "https://registry.npmjs.org/@stag-build/phonebook/-/phonebook-0.1.1.tgz"
  sha256 "111acbe6b58bc18b07983578ca05c18157063a85361208554431d8a7942c5f05"
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
