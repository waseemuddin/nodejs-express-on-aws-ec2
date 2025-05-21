# #!/bin/bash
# #Stopping existing node servers
# echo "Stopping any existing node servers"
# sudo pkill -f node


#!/bin/bash
echo "Stopping any existing node servers"
sudo pkill -f node || echo "No node process found or permission denied"
