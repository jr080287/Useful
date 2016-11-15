# use this one line command to create symbolic links to executables in a path

#make sure to replace </PATH/TO/DIRECTORY/> with your actual directory
#if you want to traverse the entire path, remove maxdept 1>
for file in $(find </PATH/TO/DIRECTORY/> -maxdepth 1 -perm -111 -type f); do name=${file##*/}; echo $file $name; ln -s $file $name; done;
