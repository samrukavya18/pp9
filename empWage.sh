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


isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20

        empCheck=$((RANDOM%3))
                case $empCheck in
                        $isFullTime)
                                empHrs=8
                                echo "Full-time Wage"
                                ;;
                        $isPartTime)
                                empHrs=4
                                echo "Part-time Wage"
                                ;;
                        *)
                               empHrs=0
                                ;;
                esac
                salary=$(($empHrs*$empRatePerHr))
                totalSalary=$(($totalSalary+$salary))
                echo "Total Salary : $totalSalary"


