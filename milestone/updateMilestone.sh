# echo '{
#  "title": "Create a miletsone via gh",
#  "state": "open",
#  "due_on": "2020-12-31T23:59:59Z",
#  "description": "Description foo bar"
#}' | gh createMilestone

gh alias set --shell updateMilestone "gh api --method PATCH -F number=\$1 repos/:owner/:repo/milestones/\$number --input - | jq '{ title: .title, state: .state, due_on: .due_on }'"
