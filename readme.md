## Tigger
A subset of version control system Git. 

The implementation is in Sheell. 

### Completed Functionality

##### tigger-init

The tigger-init command creates an empty Tigger repository.

tigger-init should create a directory named .tigger, which it will use to store the repository. It should produce an error message if this directory already exists. 

##### tigger-add filenames...

The tigger-add command adds the contents of one or more files to the "index".

##### tigger-commit
The tigger-commit command saves a copy of all files in the index to the repository. 

tigger-commit can have a -a option, which causes all files already in the index to have their contents from the current directory added to the index before the commit. 


##### tigger-log
The tigger-log command prints a line for every commit made to the repository: each line should contain the commit number and the commit message. 

##### tigger-log
The tigger-log command prints a line for every commit made to the repository: each line should contain the commit number and the commit message. 

##### tigger-rm [--force] [--cached] filenames..
tigger-rm removes a file from the index, or from the current directory and the index.

If the --cached option is specified, the file is removed only from the index, and not from the current directory.

tigger-rm, like git rm, should stop the user accidentally losing work, and should give an error message instead if the removal would cause the user to lose work. You will need to experiment with the reference implementation to discover these error messages. Researching git rm's behaviour may also help.

The --force option overrides this, and will carry out the removal even if the user will lose work. 

##### tigger-status
tigger-status shows the status of files in the current directory, the index, and the repository. 

##### tigger-branch
tigger-branch either creates a branch, deletes a branch, or lists current branch names. 

##### tigger-checkout branch-name
tigger-checkout switches branches. 
