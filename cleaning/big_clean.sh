tar xf $1 -C $2
ogdir=$(pwd)
cd $2
files=$(grep -Rl 'DELETE ME!')
for file in "${files}"
do
	rm $file
done
tar -czf "$ogdir/cleaned_$1" $(basename $1 .tgz)
