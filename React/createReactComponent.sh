#!/bin/bash
# MAKE SURE EXECUTION PERMS ARE ON (chmod -x ./createReactComponent.sh)
# TO RUN (sh ./createReactComponent.sh)
# Component name
echo Please input a name && read NAME
# NAME="TestComponent"
# File path location (for the folder, relative to where this script is)
LOCATION="./src/components/"
#
# Writing to files
cd ${LOCATION}
mkdir ${NAME} && cd ${NAME}
touch "${NAME}.tsx" && touch "${NAME}.test.js" && touch "${NAME}.scss"
printf "import './${NAME}.scss';\n\nconst ${NAME} = (props) => {\n\n  return (\n    <div>${NAME}</div>\n  )\n}\n\nexport default ${NAME};" > ${NAME}.tsx
printf "import ${NAME} from './${NAME}';" > ${NAME}.test.js