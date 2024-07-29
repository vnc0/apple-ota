# OTA unpack

Jonathan Levin's [Apple OTA unpacking tool](https://newosxbook.com/articles/OTA8.html), modified to run out of the box on linux hosts and decompress to temp directory rather than your root filesystem.

## Compile

```
pacman -S xz # ArchLinux, adjust to whatever provides liblzma for your distro
make # should work out of the box :)
```

## Run

```
Usage: ./ota [-v] [-l] [...] filename[s]
Where: -l: list files in update payload
Where: [...] is one of:
       -e file: extract file from update payload (use "*" for all files)
       -s string file: Look for occurences of string in file
       -S string file: Look for occurences of string, NULL terminated in file
       [-n] -d file1 file2: Point out differences between OTA file1 and file2
            -n to only diff names  
```

```
# list files contained in OTA
./ota -l payload.???

# extract entire OTA filesystem to /tmp/fs
./ota -e \* payload.???
```