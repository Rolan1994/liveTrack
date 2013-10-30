#!/bin/sh
### BEGIN INIT INFO
# Provides:          vsftpdg
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# X-Interactive:     true
# Short-Description: Start/stop vsftpdg server
### END INIT INFO
 
case $1 in
    start)
        echo "Starting vsftpdg ..."
        if [ ! -f /usr/local/vsftpdg/pid ]; then
            nohup java -jar /usr/local/vsftpdg/vsftpdg_server.jar /usr/local/vsftpdg 2>> /dev/null >> /dev/null &
            echo $! > /usr/local/vsftpdg/pid
            echo "Vsftpdg started ..."
        else
            echo "Vsftpdg is already running ..."
        fi
    ;;
    stop)
        if [ -f /usr/local/vsftpdg/pid ]; then
            PID=$(cat /usr/local/vsftpdg/pid);
            echo "Stopping vsftpdg ..."
            kill $PID;
            echo "Vsftpdg stopped ..."
            rm /usr/local/vsftpdg/pid
        else
            echo "Vsftpdg is not running ..."
        fi
    ;;
    restart)
        if [ -f /usr/local/vsftpdg/pid ]; then
            PID=$(cat /usr/local/vsftpdg/pid);
            echo "Stopping vsftpdg ...";
            kill $PID;
            echo "Vsftpdg stopped ...";
            rm /usr/local/vsftpdg/pid
 
            echo "Starting vsftpdg ..."
            nohup java -jar /usr/local/vsftpdg/vsftpdg_server.jar /usr/local/vsftpdg 2>> /dev/null >> /dev/null &
            echo $! > /usr/local/vsftpdg/pid
            echo "Vsftpdg started ..."
        else
            echo "Vsftpdg is not running ..."
        fi
    ;;
esac
