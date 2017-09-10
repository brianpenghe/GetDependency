#!/bin/bash
#Run these codes in the current directory
#The output can be visualized at http://www.webgraphviz.com/
rm FileCollection
ls -p | grep -v / > FileCollection
cat FileCollection | grep -v FileCollection - > FileCollection2
mv FileCollection2 FileCollection
while read file
    do
        filefile=$(echo $file)
        while read file2
            do
                if [ $(grep -c $filefile $file2) != 0 ]
                    then 
                        echo \"$filefile\"" -> "\"$file2\"
                fi
            done<FileCollection
    done<FileCollection



