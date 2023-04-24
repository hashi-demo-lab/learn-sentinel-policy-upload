package terraform.policies.friday_deploys

import data.policies.exclusion as policy

allowDay := "Friday"

deny[msg] {
	time.weekday(time.now_ns()) != allowDay
	msg := sprintf("Deployments only allowed on %v and excludedWorkspace %v", [allowDay, policy.excluded_workspaces])
}
