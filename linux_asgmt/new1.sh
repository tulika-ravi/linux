if [ $# -lt 2 ]
    then
    echo "Error : Invalid number of arguments. Provide atleast two files as argument"
	exit 1
fi

search_file=`tr '\n' ' ' < $1` 

for file_name in "$@"
do
    if [ $file_name = $1 ]
        then 
        continue
    fi
	   
    for search_word in $search_file
    do
        echo "$file_name: $search_word:" $(tr ' ' '\n' <"$file_name" | grep -c "$search_word")

    done
done
