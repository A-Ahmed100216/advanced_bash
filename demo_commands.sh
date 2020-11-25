# Run the execute commmand
# ./demo_commands.sh
echo  -------------------------------
head demo.txt
echo  -------------------------------
head -n 7 demo.txt

echo  -------------------------------
tail demo.txt
echo  -------------------------------
tail -n 3 demo.txt

echo  -------------------------------
sort demo.txt
sort demo.txt > sorted_demo.txt
echo  -------------------------------
sort -r demo.txt
echo  -------------------------------
sort -c demo.txt
echo  -------------------------------
sort -c sorted_demo.txt
