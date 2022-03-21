# Unzip your android update and paste your payload.bin in the termux_dumper folder

## Termux install

- pkg install git -y
- termux-setup-storage 
- cd /sdcard/Download/
- git clone https://github.com/g0dm0de1337/termux_dumper.git
- cd termux_dumper
- chmod +x *
- ls

## go to your Filemanager & unzip YourSystemUpdate.zip
## copy your payload.bin in the termux_dumper folder


> back to Termux

- sh ipython.sh 
- sh pextract.sh
> ...wait for done
- cd output 
- ls (<-- See all .img files, from payload.bin)


# Manual Install Python 
- pkg up && apt install python -y
- apt install python3 -y
- pip install --upgrade pip
- pip install protobuf
- python --version
- pkg install git -y
- termux-setup-storage
> Alle
- cd /sdcard/Download/
- git clone https://github.com/g0dm0de1337/termux_dumper.git
- chmod +x *
> Filemanager && unzip YourSystemUpdate.zip && Copy&Paste payload.bin in the folder "termux_dumper" !!
- ls
- sh pextract.sh
> (sh payload_dumper.py)
# all img. Files from your payload.bin was in termux_dumper/output




# old Tutorial /// NOT FROM ME !!
go with a file manager to /termux_dumper/output/boot.img

finish !!!!!!

# payload dumper
Script tested on Yandex Amber OTA's (full and incremental) under Linux(but may works on Windows too)

## System requirement

- Python3, pip
- google protobuf for python `pip install protobuf`

### Docker

Alternatively you can use Docker:
```
docker run --rm -v "${PWD}":/data -it vm03/payload_dumper /data/payload.bin --out /data
```
or self build Docker image 
```
# build the container image
$ docker build -t payload_dumper .

# mount current PWD and pass payload.bin
$ docker run --rm -v "${PWD}":/data -it payload_dumper /data/payload.bin --out /data

```

## Guide

- Make you sure you have Python 3.6 installed.
- Download payload_dumper.py and update_metadata_pb2.py
- Extract your OTA zip and place payload.bin in the same folder as these files.
- Open PowerShell, Command Prompt, or Terminal depending on your OS.
- Enter the following command: python -m pip install protobuf

### Full OTA

- When that’s finished, enter this command: python payload_dumper.py payload.bin
- This will start to extract the images within the payload.bin file to the output folder you are in.

### Incremental OTA

- Copy original images (from full OTA or dumped from devices) to old folder (with part name + .img, ex: boot.img, system.img)
- run python payload_dumper.py --diff payload.bin
- file extracted to the output folder you are in.
