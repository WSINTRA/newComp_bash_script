# newComp bash script. 

Bash script for creating react components.  
```
./newComp component_name component_type
```
Component type can be class or func. 
example```./newComp login class```.   


Will produce a new file called login.js with basic code for React class component.   


To add into your workflow; edit your .bashrc file in your ~/home dir and use the following. 
```
alias newComp="/DIRECTORY_OF_BASH_FILE/newComp.sh"
```
Then run ```$source ~/.bashrc```
To reload the bash profile and you can use the script anywhere with

```$newComp someFunction func``` 
or 
```$newComp someClass class```
