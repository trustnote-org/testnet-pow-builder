home_path="$HOME"
source_path="$home_path/mainchain-pow/testnet-pow-builder"
project_prefix_name="trustnote-pow-supernode"
config_path="$home_path/.config"

for index in {1..3}
do
    project_name="$project_prefix_name$index"
    echo "update $project_name"
    
    #rm -rf "$source_path/$project_name/node_modules/trustnote-pow-common"
    cd "$source_path/$project_name"
    pwd
    #npm install
    #cd "$source_path"

    #rm -rf "$config_path/$project_name/trustnote*"
    #rm -rf "$config_path/$project_name/log*"

    #ls -l "$config_path/$project_name/"
done

#rm -rf "$config_path/trustnote-pow-headless10/trustnote*"
#rm -rf "$config_path/trustnote-pow-headless10/log*"

#ls -l "$config_path/trustnote-pow-headless10/"
