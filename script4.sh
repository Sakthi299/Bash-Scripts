function validate()
        {
                local stat=1
                local pass=$1
                LEN=${#pass}
                if  [[ $pass =~ [0-9] ]] && [[ $pass =~ [a-z] ]] && [[ $pass =~ [A-Z] ]]  && [[ "$LEN" -ge 8 ]]; then
                        stat=$?         #return 1 for false
                fi
                return $stat
        }

read -p "Enter your password:" -e PASSWORD

password=$PASSWORD
validate $password

if [[ $? -ne 0 ]]; then
        echo "Invalid password"
else
        echo "Password is valid"
fi
