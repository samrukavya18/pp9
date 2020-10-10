#!/bin/bash
 
echo "WELCOME"
function attendance() {

Emp=$((RANDOM%2))

echo $Emp
if [ $Emp == 1 ]
then
     Echo "Employee is Present"
else
     Echo "Employee is Absent"
fi

}
