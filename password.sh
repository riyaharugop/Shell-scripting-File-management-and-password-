pw="riya"
echo "enter a password"
declare -i i=1
read pw

if [[ ${#pw}  -ge  8 ]]
then
    echo "Password has 8 digits"
    i=1
fi

if [[ $pw =~ [A-Z] ]]
then
    echo "Password has upper case"
    if [ $i == 1 ]
    then 
        i=2
    fi 
fi

if [[ $pw =~ [a-z] ]]
then
    echo "Password has lowercase"
    if [ $i == 2 ]
    then 
        i=3
    fi 
fi

if [[ $pw =~ [1-8] ]]
then
    echo "Password has 1 to 8 digits"
    if [ $i == 3 ]
    then 
        i=4
    fi 
fi


#if [[ $pw =~ [!, @, #, $, %, ^, &, *, _, +, -, =, [, ], {, }, |, :, <, >, ?, /] ]]
#then
#    echo "it has minimum special characters"
#fi

#echo "i= $i"

case $i in
    1)
    echo "Weak password"
    ;;

    2)
    echo "Fair Password"
    ;;
    
    3)
    echo " Strong Password"
    ;;

    4)
    echo " Very Strong Password"
    ;;
    *)
    echo "Enter New passwd"
esac
