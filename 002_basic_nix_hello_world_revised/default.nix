{stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "hello-2.6";

  src = fetchurl {
    url = ftp://ftp.gnu.org/gnu/hello/hello-2.6.tar.gz;
    sha256 = "1h6fjkkwr7kxv0rl5l61ya0b49imzfaspy7jk9jas1fil31sjykl";
  };

  meta = {
    homepage = http://www.gnu.org/software/hello/manual/;
    license = "GPLv3+";
  };
}
