current_date=$(date +"%Y-%m-%d_%H-%M-%S")

#create the main directory
main_dir="$current_date"
mkdir  -p "$main_dir"


#create the language we use for the .txt files
languages=("Java" "C" "Python" "C++" "C#" "JavaScript" "HTML" "React" "Swift" "Kotlin")


#Now it is the time to create the subdirectories and the .txt files
#Use the for Loop from 101 to 110 to have the file and then use another inner loop for the file
for i in {101..110}; do 
sub_dir="${main_dir}/file${i}"
mkdir -p "$sub_dir"
    for j in {501..510}; do 
    lang_dir="${sub_dir}/tuser${j}.txt"
    touch "$lang_dir"
     #In each one have the language with that from the text
    lang_in=$(((j-501)%${#languages[@]} ))
    language="${languages[$lang_in]}"
    echo "${language}" > "$lang_dir"
    done

done

#Finish the program
echo "The Program is finished"