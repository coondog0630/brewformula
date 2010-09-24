require 'formula'

class ModXsendfile < Formula
  url 'http://tn123.ath.cx/mod_xsendfile/beta/mod_xsendfile-0.11.tar.gz'
  homepage 'http://tn123.ath.cx/mod_xsendfile/beta/'
  # md5 '5e6f7c857f4e01793b0bc6dd1dfb5bd6g'
  
# Be good if did checks and had a different apache installation so the builtin isn't getting modified
# depends_on 'apache'

  def install
    # Compile the apache module and then install the module into native apache
    system "apxs -cia mod_xsendfile.c"
  end
end
