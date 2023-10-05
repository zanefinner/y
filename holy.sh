#!/bin/bash

# Set your GitHub username and access token
GITHUB_USERNAME="zanefinner"
GITHUB_TOKEN="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"

# List of repositories you want to delete
REPO_LIST=("everything-cannabiz" "cannabisbreedingsimulator" "photography" "datenite-app" "cookbook-app" "forum-app" "life-planner" "peer-to-peer-web-conference" "mmo" "githubstore" "GrowtopiaServer3" "random-web" "zanefinner" "zanefinner-netlify-app" "go-blog-open" "mmo-demo" "flock" "golang-blog" "todo-app" "todo-list" "ebay-dropship-app" "ebay-api-test-s" "php-blog" "first-golang-cli" "get-certified" "static-site" "yii-gradebook-app" "cs-blog" "programmer-bounty-app" "project-management-saas")

# Loop through and delete each repository
for repo in "${REPO_LIST[@]}"; do
    echo "Deleting $repo..."
    hub delete $GITHUB_USERNAME/$repo -y -h api.github.com -t $GITHUB_TOKEN
    echo "Deleted $repo"
done
