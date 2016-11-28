# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi



#this is for java start by michael tou
export JAVA_HOME=/usr/local/jdk
export JRE_HOME=/usr/local/jdk/jre
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
#this is for java end by michael tou

#this is for hadoop start
export PATH=$PATH:/usr/local/hadoop/bin:/usr/local/hadoop/sbin
#this is for hadoop end

export PS1='[\u]\$:'


#this is for scala start
export PATH=$PATH:/usr/local/scala/bin
#this is for scala end

#this is for spark start
export PATH=$PATH:/usr/local/spark/bin
export SPARK_HOME=/usr/local/spark
#this is for spark end


#this is for sbit start 
export SBIT_HOME=/usr/local/sbit
export PATH=$PATH:$SBIT_HOME/launchbin
#this is for sbit end


#this is for maven start

export MAVEN_HOME=/usr/local/maven
export MAVEN_BIN=/usr/local/maven/bin
export PATH=$MAVEN_BIN:$PATH


#this is for maven end

