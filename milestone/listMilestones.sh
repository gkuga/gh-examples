gh alias set listMilestones "api graphql -F owner=':owner' -F name=':repo' -f query='
    query ListMilestones(\$name: String\!, \$owner: String\!) {
        repository(owner: \$owner, name: \$name) {
            milestones(first: 100) {
                nodes {
                    title
                    number
                    description
                    dueOn
                    url
                    state
                    closed
                    closedAt
                    updatedAt
                }
            }
        }
    }
'"
