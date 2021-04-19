export src="src"
export dest="dest"

mkdir $dest
n=0
for i in ${src}/*
do
  if [ $((n+=1)) -gt 10 ]; then
    n=1
  fi
  todir=${dest}/$n
  [ -d "$todir" ] || mkdir "$todir" 
  cp "$i" "$todir" 
done
