#!/bin/bash

echo "Current contents:"
find * | grep -v CE3377-Homework4 | grep -v script
echo "#!/bin/bash" > script3.sh
chmod 700 script3.sh
echo "rm -f link1" >> script3.sh
echo "rm -f file1" >> script3.sh
echo "rm -f dir2/file20" >> script3.sh
echo "rmdir dir2" >> script3.sh
echo "rm -f dir1/file10" >> script3.sh
echo "rmdir dir1" >> script3.sh
echo "Executing script3.sh"
./script3.sh
echo "Contents after script3.sh:"
find * | grep -v CE3377-Homework4 | grep -v script
