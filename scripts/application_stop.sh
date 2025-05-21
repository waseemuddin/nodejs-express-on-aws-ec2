# #!/bin/bash
# #Stopping existing node servers
# echo "Stopping any existing node servers"
# sudo pkill -f node


#!/bin/bash
echo "Stopping any existing node servers"

# Try graceful shutdown first
if pgrep -f node >/dev/null; then
  sudo pkill -f node
  sleep 5
fi

# Force kill if still running
if pgrep -f node >/dev/null; then
  sudo pkill -9 -f node
fi