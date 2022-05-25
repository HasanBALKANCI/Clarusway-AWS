
cat auth.log | grep -i "input_userauth_request" | cut -d" " -f9 | uniq -c > invalid_user.sh

cat auth.log | grep -i "input_userauth_request" | cut -d" " -f10 | uniq -c >> invalid_user.sh 


than open invalid_user.sh and remove user and fro lines.

