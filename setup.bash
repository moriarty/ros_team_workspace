setup_script_own_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

# Load RosTeamWS defines
source $setup_script_own_dir/scripts/_RosTeamWs_Defines.bash

# setup default versions and paths for rtw
set_supported_versions
set_framework_default_paths
# Get color definitions
RosTeamWS_setup_exports

# Load Team defines
source $setup_script_own_dir/scripts/_Team_Defines.bash

# Load Docker defines
source $setup_script_own_dir/scripts/_RosTeamWs_Docker_Defines.bash

# Set main path where source.bash is defined
RosTeamWS_FRAMEWORK_MAIN_PATH="$(RosTeamWS_script_own_dir)/../"

# Source autocompletion for rtwcli
source $setup_script_own_dir/rtwcli/rtwcli/completion/rtw-argcomplete.bash
