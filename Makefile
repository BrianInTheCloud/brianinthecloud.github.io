.PHONY: clean
clean:
	@re='^BrianInTheCloud/(__branch_([^[:space:]]*)).*$$';\
	repos=$$(gh repo list);\
	IFS=$$'\n';\
	for repo in $$repos; do\
		if [[ $$repo =~ $$re ]]; then\
			repo_name="$${BASH_REMATCH[1]}";\
	        gh repo delete "$$repo_name" --yes;\
		fi;\
	done
