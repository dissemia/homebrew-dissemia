class Disseminate < Formula
  include Language::Python::Virtualenv

  desc "Publish textbooks, books and articles in html, pdf and ebook"
  homepage "https://github.com/dissemia/disseminate"
  url "https://github.com/dissemia/disseminate/archive/refs/tags/v2.3.4.tar.gz"
  sha256 "f0707a1b11a7142faa67d19eb802e14429fc8b1b51e8e37962ac35f9a884fc1e"
  license "AGPL-3.0-only"

  depends_on "asymptote"
  depends_on "freetype"
  depends_on "gnupg"
  depends_on "imagemagick"
  depends_on "jpeg"
  depends_on "librsvg"
  depends_on "libyaml"
  depends_on "pdf2svg"
  depends_on "python@3.9"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "zlib"

  resource "regex" do
    url "https://files.pythonhosted.org/packages/38/3f/4c42a98c9ad7d08c16e7d23b2194a0e4f3b2914662da8bc88986e4e6de1f/regex-2021.4.4.tar.gz"
    sha256 "52ba3d3f9b942c49d7e4bc105bb28551c44065f139a65062ab7912bef10c9afb"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/39/11/8076571afd97303dfeb6e466f27187ca4970918d4b36d5326725514d3ed3/Jinja2-3.0.1.tar.gz"
    sha256 "703f484b47a6af502e743c9122595cc812b0271f661722403114f71a79d0f5a4"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/e5/21/a2e4517e3d216f0051687eea3d3317557bde68736f038a3b105ac3809247/lxml-4.6.3.tar.gz"
    sha256 "39b78571b3b30645ac77b95f7c69d1bffc4cf8c3b157c435a34da72e78c82468"
  end

  resource "python-slugify" do
    url "https://files.pythonhosted.org/packages/bc/a4/57893fbaf7cbf303a4f2307564cf83855a5f2cc34544656e7263125a0d1e/python-slugify-5.0.2.tar.gz"
    sha256 "f13383a0b9fcbe649a1892b9c8eb4f8eab1d6d84b84bb7a624317afa98159cab"
  end

  # Needed by python-slugify
  resource "unidecode" do
    url "https://files.pythonhosted.org/packages/cd/31/245d8a384939aa0ee152c76fc62890f79f35fc41cd12839f5df268d9081d/Unidecode-1.2.0.tar.gz"
    sha256 "8d73a97d387a956922344f6b74243c2c6771594659778744b2dbdaad8f6b727d"
  end

  # Needed by python-slugify
  resource "text-unidecode" do
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  resource "pdfcropmargins" do
    url "https://files.pythonhosted.org/packages/7f/f1/cfa4875dd77fb0d0a992c8579264ba75b665393d9a58533bb2231ae9f368/pdfCropMargins-1.0.5.tar.gz"
    sha256 "76fd16b3955e11b2a9fc3ad839342d6528f10324908a4a8f04f94ecda68205b3"
  end

  # Needed by pdfcropmargins
  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/60/f0/dd2eb7911f948bf529f58f0c7931f6f6466f711bd6f1d81a69dc4edd4e2a/Pillow-8.1.2.tar.gz"
    sha256 "b07c660e014852d98a00a91adfbe25033898a9d90a8f39beb2437d22a203fc44"
  end

  # Needed by pdfcropmargins
  resource "PyPDF2" do
    url "https://files.pythonhosted.org/packages/b4/01/68fcc0d43daf4c6bdbc6b33cc3f77bda531c86b174cac56ef0ffdb96faab/PyPDF2-1.26.0.tar.gz"
    sha256 "e28f902f2f0a1603ea95ebe21dff311ef09be3d0f0ef29a3e44a932729564385"
  end

  # Needed by pdfcropmargins
  resource "wheel" do
    url "https://files.pythonhosted.org/packages/ed/46/e298a50dde405e1c202e316fa6a3015ff9288423661d7ea5e8f22f589071/wheel-0.36.2.tar.gz"
    sha256 "e11eefd162658ea59a60a0f6c7d493a7190ea4b9a85e335b33489d9f17e0245e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/21/83/308a74ca1104fe1e3197d31693a7a2db67c2d4e668f20f43a2fca491f9f7/click-8.0.1.tar.gz"
    sha256 "8c04c11192119b1ef78ea049e0a6f0463e4c48ef00a30160c704337586f3ad7a"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/cf/44/cc9590db23758ee7906d40cacff06c02a21c2a6166602e095a56cbf2f6f6/tornado-6.1.tar.gz"
    sha256 "33c6e81d7bd55b468d2e793517c909b139960b6c790a60b7991b9b6b76fb9791"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/ba/6e/7a7c13c21d8a4a7f82ccbfe257a045890d4dbf18c023f985f565f97393e3/Pygments-2.9.0.tar.gz"
    sha256 "a18f47b506a429f6f4b9df81bb02beab9ca21d0a5fee38ed15aef65f0545519f"
  end

  resource "diskcache" do
    url "https://files.pythonhosted.org/packages/49/07/079b8b4eb2aba194fca4562c7f014ea45a40130ebff539628c05c52d9050/diskcache-5.2.1.tar.gz"
    sha256 "1805acd5868ac10ad547208951a1190a0ab7bbff4e70f9a07cde4dbdfaa69f64"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/e3/9f/3fcfe6ab940c58fb7cdb9587637ede3a914a1500a126831a3b14573b658d/pathvalidate-2.4.1.tar.gz"
    sha256 "3c9bd94c7ec23e9cfb211ffbe356ae75f979d6c099a2c745ee9490f524f32468"
  end

  def install
    venv = virtualenv_create(libexec, "python3")

    resource("Pillow").stage do
      inreplace "setup.py" do |s|
        sdkprefix = MacOS.sdk_path_if_needed ? MacOS.sdk_path : ""
        s.gsub! "openjpeg.h", "probably_not_a_header_called_this_eh.h"
        s.gsub! "xcb.h", "probably_not_a_header_called_this_eh.h"
        s.gsub! "ZLIB_ROOT = None",
                "ZLIB_ROOT = ('#{sdkprefix}/usr/lib', '#{sdkprefix}/usr/include')"
        s.gsub! "JPEG_ROOT = None",
                "JPEG_ROOT = ('#{Formula["jpeg"].opt_prefix}/lib', '#{Formula["jpeg"].opt_prefix}/include')"
        s.gsub! "FREETYPE_ROOT = None",
                "FREETYPE_ROOT = ('#{Formula["freetype"].opt_prefix}/lib', " \
                                 "'#{Formula["freetype"].opt_prefix}/include')"
      end

      venv.pip_install Pathname.pwd

      xy = Language::Python.major_minor_version Formula["python@3.9"].opt_bin/"python3"
      site_packages = "lib/python#{xy}/site-packages"
      pth_contents = "import site; site.addsitedir('#{libexec/site_packages}')\n"
      (prefix/site_packages/"homebrew-weboob.pth").write pth_contents
    end

    # Fix "ld: file not found: /usr/lib/system/libsystem_darwin.dylib" for lxml
    ENV["SDKROOT"] = MacOS.sdk_path if MacOS.version == :sierra

    res = resources.map(&:name).to_set - ["Pillow"]

    res.each do |r|
      venv.pip_install_and_link resource(r)
    end

    venv.pip_install_and_link buildpath
  end

  test do
    system "echo \"This is @b{my} test\" > test.dm"
    system "dm", "build", "-i", "test.dm"
    assert_equal "1", pipe_output("grep -c '<div class=\"body\"><p>This is <strong>my</strong> test' html/test.html")
  end
end
