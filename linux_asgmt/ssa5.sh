echo "write a filename of which u want to see timestamp"
read filename
timestamp=$(stat $filename)
echo $timestamp
