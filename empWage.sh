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
attendance

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
        $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        case $empCheck in
                $IS_FULL_TIME)
                        empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac

totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HR));
echo "Total Salary : $totalSalary"
