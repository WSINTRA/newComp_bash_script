#!/bin/bash
GLOBAL_NAME="$1"
COMP_TYPE="$2"
FUN_TYPE="func"
CLASS_TYPE="class"
if [ "$COMP_TYPE" == "" ]; then
echo "useage ./newComp.sh name component_type"
exit
elif [ "$COMP_TYPE" == "$FUN" ]; then 
touch $GLOBAL_NAME.js
echo 'import * as React from "react";' > $GLOBAL_NAME.js
echo "function $GLOBAL_NAME() {">> $GLOBAL_NAME.js
echo 'return ()' >> $GLOBAL_NAME.js
echo '}' >> $GLOBAL_NAME.js
echo "export default $GLOBAL_NAME;" >> $GLOBAL_NAME.js
echo "filename is $GLOBAL_NAME.js and is a $FUN component"
elif [ "$COMP_TYPE" == "$CLASS_TYPE" ]; then
touch $GLOBAL_NAME.js
echo 'import * as React from "react";' > $GLOBAL_NAME.js
echo "class $GLOBAL_NAME extends React.Component {" >> $GLOBAL_NAME.js
echo "state = {}" >> $GLOBAL_NAME.js
echo "render(){" >> $GLOBAL_NAME.js
echo "return ()" >> $GLOBAL_NAME.js
echo "}" >> $GLOBAL_NAME.js
echo "export default $GLOBAL_NAME;" >> $GLOBAL_NAME.js
echo "filename is $GLOBAL_NAME.js and is a $CLASS_TYPE component"
else 
echo "Sorry an error occured, component_type is func or class make sure you use ./newComp.sh component_name component_type"
fi
