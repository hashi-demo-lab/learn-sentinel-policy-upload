package terraform.policies.friday_deploys
import data

allowDay := "Friday"

deny[msg] {
	time.weekday(time.now_ns()) != allowDay
	msg := sprintf("Deployments only allowed on %v and excludedWorkspace %v", [allowDay, data.excluded_workspaces])
}
