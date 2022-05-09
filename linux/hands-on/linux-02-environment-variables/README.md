# Hands-on Linux-02 : Linux Environment Variables

Purpose of the this hands-on training is to teach the students how to use environment variables.

## Learning Outcomes

At the end of the this hands-on training, students will be able to;

- explain environment variables.

- understand Quoting with Variables.

## Outline

- Part 1 - Common Environment Variables & Accessing Variable

- Part 2 - Path Variable

- Part 3 - Quoting with Variables

- Part 4 - Sudo Command

## Part 1 - Common Environment/Shell Variables & Accessing Variable
​
- Variables can be classified into two main categories, `environment variables`, and `shell variables`. 

- `Shell variables` are valid in the current shell instance.

-  `Environment variables` are variables that are valid system-wide.


### Shell Variables

- A variable is pointer to the actual data. The shell enables us to create, assign, and delete variables.

- The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character (_) and beginning with a letter or underscore character.

- The following examples are valid variable names.

```bash
KEY=value
_VAR=5
clarus_way=test
```

> Note that there is no space on either side of the equals ( = ) sign. 

- The following examples are invalid.

```bash
3_KEY=value
-VAR=5
clarus-way=test
KEY_1?=value1
```

- The reason we cannot use other characters such as `?`, `*`, or `-` is that these characters have a special meaning for the shell.

### Environment Variables

- Environment variables allow you to customize how the system works and the behavior of the applications on the system.

- We can see a list of all of our environmental variables by using the env or printenv commands.

```bash
printenv
env
```

#### Difference between "env" and "printenv" commands. 

- The difference between the two commands is that with `printenv`, you can request the values of individual variables:

```bash
printenv HOME
echo $HOME
env HOME
```
​
- To get a list of all shell variables, environmental variables and shell functions, type the `set` command.

```bash
set
```

- Create an environment variable with `export` command.

```bash
export ENVVAR=value
env
```
​
- Remove the environment  or shell variable with unset command.
​
```bash
export ENVVAR=value
env | grep ENVVAR
unset ENVVAR
env | grep ENVVAR
```
​
## Part 2 - Path Variable
​
- PATH variable.
​
```bash
printenv PATH
cd /bin
ls ca*    # see the cat command.
```
​
- Add a path to PATH variable for running a script.
​
```bash
cd
mkdir test && cd test
nano test.sh
# copy and paste the code-echo "hello world"- in test.sh
chmod +x test.sh
./test.sh
cd    # change directory to ec2-user's home directory
./test.sh    # it doesnt work. 
./test/test.sh
printenv PATH
cd test
pwd
export PATH=$PATH:/home/ec2-user/test
printenv PATH
cd
test.sh
cd /
test.sh
```
​
- Using the environment variable in the script.
​
```bash
cd test
export CLARUS=env.var
WAY=shell.var
nano test1.sh
# copy and paste the code-echo "normally we should see env. variable $CLARUS but probably we can't see the shell variable $WAY "
chmod +x test1.sh
./test1.sh
```
​
## Part 3 - Quoting with Variables.
​
- Double Quotes.
​
```bash
MYVAR=my value
echo $MYVAR
MYVAR="my value"
echo $MYVAR
MYNAME=james
MYVAR="my name is $MYNAME"
echo $MYVAR
MYNAME="james"
MYVAR="hello $MYNAME"
echo $MYVAR
MYVAR="hello \$MYNAME"
echo $MYVAR
```
​
- Single Quotes.
​
```bash
echo '$SHELL'
echo 'My\$SHELL'
```
​
## Part 4 - Sudo Command.
​
- Sudo Command.
​
```bash
yum update
sudo yum update
cd /
mkdir testfile
sudo su
exit
sudo su -
```
## Part 5 Some notes about issue

VARIABLES
Variables can be classified into two main categories, environment variables, and shell variables.
​
How to Create a variable:
    1. Use only letters a-z, numbers 0-9 and underscore character(_)
    2. Do not leave any spaces between the variable name, equal sign and the value
    3. Do not name the variable starting with a number but underscore is okay
​
Note: Variables are- Case Sensitive
​
How to remove a variable:
    unset variablename
​
How to dispaly environmental variables:
    1.env 
    2.printenv 
    3.echo $VARIABLE # We need to place a $ before the variable name when using echo command
​
How to create an environmental variable
    By using export command
​
    export NEWVAR=abc >> Environmental variable created
    NEWVAR=abc >>>>>>>>> Shell variable created
​
How to create a script file
    By using chmod +x filename
    1. Create a file using touch command
        touch myscript.sh
    2.Edit the file by using Vi editor
        vi myscript.sh
    3. Enter commands that you would like to add and save the file
    4. Change the file to executable file
        chmod +x myscript.sh
    5.To run the script apply ./
        ./myscript.sh
    6. If you want to run the script directly without ./, then you need to copy it to one of the PATHs.
        sudo cp myscript.sh /usr/bin/  # You need to do it with sudo command
​
How to edit PATH variable
    1. export PATH=/games/awesome  #This will add to the PATH variable
    2. PATH=/games/awesome         #This will repalce the PATH variable. Do not use this method unless you want to completely change the PATH variable
​
Best practice: Always use export when creating environmental variables
​
How to add space between variable names:
    1. Normally we do not use space inside variable names
        VARIABLE_NAME NOT VARIABLE NAME
    2. If we want to have a space between variable name
        1.Use single quotes # Ignores all special characters and accepts them as a regular character
        2.Use double quotes # Keeping $ as a special character, ignores other special characters
        3.Use \
        

NOTE MYSELF:
    1. printenv HOME = echo $HOME
    2. env HOME is not run. Because env demonstrate all env variables.
    3. cd ---> (direct me to) HOME
    4. ~ means HOME
    5. cd /  ---> root
    6. export ---> env variable creats
    7. set ---> env variables, shell variables and linux functions is demonstrated.
    8. unset ---> it deletes environmnet and shell variables. 
    9. enviroment degisken sadece export komutuyla yapilir.
    enviroment degiskeni gormek icin :
        printenv
        echo $
        set | grep
    shel degiskeni gormek icin:
        set | grep
        echo $
        
    10. env ---> toplu gösterir, tekli sorgusu yok.
    11. How to write a script in Linux:
         [ec2-user@ip-172-31-23-167 test]$ vi tets.sh
          ec2-user@ip-172-31-23-167 test]$ cat test.sh
          cat: test.sh: No such file or directory
          [ec2-user@ip-172-31-23-167 test]$ ls
          tets.sh
          [ec2-user@ip-172-31-23-167 test]$ cat tets.sh 
          echo "Welcome to lesson!"
          [ec2-user@ip-172-31-23-167 test]$ 
          chmod +x test.sh (artik script dosyasi oldu)
          ./tets.sh 
          .bashrc (tum env gecerli olmasini saglar, env variable icine kaydedilmeli)
          printenv PATH
          whereis ls(user local bini tariyor)
          PATH=abc (yolu bozuyoruz, path le ulasilan doyalar veicindeki komutlar calismiyor)
          sudo cp tets.sh /usr/bin (artik komut dosyasina eklendi)
          tets.sh (artik clisir, yol belirtmeye gerek kalmadi)
          export PATH=$PATH:/home/ec2-user/test


    12. VIM editorde i insert mod, o insert mod ve direk alt satira gecer.
    13. " ", ' ', \ lullanimi:
        " " --> boslugu kabul eder, $ gibi özle karakterleri kendi anlamiyla kabul eder.
        ' ' ---> herseyi icinde normal kabul eder.
        \  ---> özel anlami görmezden gel



