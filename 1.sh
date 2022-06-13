#!/usr/bin/env bash

output=$(echo 'missage' | aspell --lang=en list);
if [[ $? != 0 ]]; then
        echo -e "${RED}Error found in output${NC}, cannot continue. Please check manually for aspell -c $file?"
        exit 1
elif [[ $output ]]; then
        echo -e "-> ${RED}Spelling errors found${NC} <-"
        echo -e "${YELLOW}$output${NC}" |sort -u
        echo "Please check with: aspell -c $file"
        bad="yes"
        good="yes"
fi



#            if [[ $? != 0 ]]; then
#              echo -e "${result_aspell}"
#              echo -e "${MESSAGE_COMMITS}"
#              echo "if"
#              exit 1
#            elif [[ $result_aspell ]]; then
#              echo -e "$result_aspell"
#              echo -e "${MESSAGE_COMMITS}"
#              echo "elif"
#            fi