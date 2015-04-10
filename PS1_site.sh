PS1_site=`hostname |sed "s/\./ /g" |awk '{print $2}'`
if [ `id -u` = 0 ]
then
PS1="[\u@\h.$PS1_site \w ]#"
else
PS1="[\u@\h.$PS1_site \w ]$"
fi
export PS1
