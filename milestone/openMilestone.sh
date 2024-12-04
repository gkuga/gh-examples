gh alias set --shell openMilestone "echo '{\"state\": \"open\"}' | gh api --method PATCH repos/:owner/:repo/milestones/\$1 --input - | jq '{ html_url: .html_url, state: .state }'"
