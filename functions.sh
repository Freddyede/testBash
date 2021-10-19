function chooseFinality() {
    gitlab="[1] Gitlab";
    github="[2] Github";
    echo "choose :
    $gitlab
    $github"
    # shellcheck disable=SC2162
    read response;
   echo "Choose name of readme : ";
   # shellcheck disable=SC2162
   read responseReadme;
   if [ "$response" == "1" ]
    then
     readme "$responseReadme";
   else
    readme "$responseReadme";
   fi
}
function readme() {
    echo "# testBash" >> "$responseReadme.md";
    init;
}

function init() {
    git init;
    gitAdd;
}

function gitAdd() {
    git add .;
    gitCommit;
}

function gitCommit() {
  echo "Choose commit :";
  # shellcheck disable=SC2162
  read commit;
  git commit -m "$commit";
  gitBranch;
}
function gitBranch() {
    git branch -M main;
    gitRepo;
}

function gitRepo() {
    git remote add origin https://github.com/Freddyede/testBash.git;
    gitPush;
}

function gitPush() {
    git push -u origin main;
}
