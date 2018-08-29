home_path="$HOME"
source_path="$home_path/mainchain-pow/testnet-pow-builder"
project_prefix_name="trustnote-pow-supernode"
config_path="$home_path/.config"

update_trustnote_pow_code(){
    project_name="$2$3"
    echo "update $project_name code"

    cd "$1/$project_name/"
    git pull
    rm -rf "$1/$project_name/node_modules/trustnote-pow-common"
    npm install
    cd "$1"
}

update_trustnote_pow_cleandb(){
    project_name="$2$3"
    echo "clean $project_name db"

    rm -rf "$1/$project_name/trustnote"*
    rm -rf "$1/$project_name/log"*

    ls -l "$1/$project_name/"
}

update_trustnote_pow(){
    update_trustnote_pow_code "$1" "$3" "$4"
    update_trustnote_pow_cleandb "$2" "$3" "$4"
}

start_all_supernode(){
    for index in {1..9}
    do
        update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "$index" &
    done
}

start_part_supernode(){
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "1" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "2" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "3" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "4" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "5" &
    #update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "6" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "7" &
    #update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "8" &
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "9" &
}

start_all_supernode
#start_part_supernode

update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-headless" "10"
update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-explorer" "1"
