#!/bin/bash
function AddContact(){
	echo "-I- $1 -+- $2 -+- $3 -+- $4 -I- " >> book.txt
}

function ListAll(){
	cat book.txt
}
function FindContact(){
grep $1 book.txt
}


function DeleteContact(){
sed -i "/$1/d" book.txt
}

function ChangeContact(){
	echo "Enter phone number or email of the contact you'd like to change."
	read delDetail
	DeleteContact $delDetail
	echo "Enter new contact details (name surname phone email)"
	read name surname phone email
	AddContact $name $surname $phone $email
}

select number in List_contacts Add_contact Delete_contact Find_contact Change_contact Quit
do
	case $number in
	List_contacts)
		echo "Contact List:"
		ListAll
		;;
	Add_contact)
		echo "Please enter details of new contact (name surname phone email)"
		read name surname phone email
		AddContact $name $surname $phone $email
		;;
	Delete_contact)
		echo "Please enter phone number or email address of the contact You'd like to delete"
		read delDetail
		DeleteContact $delDetail
		;;
	Find_contact)
		echo "Please enter any part of the contact that You remember"
		read detail
		FindContact $detail
		;;
	Change_contact)
		ChangeContact
		;;
	Quit)
		exit
		;;
	*)
		echo "Please make a choice from predefined list"
	esac
done

