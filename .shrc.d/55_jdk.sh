# shellcheck shell=bash

if [ -n "${SDKMAN_DIR:-}" ]; then
	default_id="21"
	for id in 7 8 11 17 21 zulu8 zulu11 ibm8 semeru8 semeru11 semeru17 zulu7 graalvm17; do
		lower_id="$(printf '%s' "${id}" | tr '[:upper:]' '[:lower:]')"
		upper_id="$(printf '%s' "${id}" | tr '[:lower:]' '[:upper:]')"
		if [ -d "$SDKMAN_DIR/candidates/java/${lower_id}" ]; then
			eval "export JAVA_${upper_id}_HOME=\"$SDKMAN_DIR/candidates/java/${lower_id}\""
			if [ "${id}" = "${default_id}" ]; then
				export JAVA_HOME="$SDKMAN_DIR/candidates/java/${lower_id}"
			fi
		fi
	done
fi
