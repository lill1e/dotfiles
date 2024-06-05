long_str=$(lsblk --paths | grep ─/dev/sda | grep 3.6T)
after_tree=${long_str#*─}
only_name=${after_tree%% *}
echo $only_name
