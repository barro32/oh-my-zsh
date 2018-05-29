staffportal='/home/daniel.barrington/dev/bfs/staff-portal'
auth='/home/daniel.barrington/dev/bfs/auth'
bf='/home/daniel.barrington/dev/bfs/ou-config/BritishFriendly'
ou='/home/daniel.barrington/dev/ou'
host='172.31.90.48'
ouport='8080'
dbpass='Pa55w0rd'
dbhost='127.0.0.1'
dbuser='root'
helpers='/home/daniel.barrington/dev/bfs/helpers'


# BFS Product
alias bfstart='cd $auth; ./setup.sh start; cd $staffportal; dcup'
alias bfbuild='(cd $bf; ant -f Build.xml -Dwebdav.host=$host -Dwebdav.port=$ouport -Dou.home=$ou)'
alias bfb='bfbuild'
alias bfbuildbase='(cd $bf/Base && ant -f Build.xml -Dwebdav.host=$host -Dwebdav.port=$ouport -Dou.home=$ou)'
alias bfbb='bfbuildbase'
alias bfworkflow='(cd $bf; ant -f Build.xml -Dou.home=$ou -Dworkflows.force-unload=true)'
alias bfbuildthis='(ant -Dou.home=$ou -Dwebdav.host=$host -Dwebdav.port=$ouport)'

# OU
alias oustart='cd $ou; ant -f Build.xml -DDdbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" stop start;'
alias oustop='ant -f Build.xml stop'
alias ousetup='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" -Dnodemo=yes stop teardown setup start'
alias outeardown='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost teardown'

alias createpolicy='node $helpers/create-policy.js'
