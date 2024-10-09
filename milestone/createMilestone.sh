# echo '{
#  "title": "Create a miletsone via gh",
#  "state": "open",
#  "due_on": "2020-12-31T23:59:59Z",
#  "description": "Description foo bar"
#}' | gh createMilestone

gh alias set --shell createMilestone "gh api --method POST repos/:owner/:repo/milestones --input - | jq '{ html_url: .html_url, state: .state, created_at: .created_at }'"
