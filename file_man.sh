option=0
file="test1.db"

echo "chose any of the following"
echo "enter 1 to list files in current directory"
echo "enter 2 to copy files"
echo "enter 3 to move files"
echo "enter 4 to delete files"
read option

echo "you have entered $option"

if [ $option == 1 ]
then
    ls
fi

if [ $option == 2 ]
then
    ls -l ./src
    echo "Enter the file, you want to copy to destination folder from the above list"
    read file
    echo "you entered $file"
    cd src
    cp $file ../dest/
    cd ..
    echo "File copied to destination "
    ls -l ./dest/
fi

if [ $option == 3 ]
then 
    ls -l ./src
    echo "Enter the file you want to move to destination folder"
    read file 
    echo "you have entered $file"
    cd src
    mv $file ../dest/
    cd ..
    echo "File moved to dest"
    ls -l ./dest/
fi

if [ $option == 4 ]
then
    ls -l ./src
    echo "Enter the file you want to delete/remove"
    read file
    echo "You have enetered $file"
    cd src
    rm $file
    echo "File has been removed"
fi
    
    
  
