#big_clean.sh takes tow arguments, the name of a .tgz file to uncompress and the directory where the extracted files are stored

tar xf $1 -C $2
#Store the starting directory 
ogdir=$(pwd)
cd $2
#find all files with delte me
files=$(grep -Rl 'DELETE ME!')
#and delete them
for file in "${files}"
do
	rm $file
done
#Compress the cleaned folder into the starting directory
tar -czf "$ogdir/cleaned_$1" $(basename $1 .tgz)
