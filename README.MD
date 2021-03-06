# Image converter script (.jpg to .png)

## Requirements:

Ubuntu/Debian:

```
sudo dpkg --install imagemagick
```
or

```
sudo apt-get install imagemagick
```

CentOS:
```
sudo yum install ImageMagick -y
```

## How to use the script:

Simply open the terminal where the script is located and run the following command:
- You need to put the directory path as a parameter, e.g.: /home/user/Image-Directory
- All images inside of the directory will be converted to png and saved in a /png directory.

```
bash jpg-png.sh <directory-path>
```

- if you want you can give execution permission to run the command without bash:

```
chmod +x jpg-png.sh
```
- After that, you can run the command like this:

```
./jpg-png.sh <directory-path>
```
