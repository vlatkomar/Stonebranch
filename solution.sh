### $1 "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\inputok"
### $2 "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\bigcustomercsvok"
### $3 "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\biginvoicecsvok"
### $4 "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\biginvoice_itemcsvok"

mapfile -t Arrayinput < $1 
for string in "${Arrayinput[@]}";
	do
		grep  "$string" $2 >> customercsv.text
		grep  "$string" $3 >> invoicecsv.text
	done 

mapfile -t Arrayinput < invoicecsv.text
for string in "${Arrayinput[@]}";
	do
		substring=$(echo $string | cut -d "," -f2)
		grep $substring $4 >> invoice_itemcsv.text
	done
