### from https://www.railstutorial.org/book/beginning#cha-beginning
### Don't be an idiot. Whatever is marked <something> should be replaced by YOUR data.

### If you are doing this in your machine start here

<code>
rvm install 2.3.0
rvm use 2.3.0
rvm gemset create rails5001
rvm 2.3.0@rails5001 --default
gem install rails -v 5.0.0.1
cd ~/workspace/
</code>

### If you are doing this from cloud9 start here

<code>
git config --global user.name "<Your Name>"
git config --global user.email "<your.email@example.com>"
cat ~/.ssh/id_rsa.pub
</code>

### Add the key to your github profile https://github.com/settings/keys

<code>
git clone git@github.com:gnumoreno/penelope.git
cd penelope/
bundle install *If you get an error to install "pg" run this first:* sudo apt-get install libpq-dev
rake db:migrate
rake db:seed
rails server
</code>

### Branch, Edit, Commit, Merge, Push

<code>
git checkout -b <whatever-Im-working>
git branch
</code>

## Work on your freaking code.

### Commit

<code>
git status
git commit -a -m "<Whatever-I-did-with-my-code>"
</code>

### This is going to push all the code to the remote repository. Be CAREFUL
<code>
git push
</code>

### Merge to master branch and delete branch after merging.
<code>
git checkout master
git merge <whatever-Im-working>
git branch -d <whatever-Im-working>
</code>


### ================= Do not use - only for Moreno =================
<code>
heroku version
heroku login
heroku keys:add
heroku create
git push heroku master
</code>


[Moreno dev app](https://penelope-gnumoreno.c9users.io/)
[Moreno test app](https://lit-garden-89375.herokuapp.com/)

