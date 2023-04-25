package terraform.policies.friday_deploys
import future.keywords
import data.policies.exclusion as policy
import input.run as run

allowDay := "Friday"
excluded_workspaces := policy.excluded_workspaces

workspace_exclusion {
	some excluded_workspace in excluded_workspaces
    excluded_workspace = run.workspace.name
}

deny[msg] {
	time.weekday(time.now_ns()) != allowDay; not workspace_exclusion
	msg := sprintf("Deployments only allowed on %v and excludedWorkspace %v", [allowDay, policy.excluded_workspaces])
}
