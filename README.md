# PiBOX

## Installation von PiPOX vie github.com

1. Anmelden an PiBOX

    ssh pi@pibox

2. Benutzer anlegen

    sudo adduser pibox

3. Persönlichen SSH-Public-Key kopieren

    ssh-copy-id -i ~/.ssh/id_rsa.pub pibox@pibox

4. Projekt klonen

    git clone https://github.com/xd23fe39/pibox.git

1. Verzeichnis einrichten

    mkdir pibox
    chown pibox:pibox pibox
