
cat auth.log | grep -i "input_userauth_request" | cut -d" " -f9 > temp.sh

cat auth.log | grep -i "input_userauth_request" | cut -d" " -f10 >> temp.sh 

# than remove "user" from invalid_user.sh file.

cat temp.sh | grep -vw user > temp_2.sh

cat temp_2.sh | sort | uniq -c > invalid_user.sh

rm temp.sh temp_2.sh

Alternative:

grep -Eio "input_userauth_request: invalid user .+ " auth.log | awk '{print $4}' | sort | uniq -c > invalid_user.sh
