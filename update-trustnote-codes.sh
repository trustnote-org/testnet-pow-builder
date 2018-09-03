home_path="$HOME"
source_path="$home_path/mainchain-pow/testnet-pow-builder"
project_prefix_name="trustnote-pow-supernode"
config_path="$home_path/.config"
backupconfigs_path="$source_path/backupconfigs"

update_trustnote_common_code(){
    project_name="trustnote-pow-common"
    echo "update $project_name code"

    cd "$1/$project_name/"
    git checkout .
    git pull
    cd "$1"
}

update_trustnote_pow_code_by_copy(){
    project_name="$2$3"
    echo "update $project_name code"

    cd "$1/$project_name/"
    git checkout .
    git pull

    cp -rf "$2/node_modules/trustnote-pow-common" "node_modules/"
    cp -rf "$backupconfigs_path/$project_name/"* "$1/$project_name/"
    cd "$1"
}

update_trustnote_pow_code(){
    project_name="$2$3"
    echo "update $project_name code"

    cd "$1/$project_name/"
    git checkout .
    git pull
    rm -rf "$1/$project_name/node_modules/trustnote-pow-common"
    npm install

    cp -rf "$backupconfigs_path/$project_name/"* "$1/$project_name/"
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

update_trustnote_pow_by_copy(){
    update_trustnote_common_code "$1"
    update_trustnote_pow_code_by_copy "$1" "$3" "$4"
    update_trustnote_pow_cleandb "$2" "$3" "$4"
}

start_all_supernode(){
    for index in {1..9}
    do
        update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "$index" &
    done
}

start_all_supernode_by_copy(){
    for index in {1..9}
    do
        update_trustnote_pow_by_copy "$source_path" "$config_path" "trustnote-pow-supernode" "$index"
    done
}

start_part_supernode_by_copy(){
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "1"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "2"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "3"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "4"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "5"
    #update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "6"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "7"
    #update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "8"
    update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-supernode" "9"
}

#start_all_supernode
#start_part_supernode

#update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-headless" "10"
#update_trustnote_pow "$source_path" "$config_path" "trustnote-pow-explorer" "1"

start_all_supernode_by_copy
#start_part_supernode_by_copy

update_trustnote_pow_by_copy "$source_path" "$config_path" "trustnote-pow-headless" "10"
update_trustnote_pow_by_copy "$source_path" "$config_path" "trustnote-pow-explorer" "1"
