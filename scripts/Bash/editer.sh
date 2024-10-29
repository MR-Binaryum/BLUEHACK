#!/bin/bash

echo ""
echo "deleting all lines except key words: OBEX,Object..." &&
echo ""
  sudo sed -i '/OBEX\|Object/!d' services.txt &&
  sleep 1 &&
  cat services.txt &&
        echo ""
        echo "deleting all content except keywords: name,port,host"  
        sudo awk -F", " '{for(i=1;i<=NF;i++) if($i ~ /name|port|host/) printf "%s ", $i; print ""}' services.txt > results.txt &&
        echo ""
        cat results.txt &&
        echo ""
        echo "deleting services.txt file and deleting all caracters ' except Push,Object keywords" &&
                echo ""
                sleep 1 &&
                rm services.txt &&  sudo sed -i "s/'//g" results.txt && sudo sed -i '/Push\|Object/!d' results.txt &&
                echo "deleting keywords Push,OBEX,name,Object from results.txt file" &&
		echo ""
                cat results.txt &&
                sleep 3
                sudo sed -i "s/\(Object\|Push\|OBEX\|name\)//g" results.txt
                echo ""
echo "deleting all content before port keyword in results.txt file"
sudo sed -i 's/.*\(port:.*\)/\1/' results.txt
echo ""
        cat results.txt
        echo ""
        echo "deleting } character of every line in results.txt file" &&
                sudo sed -i 's/}//g' results.txt
echo ""
echo showing final required values for attack...
                echo ""
                cat results.txt &&
                sleep 1 &&
                echo ""
                echo "extracting ports and hosts data and redirecting to new files (ports.txt/hosts.txt)" &&
                sudo awk '/port:/ {print $2}' results.txt >> ports.txt
                sudo awk '/port:/ {print $4}' results.txt >> hosts.txt
echo ""
        echo "Showing target values..."
        cat ports.txt &&
        echo "" 
                                cat hosts.txt
echo ""
