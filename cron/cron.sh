#!/bin/bash

sync_crons() {
	# Path to the file containing the cron jobs to be added
	CRONJOBS_FILE="cron"

	# Read the current crontab into a variable
	CURRENT_CRONTAB=$(crontab -l)

	# Read the cron jobs from the file into an array
	mapfile -t NEW_CRONJOBS <"$CRONJOBS_FILE"

	# Create an array to store the updated crontab
	UPDATED_CRONTAB=()

	# Loop through the current crontab line by line
	while IFS= read -r LINE; do
		# Check if the line is a cron job (starts with a digit or an asterisk)
		if [[ $LINE =~ ^[0-9*] ]]; then
			# Extract the command from the cron job
			CRONJOB_COMMAND=$(echo "$LINE" | awk '{print $6, $7, $8, $9, $10, $11, $12, $13, $14, $15}')

			# Check if there's a new cron job with the same command
			NEW_CRONJOB=$(grep -F "$CRONJOB_COMMAND" "$CRONJOBS_FILE")

			if [[ -n $NEW_CRONJOB ]]; then
				# If there's a new cron job with the same command, add it to the updated crontab
				UPDATED_CRONTAB+=("$NEW_CRONJOB")

				# Remove the new cron job from the array of new cron jobs
				NEW_CRONJOBS=("${NEW_CRONJOBS[@]/$NEW_CRONJOB/}")
			fi
		else
			# If the line is not a cron job, add it to the updated crontab as is
			UPDATED_CRONTAB+=("$LINE")
		fi
	done <<<"$CURRENT_CRONTAB"

	# Add any remaining new cron jobs to the updated crontab
	UPDATED_CRONTAB+=("${NEW_CRONJOBS[@]}")

	# Write the updated crontab to a temporary file
	UPDATED_CRONTAB_FILE=$(mktemp)
	printf "%s\n" "${UPDATED_CRONTAB[@]}" >"$UPDATED_CRONTAB_FILE"

	# Load the updated crontab from the temporary file
	crontab "$UPDATED_CRONTAB_FILE"

	# Remove the temporary file
	rm -f "$UPDATED_CRONTAB_FILE"
}
