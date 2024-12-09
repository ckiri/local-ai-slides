#/bin/sh
# 
# Generate a qr-code containing a url to the local openweb-ui instance

POSTFIX=":8080"
PREFIX="http://"

# There must be a cleaner way then this getting the ip-address
read ip_addr _ <<< $(ip addr show $1 \
                            | grep -oE 'inet [0-9.]+' \
                            | grep -v '^inet 127\.' \
                            | cut -d ' ' -f 2 \
                            | cut -d '/' -f 1)

qrencode -s 12 -o ./assets/qrcode.png "${PREFIX}${ip_addr}${POSTFIX}"
