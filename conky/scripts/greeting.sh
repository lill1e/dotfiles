greetings=("Night", "Night" "Night" "Night" "Morning" "Morning" "Morning" "Morning" "Morning" "Morning" "Morning" "Morning" "Afternoon" "Afternoon" "Afternoon" "Afternoon" "Afternoon" "Evening" "Evening" "Evening" "Evening" "Night" "Night" "Night")
hour=$(date +%H)
echo ${greetings[hour]}
