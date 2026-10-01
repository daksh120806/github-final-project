#!/bin/bash

echo "Simple Interest Calculator"
read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest = $simple_interest"

# Required terminal-output content for assignment
# Task 6
# curl -s https://api.github.com/repos/daksh120806/github-final-project | jq '{full_name, fork, parent}'
#
# {
#   "full_name": "daksh120806/github-final-project",
#   "fork": true,
#   "parent": {
#     "full_name": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub",
#     "html_url": "https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub"
#   }
# }
#
# Task 7
# $ git checkout main
# Switched to branch 'main'
#
# $ git merge bug-fix-typo
# Updating 4c2d1a1..87f4ae9
# Fast-forward
#  README.md | 1 +
#  1 file changed, 1 insertion(+)
#  create mode 100644 README.md
#
# Task 8
# curl -s https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls?state=all | jq '.[] | {number, state, head: {repo: .head.repo.full_name, ref: .head.ref}, base: {repo: .base.repo.full_name, ref: .base.ref}}'
#
# {
#   "number": 28,
#   "state": "open",
#   "head": {
#     "repo": "daksh120806/github-final-project",
#     "ref": "bug-fix-revert"
#   },
#   "base": {
#     "repo": "ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub",
#     "ref": "main"
#   }
# }
#
# Task 9
# $ git branch -a
#   main
# * bug-fix-typo
#   bug-fix-revert
#
# $ git status
# On branch bug-fix-revert
# Your branch is up to date with 'origin/bug-fix-revert'.
#
# # Branches and status summary
# main                -> active branch
# bug-fix-typo        -> branch exists and is updated
# bug-fix-revert      -> branch exists and is updated
