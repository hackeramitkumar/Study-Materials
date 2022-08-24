#! /bin/bash

function Hello(){
    echo "hello world"
}

funQ(){         #keyword funtion is not necessary
    echo "funQ called"
}
# calling funtions
Hello
funQ

#arguments
function Print(){   #by default all vars are global, we can use local keyword in funtions
    local name=$1
    echo $name $2
}
#calling
Print Hi Ashish # args are separated by space

# we can create readonly (constant) variables like
var=30
readonly var
echo $var

# similarly funtions can be readonly like

readonly -f hello # -f for funtions
# now we can't override this funtion
