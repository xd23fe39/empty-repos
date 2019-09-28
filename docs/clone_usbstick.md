# USB Memory Stick klonen

## Voraussetzungen

Alle Anwendungen sind beendet und der Raspberry PI heruntergefahren

  ssh pi@pibox
  
  shutdown -h now

## Informationen über Quellmedium holen

  # Weitere Infos anlisten
  lsblk -l --output="NAME,SIZE,PHY-SEC,TYPE,LABEL" /dev/sdh 
  
  # Start-Sektor und Blockgröße ermitteln und lesbar wegsichern
  sudo fdisk /dev/sdh -lu > ~/pibox_diskinfo.txt
  
## Erstellen eines Images 

Ein Image des USB Memorysticks soll auf einer Festplatte abgelegt und von dort aus auf einen anderen USB-Stick übertragen werden.
  
  # Empfohlen: gesamtes Speichermedium incl. Bootloader und MBR
  dd if=/dev/sdh of=~/pibox_complete.img
  
  # Optional: nur die Partition
  dd if=/dev/sdh1 of=~/pibox_partition.img
  
Optional kann der Bootloader gesichert werden:

  # Gerätename herausfinden
  df -h 
  
  # Sicherung des Bootloaders
  sudo dd if=/dev/sda of=mbr+grub_sicherung bs=512 count=63 
  
Falls die Zielpartition größer ist, kann ein resize ausgeführt werden:

  sudo resize2fs /dev/sdh1 

Anschließend wird das Image wieder auf einen anderen Stick übertragen:

  dd if=/home/me/image.img of=/dev/target && sync
  
  


