# brew install z (see Brewfile)
z=$(brew --prefix)/etc/profile.d/z.sh
if test -f $z; then
  source $z
fi