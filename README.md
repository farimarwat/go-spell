# go-spell
GoLang port of hunspell spell check library
Hunspell library is widely used library by:
- Chrome
- Mozilla
- LibreOffice
- MS Office

So here is golang variant.

### Usage

#### Step 1 (Clone the repo)
```
git clone "https://github.com/farimarwat/go-spell.git"
```

#### Step 2 (Build Docker Image)
**Note: Docker must be installed**
Navigate to go-spell folder
```
docker build -t hunspell .
```
**Note: (.)dot is the part of the command. Here dot means current directory**

#### Step 3 (Run Docker):
```
docker run -it hunspell
```
**Note:The above command will run docker and keep working directory to "/app" which contains go files**

#### Final Step (Run test command to test)
```
go test -v
```
