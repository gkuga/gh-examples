gh alias set --shell viewMilestone "gh api graphql -F owner=':owner' -F name=':repo' -F number=\$1 -f query='
    query GetMilestones(\$name: String\!, \$owner: String\!, \$number: Int\!) {
        repository(owner: \$owner, name: \$name) {
            milestone(number: \$number) {
                title
                number
                description
                dueOn
                url
                state
                closed
                closedAt
                updatedAt
                issues(first: 100) {
                    nodes {
                        title
                        number
                        url
                        state
                    }
                }
                pullRequests(first: 100) {
                    nodes {
                        title
                        number
                        url
                        state
                    }
                }
            }
        }
    }
'"
