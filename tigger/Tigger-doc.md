## Subset 0

Following is the ideology of first subset
1. Extensible. Always try to make things easy if I need add additional functionality
2. Follow GIT's ideology
    - layer (in this one, we don't have server, so only one layer)
        - Current working directory
        - Layer : (DataStore: Stores all next commit changes)
        - Local Git database 
        - Layer : Between local git database and remote
        - Remote Git database
    - Snapshot. Commit as taking a snapshot of current working directory.
    - Head: Git's commit history can be viewed as a general tree structure, underlying it is the linked list
        - Linked list is too complicate, we use a file to represent these hierarchical structure.
        - Using directory to represent the branch
3. Helper libraries. `
    - Learn how to create helper function, and store them in a directory.
    - It need well written documentation and good encupsulation.
    - Try to write generic helper functions.
4. Error handling. Need to be done at first. Match with program they supplied



#### tigger-helper
- headBranch
    - Return directory to head branch
- commitId
    - return current commit Id
- commitIdIncrement
    - increment current commit 
- getCommitStatus
    - Git commit status for header branch's dataStore
- modifyCommitToTrue and modifyCommitToFalse'
    - Mofidy commit status for header branch's dataStore



#### tigger-init (Complete )
- If argument != 1, error => exit 1
- If .tigger exist, error => exit 1
- Create .tigger
    - Create master branch
        - Create local dataStor [index]
            - Create commit status, to indicate whether it should commit
        - Create branch local log
    - Create global commitLog
    - Create global commitId 
    - Create global head

#### tigger-add  (Complete )
- If argument == 0, error => exit 1
- If one of the suuplied file do not exist, error => exit 1
- Go through all the files
    - If file also exist in dataStore, 
        - If there is no modification, fail this file silently. Do not modify commit status.
        - Remove it from head dataStore.
    - add to dataStore and modify commit status



#### tigger-commit (Complete )
- If argument > 3 or < 2, error => exit 1
- If argument don't have flag correctly, error => exit 1
- If no changes being made since last commit, error => exit 1
    - This step also require checking with the last commited directory #######
- Commit files
    - Create directory in branch, using the commitId. Store commit message.
    - With -a flag, 
        - additional update step
    - Without -a flag, normal commit
- Store commit info, in global Log, and in local branch log. 
- Increment commit Id

#### tigger-log (Complete )
- If argument != 0, error => exit 1
- Cat global log file

#### tigger-show (Complete )
- If argument == 0 or >1, error => exit 1
- If there is a commit Id
    - Branch not found, error => exit 1
    - Go to the commit branch
        - If file is not found, error => exit 1
        - Cat file
- If no commit id, go to head branch
    - If file is not found, error => exit 1
    - Cat file

#### tigger-remove (Review)
- If argument not match with format, error => exit 1
    - A property is that you can have same flag for multiple time. The rest except first should ignore. 

General Possibility
- File not added
    - For all situation, it gives
        - tigger-rm: error: 'c' is not in the tigger repository
- File added, not staged, 
    - not changed (compare with stage and current)
        - No Flag
            - tigger-rm: error: 'c' has staged changes in the index
        - cached
            - Only remove from tigger
            - Remove sussfully
        - force
            - Remove sussfully
        - force and cached
            Only remove from tigger
            - Remove sussfully
    - changed (compare with stage and current)
        - No Flag
            - tigger-rm: error: 'c' in index is different to both the working file and the repository
        - cached
            - tigger-rm: error: 'c' in index is different to both the working file and the repositoryy
        - force
            - Remove sussfully
        - force and cached
            - Only remove from tigger
            - Remove sussfully
- File staged
    - Not changed
        - No Flag
            - Remove both successfully
    - changed (compare with stage and current)
        - No Flag
            - tigger-rm: error: 'c' in the repository is different to the working file
        - cached
            - Only remove from tigger
            - Remove sussfully
        - force
            - Remove sussfully
        - force and cached
            Only remove from tigger
            - Remove sussfully


#### tigger-status (Review)
1. No error check. Behavior is the same regarless of the program
2. Need to inspect file both in current directory and index directory
    - In alphabetical order
    - Possibile status
        - Only in current
            - untracked
        - Only in index directory
            - file deleted
        - In both directory
            - Not staged
                - Modified afterward
                    - file changed, changes not staged for commit
                - No modified
                    - added to index
            - Is staged
                - Same compare with the one in newest repo (assume to be current branch)
                    - same as repo
                - Different compare with the one in newest repo
                    - file changed, changes staged for commit


#### Generl structure diagram

