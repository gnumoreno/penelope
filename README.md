#from https://www.railstutorial.org/book/beginning#cha-beginning
# Don't be an idiot. Whatever is marked <something> should be replaced by YOUR data.

$ rvm install 2.3.0
$ rvm use 2.3.0
$ rvm gemset create rails5001
$ rvm 2.3.0@rails5001 --default
$ gem install rails -v 5.0.0.1
$ cd ~/workspace/

$ git config --global user.name "<Your Name>"
$ git config --global user.email <your.email@example.com>
$ cat ~/.ssh/id_rsa.pub

# Add the key to your github profile https://github.com/settings/keys

$ git clone git@github.com:gnumoreno/penelope.git
$ cd penelope/
$ bundle install #If you get an error to install "pg" run this first: $ sudo apt-get install libpq-dev
$ rake db:migrate
$ rake db:seed
$ rails server

Branch, Edit, Commit, Merge, Push

$ git remote add origin git@github.com:gnumoreno/penelope.git
$ git checkout -b <whatever-Im-working>
$ git branch

#Work on your freaking code.

#Commit

$ git status
$ git commit -a -m "<Whatever I did with my code>"
$ git checkout master
$ git merge <whatever-Im-working>

#delete branch after merging

$ git branch -d <whatever-Im-working>

# This is going to push all the code to the remote repository. Be CAREFUL

$ git push


================= Do not use - only for Moreno =================
heroku version
heroku login
heroku keys:add
heroku create
git push heroku master

Moreno dev app: https://penelope-gnumoreno.c9users.io/
Moreno test app: https://lit-garden-89375.herokuapp.com/

