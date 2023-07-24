To run the file :
1)make
2)./a.out test.txt
 
 make contains all three commands:
 
        flex filename.l
        bison -d filename.y
        gcc filename.tab.c
 
If make doesn't work you can install :
        sudo apt install make
    
            OR 
   
Run following commands on terminal:
       
        flex Assignment.l
        bison -d Assignment.y
        gcc Assignment.tab.c
