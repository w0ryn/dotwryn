#!/bin/zsh
# Default zsh environment
RD_PATH="$HOME/RentDynamics"
SCHOOL_DIR="$HOME/School"
DOTWRYN="$HOME/.wryn"

LOCAL_OVERRIDES="$HOME/.config/wryn/env.zsh"
[ -f "$LOCAL_OVERRIDES" ] \
	&& source "$LOCAL_OVERRIDES" \
	|| {
		touch $LOCAL_OVERRIDES \
			&& echo '#!/bin/zsh' > $LOCAL_OVERRIDES \
			&& echo '# Local overrides of .wryn environment variables '>> $LOCAL_OVERRIDES
		}
