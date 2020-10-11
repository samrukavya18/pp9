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

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalWorkHours=0;
totalWorkingDays=0;
function getWorkingHours() {
        case $1 in
                $IS_FULL_TIME)
                        workHours=8
                        ;;
                $IS_PART_TIME)
                        workHours=4
                        ;;
                *)
                        workHours=0
                        ;;
        esac
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours + $workHours))
        workHourPerDay= $(getWorkingHours $((RANDOM%3)))  
        employeeDailyWage[$totalWorkingDays]=$workHourPerDay

echo "Daily wage -"${employeeDailyWage[@]}
echo "Total Wage -"${totalWorkingHours[@]}


done

totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR))
echo "Total Salary : $totalSalary"






