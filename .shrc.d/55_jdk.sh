# shellcheck shell=bash

if [[ -n "${SDKMAN_DIR:-}" ]]; then
	___init() {
		local id lower_id upper_id
		declare -r default_id="11"
		declare -ra all_ids=(8 11 17 zulu8 zulu11 ibm8 semeru8 semeru11 semeru17 zulu7)
		for id in "${all_ids[@]}"; do
			lower_id="$(echo -n "${id}" | tr '[:upper:]' '[:lower:]')"
			upper_id="$(echo -n "${id}" | tr '[:lower:]' '[:upper:]')"
			if [[ -d "$SDKMAN_DIR/candidates/java/${lower_id}" ]]; then
				export JAVA_${upper_id}_HOME="$SDKMAN_DIR/candidates/java/${lower_id}"
				if [[ ${id} == "${default_id}" ]]; then
					export JAVA_HOME="$SDKMAN_DIR/candidates/java/${lower_id}"
				fi
			fi
		done
	}
	___init
	unset -f ___init
fi
