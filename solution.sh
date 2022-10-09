mapfile -t Arrayinput < "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\inputok"
for string in "${Arrayinput[@]}";
	do
		grep  "$string" "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\bigcustomercsvok" >> customercsv.text
		grep  "$string" "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\biginvoicecsvok"  >> invoicecsv.text
	done 

mapfile -t Arrayinput < "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\invoicecsv.text"
for string in "${Arrayinput[@]}";
	do
		substring=$(echo $string | cut -d "," -f2)
		grep $substring "C:\Users\USER\Desktop\stonebranch\DreamCandiesFileTool\biginvoice_itemcsvok" >> invoice_itemcsv.text
	done