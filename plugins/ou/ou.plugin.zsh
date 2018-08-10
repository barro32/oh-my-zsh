staffportal='/home/daniel.barrington/dev/bfs/staff-portal'
auth='/home/daniel.barrington/dev/bfs/auth'
bf='/home/daniel.barrington/dev/bfs/ou-config/BritishFriendly'
ou='/home/daniel.barrington/dev/ou'
host='172.17.0.1'
# host='127.0.0.1'
ouport='8080'
dbpass='Pa55w0rd'
dbhost='127.0.0.1'
dbuser='root'
helpers='/home/daniel.barrington/dev/bfs/helpers'


# BFS Product
alias bfstart='cd $staffportal; dcup; docker start auth'

alias bfbuild='(cd $bf; ant -f Build.xml -Dwebdav.host=$host -Dwebdav.port=$ouport -Dou.home=$ou)'
alias bfba='bfbuild'
alias bfbuildbase='(cd $bf/Base && ant -f Build.xml -Dwebdav.host=$host -Dwebdav.port=$ouport -Dou.home=$ou)'
alias bfb='bfbuildbase'
alias bfworkflow='(cd $bf; ant -f Build.xml -Dwebdav.host=$host -Dwebdav.port=$ouport -Dou.home=$ou -Dworkflows.force-unload=true)'
alias bfbuildthis='(ant -Dou.home=$ou -Dwebdav.host=$host -Dwebdav.port=$ouport)'

# OU
alias oustart='cd $ou; ant -f Build.xml -DDdbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" stop start;'
alias ousetupfull='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" -Dnodemo=yes stop teardown setup start'
alias ousetuponly='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" -Dnodemo=yes setup'
alias outeardownfull='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost teardown'
# mini
alias ousetup='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" -Dnodemo=yes -Dwebdav.host=$host mini-setup start'
alias outeardown='cd $ou; ant -f Build.xml -Ddbusername=$dbuser -Ddbpassword=$dbpass -Dmysql.$dbuser.password=$dbpass -Ddbhost=$dbhost -DJBOSS_OPTS="-b $host" -Dnodemo=yes -Dwebdav.host=$host mini-teardown'

alias policy='node $helpers/create-policy.js'

##
# ou open ip
# build product ip
# staffportal container
# auth container
