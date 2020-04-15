require 'formula'

class Xmedcon < Formula
  homepage 'http://xmedcon.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/xmedcon/XMedCon-Source/0.16.2/xmedcon-0.16.2.tar.bz2'
  sha256 '75a1623714745efe03a8abd654f0715d56c5497f9b494f3e1e74cb52274f64d8'

  depends_on 'glib' => :build
  depends_on 'gtk+' => :build
  depends_on 'gdk-pixbuf' => :build
  depends_on 'pkg-config' => :build
  depends_on 'pango' => :build
  depends_on 'harfbuzz' => :build
  depends_on 'graphite2' => :build
  depends_on 'fribidi' => :build
  depends_on 'fontconfig' => :build
  depends_on 'freetype2' => :build
  depends_on 'cairo' => :build
  depends_on 'pixman' => :build
  depends_on 'atk' => :build
  depends_on 'gettext' => :build

  depends_on 'libpng' => :build

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end

