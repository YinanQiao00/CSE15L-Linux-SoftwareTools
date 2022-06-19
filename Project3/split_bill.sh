#!/usr/bin/bash
# TODO: Complete the first line of the script with the correct location for
# bash
#
# Name: Yinan Qiao
# PID: A17151776
# Account ID: cs15lfa21lo@ieng6.ucsd.edu
# File: split_bill.sh
# Assignment: Scripting Project -
# Date: 11/28/2021
#
#
#===============================================================================
# DO NOT TOUCH BELOW THIS LINE
#===============================================================================

# The usage message in case the user calls our script wrong.
ERR_USAGE="Usage: ./split_bill.sh -n <name_file> -m <menu_file>"

ASSIGN_MESSAGE="Enter diner to assign: \c"
ASSIGN_CONFIRMATION_MSG="Assigned %s to %s (Total: %s)\n\n"
TIP_MESSAGE="How much tip do you want to add (%)?\t"
TAX_MESSAGE="How much tax is required at your location (%)?\t"
LIST_OF_PEOPLE="[NUM] NAME"
PEOPLE_LIST_MSG="Assign to:"
RECEIPT_MSG="Receipt item:"

# List of arrays that this script should have access to:
# NAMES: list of names given to the script
# MENU: the menu given to the script in the format <item,$price>
#
# Note: after calling create_billings, you will have access to `billings` array, which can be used to map what the bill of person `i` is.
# i.e. bill for person at NAMES[i] = billings[i] where `i` is some index.
#
# Note: after parse_menu is called in main, you will also have access to `dishes` and `prices` arrays. dishes array holds each dish, prices array
# holds the price in $XX.XX format.

# parse_menu
#
# INPUT
#   none
#
# Function parses the menu array from the file.
# Each menu item has a dish separated by a "," followed by a price.
# Use this function to parse the menu file into a separate dishes and prices array
#
# USAGE
#   parse_menu
function parse_menu {
	prices=()
	dishes=()

	for bill in "${MENU[@]}"
	do
		IFS=','
		read -a parsed <<< "$bill"
		dish="${parsed[0]}"
		price="${parsed[1]}"

		prices+=("$price")
		dishes+=("$dish")
	done
}

# parse_price
# Function parses and cleans a price in the format 
# $XX.XX and converts it to cents in the format XXXX
#
# INPUT
#   price_string: a price string in the format: $XX.XX
#
# OUTPUT
#   price_cleaned: cleaned price string in the format: XXXX
#
# USAGE
#   parse_price price_string
function parse_price {
	price_string="$1"
	price_cleaned=""
	for (( index=0; index<${#price_string}; index++ ))
	do
		curr_char="${price_string:$index:1}"
		if [[ "$curr_char" == "\$" || "$curr_char" == "." ]]
		then
			continue
		fi

		price_cleaned+=$curr_char
	done
	echo $price_cleaned
}

# convert_cents_to_dollars
# Function that converts cents to dollars.
#
# INPUT
#   price_in_cents: the price in cents.
#
# OUTPUT
#   The dollar string in the format: $XX.XX
#
# USAGE
#   convert_cents_to_dollars price_in_cents
function convert_cents_to_dollars {
	DOLLARS=$[$1 / 100]
	DIMES=$[$1 % 100]
	DIMES=$[$DIMES / 10]
	PENNIES=$[$1 % 10]
	echo \$$DOLLARS.$DIMES$PENNIES
}

#===============================================================================
# DO NOT TOUCH ABOVE THIS LINE
#
#
# ========================== YOUR CODE STARTS BELOW ===========================

# create_billings
# Function that 0 initializes a billings array which holds the total tab for
# each person in the NAMES array located in names.sh file that is given as an input to the script.
#
# INPUT
#   none
#
# USAGE
#   create_billings
function create_billings {
	billings=()
	# TODO: Loop through NAMES array, using some index variable
	for (( i=0; i < ${#NAMES[@]}; i++ ))
	do
		# TODO: zero initialize the current index in the billings array.
		billings[$i]=0
	done
}

# assign_dishes
# Function that assigns every dish in the dishes array 
# to a person that is specified by the user.
# When a dish is assigned to a person, their total bill should be incremented.
#
# INPUT
#   none
#
# USAGE
#   assign_dishes
function assign_dishes {
	# TODO: Loop through dishes array, using some index variable
	# NOTE: if you index variable in this loop has the same name as the index variable in the
	# print_names function, you could get unexpected behaviour.
	for (( ind=0; ind < ${#dishes[@]}; ind++ ))
	do
		# TODO: Access the current dish.
		dish=${dishes[$ind]}
		
		# TODO: Access the price of the current dish.
		price=${prices[$ind]}

		echo $RECEIPT_MSG

		# TODO: Print the current item number, followed by the name of the dish and its price.
		echo -e "\t[$((${ind}+1))] ${dish}\t${price}"

		# TODO: call the print_names function.
		print_names
		
		# TODO: Print the ASSIGN_MESSAGE prompt
		echo -e $ASSIGN_MESSAGE

		# TODO: Store the selected name in the assigned_person variable.
		read assigned_person
		
		# Assign this dish to the person specified.
		# Simply add the price to the persons bill
		curr_tab=${billings[$((assigned_person-1))]}
		price_in_cents=$(parse_price "$price")
		new_amount=$(($price_in_cents+$curr_tab))
		billings[$((assigned_person-1))]=$new_amount

		person_name=${NAMES[$((assigned_person-1))]}

		bill_in_dollars=$(convert_cents_to_dollars $new_amount)
		printf "$ASSIGN_CONFIRMATION_MSG" "$dish" "$person_name" "$bill_in_dollars"
	done
}

# get_tax
# Function to prompt the user to enter the tax amount.
# ------------------------------------------------------------
# Note the user will enter 2 digit numbers such as: 10, 20. These numbers represent percentages such as: 10%, 20%.
# You will need to convert the percentage into an adjusted value, for example: for 10% tax, 
# our tax variable will need to hold 10
# ------------------------------------------------------------
# Store the tax percentage in a variable called "tax"
#
# INPUT
#   none
#
# USAGE
#   get_tax
function get_tax {
	# TODO: show the TAX_MESSAGE to the user.
	echo -ne $TAX_MESSAGE

	# TODO: store the value entered by the user in a variable called "tax"
	read tax
}

# get_tip
# Function to prompt the user to enter the tip amount.
# ------------------------------------------------------------
# Note the user will enter 2 digit numbers such as: 10, 20. These numbers represent percentages such as: 10%, 20%.
# You will need to convert the percentage into an adjusted value, for example: for 10% tip, 
# our tip variable will need to hold 10
# ------------------------------------------------------------
# Store the tip percentage in a variable called "tip"
#
# INPUT
#   none
#
# USAGE
#   get_tip
function get_tip {
	# TODO: show the TIP_MESSAGE to the user.
	echo -ne $TIP_MESSAGE

	# TODO: store the value entered by the user in a variable called "tip"
	read tip
}

# calculate
# Function to calculate the amount each person needs to pay after applying tip and tax
#
# INPUT
#   none
#
# USAGE
#   calculate
function calculate {
	# Go through the billings array and calculate the bill + tip + tax
	# TODO: Loop through billings array, using some index variable
	for (( index=0; index<${#billings[@]}; index++ ))
	do
		# TODO: Access the current element of the billings array.
		bill=${billings[$index]}

		# Add the tax
		# Note we add (denom - 1) to the numerator as a way of rounding up
		tax_amount=$[($bill * $tax + 50) / 100]

		# TODO: Add the tax_amount to the bill.
		bill=$(($bill + $tax_amount))

		# Add the tip
		# Note we add (denom - 1) to the numerator as a way of rounding up
		tip_amount=$[($bill * $tip + 50) / 100]

		# TODO: Add the tip_amount to the bill
		bill=$(($bill + $tip_amount))

		# Calculate the total amount.
		# TODO: Convert the current bill from cents to dollars using convert_cents_to_dollars
		total_dollars=$(convert_cents_to_dollars "$bill")

		# TODO: Print the correct name.
		echo "${NAMES[$index]} owes $total_dollars"
	done
}

# print_bills
# Function that prints the contents of the billings array.
# Can be used for your debugging. You do not need to use this function.
#
# INPUT
#   none
#
# USAGE
#   print_bills
function print_bills {
	echo "${billing[@]}"
}

# print_names
# Function that prints the contents of the people array.
#
# INPUT
#   none
#
# USAGE
#   print_names
function print_names {
	echo $PEOPLE_LIST_MSG
	# TODO: Implement the for loop condition.
	for (( ind1=0; ind1 <${#NAMES[@]}; ind1++ ))
	do
		# TODO: Implement the print statement.
		# Note: Make sure you leave the \t (a tab) at the start of the print statement.
		echo -e "\t[$((${ind1}+1))] ${NAMES[$ind1]}"
	done
}

# print_error_and_exit
# Function that prints an error message concerning incorrect usage to stderr and
# then terminates the script with exit status code 1
#
# INPUT
#   none
#
# USAGE
#   print_error_and_exit
function print_error_and_exit {
	# TODO: Implement the print_error_and_exit function.
	echo "${ERR_USAGE}"
	exit 1
}

function main {
	# TODO: Check for correct number of arguments.
	if [ $# -eq 4 ]
	then
		# Import the 2 files.
		source "$2"
		source "$4"

		# Main Logic
		parse_menu
		create_billings
		assign_dishes
		get_tax
		get_tip
		echo -e '\n'
		calculate

	else
		# arguemnts are incorrect, return error.
		print_error_and_exit
	fi
}

#===============================================================================
# DO NOT TOUCH BELOW THIS LINE
#===============================================================================

main "$@"

#===============================================================================
# DO NOT TOUCH ABOVE THIS LINE
#===============================================================================
