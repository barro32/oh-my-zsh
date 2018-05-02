# BFS Product
alias oubuildall='(cd /home/daniel.barrington/dev/bfs/ou/ou-config/BritishFriendly; ant -f Build.xml -Dwebdav.host=172.31.90.48 -Dwebdav.port=8080 -Dou.home=/home/daniel.barrington/dev/bfs/ou/system)'
alias oubuild='(cd /home/daniel.barrington/dev/bfs/ou/ou-config/BritishFriendly/Base && ant -f Build.xml  -Dwebdav.host=172.31.90.48 -Dwebdav.port=8080 -Dou.home=/home/daniel.barrington/dev/bfs/ou/system)'
alias ouworkflow='(cd /home/daniel.barrington/dev/bfs/ou/ou-config/BritishFriendly; ant -f Build.xml -Dou.home=/home/daniel.barrington/dev/bfs/ou/system -Dworkflows.force-unload=true)'
alias oudeploy='(cd /home/daniel.barrington/dev/bfs/ou/ou-config/BritishFriendly; ant -f Build.xml -Dou.home=/home/daniel.barrington/dev/bfs/ou/system -Dwebdav.host=52.210.69.137 -Dwebdav.port=80)'
alias build='ant -f Build.xml -Dwebdav.host=172.31.90.48 -Dwebdav.port=8080 -Dou.home=/home/daniel.barrington/dev/bfs/ou/system'
# OU
alias oustart='cd /home/daniel.barrington/dev/bfs/ou/system; ant -f Build.xml -DDdbusername=root -Ddbpassword=Pa55w0rd -Dmysql.root.password=Pa55w0rd -Ddbhost=127.0.0.1 -DJBOSS_OPTS="-b 172.31.90.48" start'
alias oustop='ant -f Build.xml stop'
alias ousetup='cd /home/daniel.barrington/dev/bfs/ou/system; ant -f Build.xml -Ddbusername=root -Ddbpassword=Pa55w0rd -Dmysql.root.password=Pa55w0rd -Ddbhost=127.0.0.1 -DJBOSS_OPTS="-b 172.31.90.48" stop teardown setup'
alias outeardown='cd /home/daniel.barrington/dev/bfs/ou/system; ant -f Build.xml -Ddbusername=root -Ddbpassword=Pa55w0rd -Dmysql.root.password=Pa55w0rd -Ddbhost=127.0.0.1 teardown'
