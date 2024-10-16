#!/bin/bash

# Get the Jira link for the current branch
branch_name=$(git rev-parse --abbrev-ref HEAD)
jira_base_url="https://awesomegapps.atlassian.net/browse/"
jira_link="$jira_base_url$branch_name"

if [[ "$branch_name" == "master" ]]; then
    jira_link="$jira_base_url"
fi

echo "$jira_link"
