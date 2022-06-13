#!/usr/bin/env bash

output=$(echo 'my conscience is clea' | aspell --lang=en list);
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