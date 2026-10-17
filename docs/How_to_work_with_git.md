# Setup 
To get the repository initially on the machine you have to **clone** it:
```bash
git clone https://github.com/Svenum/CodeBrew
```

# Working
The `main` branch is protected against direct changes. This helps to mitigate "It's just a small fix"-force-pushes.
It makes the development a bit more complicated, but increases the stability of the code and everyone gets informed about every change.
So to make some changes you have to create a new branch:
```bash
git pull
git checkout -b <BRANCH_NAME>
```

Now you are locally on a new git branch.
To add new changes to this branch you have to stage and commit them:
```bash
git add <FILE_OR_DIRECTORY_TO_STAGE>
git commit -m <COMMIT_MESSAGE>
```

As the branch does not exist remotely you have to create it while pushing:
```bash
git push -u origin <BRANCH_NAME>
```

After that you can create a **Pull Request** (PR) in GitHub via the UI.

On this PR you have to request for reviews of your changes. Only if one or more have approved your PR you can merge it into the protected `main` branch.

## Cleaning up
After your PR is successfully merged you have to go back to starting point:
```bash
# Back to the main branch
git switch main

# Updating main branch
git pull

# Delete the old feature branch
git branch -d <BRANCH_NAME>
```

