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

echo "Daily Employee Wage"

EmpRatePerHr=20
EmpHrs=8



salary=$(($EmpHrs*$EmpRatePerHr));

echo "$salary"
