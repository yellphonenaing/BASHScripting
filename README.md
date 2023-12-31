# Bourne Again Shell (BASH)
**BASH Scripting Basic To Advanced**

![BASH](https://i.ibb.co/186tSdR/bash.jpg)

# 1.1 - What is programming?

![Programming](https://pbs.twimg.com/media/FIjzRYdVcAAUNYI.jpg)

**Types Of Programming Languages**

```
1. High-Level Programming Languages
2. Low-Level Programming Languages
```

**Compiled Languages**
```
1. Compilation
2. Linking
3. execution
```

**Interpreted Languages**
```
1. Reading
2. Parsing
3. Execution
```
![Languages](https://miro.medium.com/v2/resize:fit:991/1*3Iy-ohRRXj3lChmEbQTxIQ.png)

# 1.2 - Getting start with SHELL and BASH Scripting
> Bash is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.

**Types Of Shells**

```
1. BASH
2. ZSH
3. TSH
4. CSH
5. KSH
6. Fish
```

![BASH](https://www.guru99.com/images/2/ShellScripting-v1.png)

# 1.3 - Text Formating And Syntax
# Linux Command syntax
| Character | Action |
|--|--|
| ; | And |
| && | And |
| \|\| | Or |
| \| | Share Output To Second Command |
| () | Use () to create command pharse|

>Command Syntax

```
ls -lah /tmp

ls = command to be executed
-lah = Options
/tmp = Argument
```


```
#!/usr/bin/bash
#Use echo to print texts
echo "Hello World"
```
| Character | Action |
|--|--|
| -n | Do not print new line |
| -e | escape  interpretation of backslash escapes |
| \b | remove spaces |
| \n | new line |
| \f | form feed|
| \t | Horizontal |
| \v | Vertical |

# Color Patterns

```
#!/usr/bin/bash
#Use -e option to add colours to text
echo -e "\e[1;31mHello World\e[0m"
echo -e "\e[1;42mHello World\e[0m"
echo -e "\e[1;31;42mHello World\e[0m"
```

>Style Codes

|Code | Style |
|--|--|
| 0 | Normal |
| 1 | Bold |
| 2 | Faint |
| 3 | Italics |
| 4 | Underlined |
| 5 | Blink |

>Colour Codes

| Color | Text Color | Background Color |
|--|--|--|
| Red | 31m | 41m |
| Green | 32m | 42m |
| Yellow | 33m | 43m |
| Blue | 34m | 44m |
| Magenta | 35m | 45m |
| Cyan | 36m | 46m |
| Light Gray | 37m | 47m |
| Gray | 90m | 100m |
| Light Red | 91m | 101m |
| Light Green | 92m | 102m |
| Light Yellow | 93m | 103m |
| Light Blue | 94m | 104m |
| Light Magenta | 95m | 105m |
| Light Cyan | 96m | 106m |
| White | 97m | 107m |

# 1.4 - Variables

>Three Types Of Variables in **BASH**
```
1. System  Declared Variables
2. Programmer Declared Variables
3. Command Line Argument
```

**3.1 System Declared Variables**

| Variable | Value |
|--|--|
| $0 | Script File Name (or) Shell Name |
| $$ | Process ID Of Running BASH Script|
| $PWD | Current Directory |
| $OLDPWD | Old Directory |
| $FUNCNAME | Funcation Name |
| $BASH_VERSION | Version Of BASH |
| $HOSTNAME | Host Name |
| $OSTYPE | Type Of OS |
| $RANDOM | Random Number Between 0 and 32767 |


**3.2 Programmer Declared Variable**

```
#!/usr/bin/bash
#Declare name as Yell Phone Naing
name="Yell Phone Naing"
echo "My name is $name"
```

**3.3 Command Line Argument**

```
#!/usr/bin/bash

echo "My name is $1.I am $2 years old.I live in $3."
```

>Run script as bash script.sh YPN 20 Malun


>**Output :** My name is YPN.I am 20 years old.I live in Malun.

# 1.5 - Redirections

>Two Types Of Redirections
```
1. Truncate Redirection
2. Append Redirection
```

**4.1 Truncate Redirection**
>We can use > to perform Truncate Redireection

```
ls > fileslist.txt
```

**4.2 Append Redirection**
>We can use >> to perform Append Redireection

```
echo "Python" >>languages.txt
echo "PHP" >>languages.txt
echo "BASH" >>languages.txt
echo "Ruby" >>languages.txt
```

# 1.6 - User prompts
>User prompt is an input used to get data from user.

>Normal Prompt
```
#!/usr/bin/bash
echo "Enter your name :: "
read name
echo "Your name is $name"
```

>Prompt with paragraph
```
#!/usr/bin/bash
read -p "Enter your name : " name
echo "Your name is $name"
```


>Password Input
```
#!/usr/bin/bash
read -s -p "Enter your password : " password
echo -e "\nYour password is $password"
```

>Prompt with color
```
#!/usr/bin/bash
read -p $'\e[1;32mEnter your name : \e[0m'
echo "Your name is $name"
```

>Using stdin
```
#!/usr/bin/bash
cat /dev/stdin
```

# 1.7 - Conditional Statements
>The conditional statement is used in any programming language to do any decision-making tasks.

>if else statement
```
#!/usr/bin/bash
if [[ 1 == 1 ]];then
echo "Equal"
else
echo "Not Equal"
fi
```

>if elif else statement
```
#!/usr/bin/bash
if [[ 20 == 1 ]];then
echo "Equal"
elif [[ 20 = 20 ]];then
echo "20 = 20 is true"
else
echo "Not Equal"
fi
```

>if else shortcut
```
#!/usr/bin/bash
[[ "Yell Phone Naing" == "Yell Phone Naing" ]] && echo "True"
[[ "Yell Phone Naing" == "CyberBullet" ]] || echo "False"
```

>Case statement
```
#!/usr/bin/bash
echo "Where are you from ?
(1) Myanmar
(2) Thai
(3) China
(4) Indea"
read -p "Enter a keyword : " country
case $country in
1)
echo "You are from Myanmar";;
2)
echo "You are from Thai";;
3)
echo "You are from China";;
4)
echo "You are from Indea";;
*)
echo "Your country is not in list";;
esac
```

# 1.8 - Operators
>Many conditional operators can be used in conditional statements

**7.1 Conditional Operators**

| Operators | Description |
|--|--|
| == | Returns true if two strings are equivalent |
| != | Returns true if two strings are not equivalent |
| ! | Returns true if the expression is false |
| > | Returns true if first number is greater than second number |
| < | Returns true if first number is less than second number |
| -eq | Returns true if two numbers are equivalent |
| -gt | Returns true if first number is greater than second number |
| -lt | Returns true if first number is less than second number |
| -d | Check the existence of a directory |
| -e | Check the existence of a file |
| -r | Check the existence of a file and read permission |
| -w | Check the existence of a file and write permission |
| -x | Check the existence of a file and execute permission |

**7.2 Arithmetic Operators**
| Operators | Description |
|--|--|
| + | To add two operands |
| - | To subtract two operands |
| * | To multiply two operands |
| / | To divide two operands |
| % | To find remainder of two operands |
| ++ | To increase the value of operand by one |
| -- | To decrease the value of a operand by one |

# 1.9 - Math
>Using BASH Capabilities
```
#!/usr/bin/bash
x=10
y=7
echo $(( 1+2 ))
echo $(( 10-8 ))
echo $(( 10*7 ))
echo $(( 10/2 ))
echo $(( 10%3 ))
echo $(( x+y ))
```

>Using expr command
```
expr 1 + 4
expr 100 - 70
expr 10 \* 3
```

# 1.10 - Array
>Normal Array
```
#!/usr/bin/bash
Countries=(Myanmar Thai China Indonesia)
Actors=('Nay Htoo Naing' 'Nay Toe' 'Myint Myat' 'Kyaw Hein')
echo ${Countries[@]}
echo ${Countries[0]}
echo ${Actors[2]}
```

>Associative Array
```
#!/usr/bin/bash
declare -A Info
Info=([name]='Yell Phone Naing' [age]='18' [add]='Malun')
echo "I am ${Info[name]}.I am ${Info[age]} years old.I live in ${Info[add]}"
```

>Modify An Array
```
#!/usr/bin/bash
Array1=(Mm Th Indo USA IN)
declare –A Array2
Array2=([name]="Yell Phone Naing" [age]="18" [add]="Malun")
Array1[0]=Myanmar
Array2[name]="Cyber Bullet"
```

>Array length
```
#!/usr/bin/bash
Actors=('Nay Htoo Naing' 'Nay Toe' 'Myint Myat' 'Kyaw Hein')
echo ${#Actor[@]}
```

>Delete An Array
```
#!/usr/bin/bash
Array1=(Mm Th Indo USA IN)
declare –A Array2
Array2=([name]="Yell Phone Naing" [age]="18" [add]="Malun")
unset Array1[0]
unset Array1
unset Array2[name]
```

# 1.11 - Shell Expansions
>Three types of expensions
```
1. Brace Expansion
2. Variable Expansion
3. Command Substitution
```

**1.11.1 Brace Expansion**
```
#!/usr/bin/bash
echo {1..10}
#Output : 1 2 3 4 5 6 7 8 9 10
echo {a..z}
#Output : a b c d e f g h i j k l m n o p q r s t u v w x y z
touch lesson{1..10}.sh
#will create 10 files
echo r{1..5}p
#Output : r1p r2p r3p r4p r5p
echo "I like "{BASH,PHP,Python}" so much."
#Output : I like BASH so much.I like PHP so much.I like Python so much
```

**1.11.2 Variable Expansion**

```
#!/usr/bin/bash
Text=abcdefghij12345
echo ${Text}
#Output : abcdefghij12345
echo ${Text: 0}
#Output : abcdefghij12345
echo ${Text: 1}
#Output : bcdefghij12345
echo ${Text: 4}
#Output : efghij12345
echo ${Text:0:1}
#Output : a
echo ${Text: 3:2}
#Output : de
echo ${Text: -1}
#Output : 5
```

**1.11.3 Command Substitution**

```
#!/usr/bin/bash
echo $(pwd)
echo `whoami`
```

# 10. Array
>Normal Array
```
#!/usr/bin/bash
Countries=(Myanmar Thai China Indonesia)
Actors=('Nay Htoo Aning' 'Nay Toe' 'Myint Myat' 'Kyaw Hein')
echo ${Countries[@]}
echo ${Countries[0]}
echo ${Actors[2]}
```

>Associative Array
```
#!/usr/bin/bash
declare -A Info
Info=([name]='Yell Phone Naing' [age]='18' [add]='Malun')
echo "I am ${Info[name]}.I am ${Info[age]} years old.I live in ${Info[add]}"
```

>Modify An Array
```
#!/usr/bin/bash
Array1=(Mm Th Indo USA IN)
declare –A Array2
Array2=([name]="Yell Phone Naing" [age]="18" [add]="Malun")
Array1[0]=Myanmar
Array2[name]="Cyber Bullet"
```

>Array length
```
#!/usr/bin/bash
Actors=('Nay Htoo Aning' 'Nay Toe' 'Myint Myat' 'Kyaw Hein')
echo ${#Actor[@]}
```

>Delete An Array
```
#!/usr/bin/bash
Array1=(Mm Th Indo USA IN)
declare –A Array2
Array2=([name]="Yell Phone Naing" [age]="18" [add]="Malun")
unset Array1[0]
unset Array1
unset Array2[name]
```

# 1.12- Looping
>Three types of looping in BASH
```
1. For Loop
2. While Loop
3. Until Loop
```

**11.1 For loop examples**
>Looping with brace expension
```
#!/usr/bin/bash
for i in {1..10};do
echo "$i time"
done
```

>Looping (Three Expensions)
```
#!/usr/bin/bash
for (( c=1; c<=10; c++ ))
do 
   echo "Looping $c times"
done
```

>Listing Files
```
#!/usr/bin/bash
for files in ./*;do
echo $files
done
```

>Looping with auguments
```
#!/usr/bin/bash
for i in $@
do
    echo "Script Argument is $i"
done

```
>Run the script as : bash loop.sh BASH PHP Python Ruby

>Looping Over An Array
```
#!/usr/bin/bash
languages=(Python PHP BASH Ruby)
for lang in "${languages[@]}";
do
    echo "I love $lang so much."
done
```

>Infinity Loop
```
#!/usr/bin/bash
for (( ; ; ))
do
   echo "infinite loops ( hit CTRL+C to stop)"
done
```

**11.2 While Loop Examples**
>While Loop
```
#!/usr/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "Looping $x times"
  x=$(( $x + 1 ))
done
```

>Reading File Contents
```
#!/usr/bin/bash
while IFS= read -r lines;do
echo $lines
done <wl.txt
```

>Infinity Loop
```
#!/usr/bin/bash
while : ;do
        echo "infinite loops ( press CTRL+C to stop)"
done
```

**11.3 Until Loop**
```
#!/usr/bin/bash
c=0

until [ $c -gt 5 ]
do
  echo "Counter: $c"
  ((c++))
done
```

# 1.13- Functions
>Function
```
#!/usr/bin/bash
welcome () {
echo "Welcome to you"
}
welcome
```

>Nested Function
```
#!/usr/bin/bash
welcome () {
hi () {
echo "Hi,I am Yell Phone Naing"
}
hi
}
welcome
```

# 1.14- Verify Commands
```
#!/usr/bin/bash
commands=(php curl msfconsole nmap mysql mariadb exiftool dpkg ngrok nc ncat neofetch routersploit)
for cmd in ${commands[@]};do
command -v $cmd > /dev/null && echo -e "\e[1;32mCommand ($cmd)is installed\e[0m" || echo -e "\e[1;31mCommand ($cmd) is not installed.\e[0m"
done
```

# 1.15- Date and Time

| Command | Output |
|--|--|
| date | Print current date and time |
| date +"%d" | Print current day of the month |
| date +"%m" | Print current month of the year |
| date +"%h" | Print current month in name |
| date +"%y" | Print year |
| date +"%H" | Print current hour |
| date +"%M" | Print current minute|
| date +"%S" | Print current second |
| date +"%F" | Print full date |
| date +"%j" | Print day of the year |

# 1.16- Handling System Prompts
| Prompts | Values |
|--|--|
| \u | Username |
| \h | Host Name |
| \n | Break Line |
| \t | Current Time  (24H) |
| \T | Current Time (12H) |
| \\@ | Current Time (am/pm) |
| \A | Current Time (H:M) |
| \w | Current Directory |
| \v | BASH version |
| \d | Current Date |

# 1.17- Customizing PS1
```
PS1="Enter Command : "
PS1="\e[1;32m\u@\h\e[0m : "
```

>We can add this to ~/.bashrc

# 1.18- Trapping Terminations
```
#!/usr/bin/bash
bye(){
echo "Good bye"
}
trap bye 2
sleep 10
```

*BASH Scripting Course by* [**Yell Phone Naing**](https://www.facebook.com/yellphoen.naing/)
