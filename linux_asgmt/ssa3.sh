echo "all files u want to do operations on"
read file
echo "which word u want to delete"
read word
sed "/word/d" /file
cat file
