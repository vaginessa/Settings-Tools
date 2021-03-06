# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=3000
SAVEHIST=3000

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git svn adb ant brew github gitignore gradle )

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
ulimit -S -n 1024
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#shell
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='zip -r'
alias -s unzip='unzip'
alias -s bz2='tar -xjvf'
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias ping="ping -c 10 -i 0.5" #ping 十次，每次间隔0.5秒
alias datedetail="date +%s && date +'%Y-%m-%d %H:%M:%S %W'"
alias wget="temp | xargs -I {} wget -P {}"
alias iconvgbk2utf8='iconv -f gbk -t utf8'
alias iconvutf82gbk='iconv -f utf8 -t gbk'
alias upper='upper() { echo $1 | tr a-z A-Z}; upper'
alias lower='lower() { echo $1 | tr A-Z a-z}; lower'

#mac
alias open='open -n'
alias his='history | grep '
alias temp='cd ~/temp/1 && pwd'
alias zixieproxyon="export http_proxy='http://dev-proxy.oa.com:8080';export https_proxy='http://dev-proxy.oa.com:8080'"
alias zixieproxyoff="export http_proxy='';export https_proxy=''"
alias zixiemavenhost="/bin/bash ~/zixie/github/Settings-Tools/as/setMavenHost.sh"
alias zixieWifion='networksetup -setairportpower en0 on'
alias zixieWifioff='networksetup -setairportpower en0 off'
alias zixiememsizelist="/bin/bash ~/zixie/github/Settings-Tools/tools/clear_myMac.sh"
alias zixienewtextfile="temp && date +'%Y%m%d_%H%M%S_temp.txt' | xargs -I {} touch ./{}"
alias zixiedelsdstore="find ./ -name ".DS_Store" -delete "
alias zixiekillsublime="ps -aux | grep -i 'sublime' | awk '{print $5}' | cut -d\"/\" -f3 | cut -d \".\" -f1 | xargs -I {} pkill {}"
alias zixiekillpreview="pkill Preview"
alias zixiepkillapp='zixiepkillapp(){ ps -aux | grep -i $1 | zixiepkillappsubcommand};zixiepkillapp'
alias zixiepkillapppre='zixiepkillapppre(){ ps -aux | grep -i $1}; zixiepkillapppre'
alias zixiepkillappsubcommand='awk "{print $5}" | cut -d"/" -f3 | cut -d "." -f1 | xargs -I {} pkill {}'


#mac shuang
alias shuangnewtextfile="zixienewtextfile && date +'%Y%m%d_%H%M%S_temp.txt' | xargs -I {} echo new file: `temp`/{}"
alias shuangscreenshots='zixieandroidadbscreenshots'
alias shuangapktoold='zixieandroidapktoold'

#zsh
alias zshback='cp ~/.zshrc ~/zixie/github/Settings-Tools/config/mac' 
alias zshrestore='cp ~/zixie/github/Settings-Tools/config/mac/.zshrc ~/ && source ~/.zshrc'
alias zsheditmac='open ~/zixie/github/Settings-Tools/config/mac/.zshrc'
alias configln='ln -s ~/zixie/github/Settings-Tools/config ~/zixie/config'
alias zixiegohome='temp && /bin/bash ~/zixie/home.sh'

#vi
alias zixieviback='cp ~/.vimrc ~/zixie/github/Settings-Tools/config'
alias zixievirestore='cp ~/zixie/github/Settings-Tools/config/.vimrc ~/'

#git
alias zixiegittencent='cp ~/zixie/github/Settings-Tools/config/.gitTencentConfig ~/.gitconfig'
alias zixiegitdefault='cp -r ~/zixie/github/Settings-Tools/config/.gitdefaultconfig ~/.gitconfig'
alias zixiegitcheck="/bin/bash ~/zixie/github/Settings-Tools/tools/check_github.sh"



#blog
alias zixieblogstart='cd ~/zixie/github/blog/ && echo jekyll server &&  jekyll server'
alias zixieblogroot='cd ~/zixie/github/blog/_posts && pwd'

#ide
alias eclipse='open -n /Applications/eclipse/Eclipse.app/'

#jar
alias zixiejargetpackageinfo='java -jar ~/lib/GetApkInfo.jar'
alias zixiejargetchannel='java -jar ~/lib/apkChannel.jar'
alias zixiejargetimginfo='java -jar ~/lib/getImgInfo.jar'
alias zixiejarcheckandroidv2='java -jar ~/lib/CheckAndroidV2Signature.jar'
alias zixiejarcheckandroidv2byapksig='java -jar ~/lib/CheckAndroidV2SignatureByAPKSig.jar'
alias zixiejartinyjpg='java -jar ~/lib/tinyjpg.jar'
alias zixiegifrezise='gifsicle --colors=64 --resize-fit-height=600 '
alias zixieshowphoto='java -jar ~/lib/managePhoto.jar --show '
alias zixiemanagephoto='java -jar ~/lib/managePhoto.jar --manage '

#android 
alias zixieandroidapktoold='java -jar -Duser.language=en -Duser.home=$ANDROID_HOME/build-tools/25.0.2 ~/lib/apktool.jar d -f '
alias zixieandroiddex2jar='date +'%Y%m%d_%H%M%S_dex2jar.jar' | xargs -I {} $DEX2JAR_HOME/d2j-dex2jar.sh -o ~/temp/1/{}'
alias zixieandroidjdgui='temp && java -jar ~/lib/jd-gui-1.4.0.jar'
alias zixiejavaClassVersion='zixiejavaClassVersion() { javap -verbose $1 | head}; zixiejavaClassVersion'
alias zixieandroidjar2dex='$ANDROID_HOME/build-tools/25.0.2/dx --dex --output=./zixiejar2dex.jar'

alias zixieandroidmakejar='zixieandroidmakejar() { jar cvf $1 ./* }; zixieandroidmakejar'
alias zixieandroidaaptd='$ANDROID_HOME/build-tools/26.0.1/aapt d badging'
alias zixieandroidremoteshare='java -jar ~/lib/asm.jar $ANDROID_HOME'
alias zixieandroidgradlelocalize='cp -r ./build.gradle ./build_back.gradle && cp -r ~/settings/as/zixie-build.gradle ./build.gradle && cp -r ~/settings/as/zixie-local.properties ./local.properties && cp -r ~/settings/as/zixie-gradle-wrapper.properties ./gradle/wrapper/gradle-wrapper.properties'
alias zixieandroidgradlelocalizeoa='cp -r ./build.gradle ./build_back.gradle && cp -r ~/settings/as/oa-build.gradle ./build.gradle && cp -r ~/settings/as/zixie-local.properties ./local.properties && cp -r ~/settings/as/oa-gradle-wrapper.properties ./gradle/wrapper/gradle-wrapper.properties'
alias zixieandroidgradlenormal='cp -r ./build.gradle ./build_back.gradle && cp -r ~/settings/as/normal-build.gradle ./build.gradle && rm ./local.properties && cp -r ~/settings/as/normal-gradle-wrapper.properties ./gradle/wrapper/gradle-wrapper.properties'
alias zixieandroidgradledebug='chmod +x ./gradlew && ./gradlew clean assembleDebug '


#android adb 
alias adbSingle='alias adb="adb"'
alias adbMutil='alias adb="adb devices | tail -n +2 | cut -sf 1 | xargs -I {} -p adb -s {}"'
alias zixieadbscreenshots='adb shell screencap -p /sdcard/screen.png && adb pull /sdcard/screen.png /tmp/ && adb shell rm /sdcard/screen.png && open file:/tmp/screen.png'
alias zixieadbdumpui='adb shell uiautomator dump /sdcard/UIdump.xml && adb pull /sdcard/UIdump.xml ~/temp/1/ && adb shell rm /sdcard/UIdump.xml && open ~/temp/1/UIdump.xml'
alias zixieadbstop＝'adb shell am force-stop'
alias zixieadbactivity='adb shell dumpsys activity'
alias zixieadbgetproduct='adb shell getprop | egrep "version.release|version.sdk|ro.product.brand|ro.product.model|ro.product.manufacturer|ro.sf.lcd_density|ro.product.cpu|ro.product.locale|ril.product_code" && adb shell wm size'
alias zixieadbinputspace='adb shell input keyevent 62'
alias zixieadbinputdel='adb shell input keyevent 67'
alias zixieadbinputleft='adb shell input keyevent 21'
alias zixieadbinputright='adb shell input keyevent 22'
alias zixieadbinputmenu='adb shell input keyevent 1'
alias zixieadbinputhome='adb shell input keyevent 2'
alias zixieadbinputback='adb shell input keyevent 3'
alias zixieadbinputtext='adb shell input text'
alias zixieadbgetimei='adb shell am start -a android.intent.action.DIAL -d "tel:" && adb shell input text " *#06#" && adb shell input text " *#06#"'
alias zixieadbsumpactivity='adb shell dumpsys activity > ~/temp/1/a.log && open ~/temp/1/a.log'

#android test
alias zixieclswechat='adb shell pm clear com.tencent.mm'
alias zixieinputwechatpwd='adb shell input text YOUXIyouxi'

#web
alias zixiewebroot='cd ~/zixie/web && pwd'
alias zixiezhuoyoutest='cd ~/zixie/web/zhuoyouzhushou/2 && pwd'
alias zixiezhuoyourelease='cd ~/zixie/web/zhuoyouzhushou/10 && pwd'
alias zixiemysqllcal='/Applications/MAMP/Library/bin/mysql -uroot -proot'

#svn
alias svnignore='svn propedit svn:ignore .'
alias svndel='svn --force del'

#shakeba
alias shakebaRoot='cd ~/zixie/github/shakeba_new && pwd'


#ysdk
alias ysdktrunk='cd ~/zixie/TMA/trunk/YSDK && pwd'
alias ysdkdemo='adb uninstall com.tencent.tmgp.yybtestsdk'
alias ysdkdemopak='echo com.tencent.tmgp.yybtestsdk'
alias ysdkbranches='cd ~/zixie/TMA/branches  && pwd'
alias clsysdkdemo='adb shell pm clear com.tencent.tmgp.yybtestsdk'
alias pfkey='echo "url:http://tool.chinaz.com/tools/urlencode.aspx \necho -n \"openid_openkey_offerid_pf_KEY\” | md5 -r"'

#myapp
alias myapp='cd ~/zixie/YYB  && pwd'
alias myappgradledebugmyapp='zixieandroidgradledebug -x lint -x lintVitalRelease'
alias myappgradledebuginstallmyapp='myappgradledebugmyapp uninstallDebug installDebug'
alias myappclear='adb shell pm clear com.tencent.android.qqdownloader && adb shell rm -fr /sdcard/Tencent/tassistant'
alias myappuninstall='adb uninstall com.tencent.android.qqdownloader && adb shell rm -fr /sdcard/Tencent/tassistant'

#jyp
alias jiangyou='cd ~/zixie/JYAPP  && pwd'
alias jiangyouclear='adb shell pm clear com.tencent.jygame'
alias jiangyouuninstall='adb uninstall com.tencent.jygame'
alias jiangyoutrunk='cd ~/zixie/JYAPP/trunk/android/app'
alias jiangyoubranches='cd ~/zixie/JYAPP/branches'
alias jiangyoudocument='cd ~/zixie/JYAPP/document/android'

#PATH

#通用

export PATH="/opt/local/bin:/usr/local/sbin":${PATH}
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:"
export PATH=$(brew --prefix curl)/bin:$PATH

#android
ANDROID_HOME=~/lib/android-sdk
export ANDROID_HOME

ANDROID_SDK=~/lib/android-sdk
export ANDROID_SDK

ANDROIDNDK_LINUX_R10C=~/lib/android-ndk-r10e
export ANDROIDNDK_LINUX_R10C

ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_TOOLS

ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_PLATFORM_TOOLS

ANDROID_NDK_HOME=${ANDROIDNDK_LINUX_R10C}
export ANDROID_NDK_HOME

ANDROID_NDK_CMD=${ANDROID_NDK_HOME}/ndk-build
export ANDROID_NDK_CMD

DEX2JAR_HOME=~/lib/dex2jar-2.0
export DEX2JAR_HOME

export PATH=$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_NDK_HOME:$ANDROID_NDK_CMD:$ANDROID_TOOLS:$DEX2JAR_HOME:${PATH}

#java
JDK6=`/usr/libexec/java_home -v 1.6`
JDK7=`/usr/libexec/java_home -v 1.7`
JDK8=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=${JDK8}
export JAVA_OPTS="-server -Xms1g -Xmx4g -XX:MaxPermSize=1g"

#gradle
export GRADLE_HOME=~/zixie/lib/gradle/
export GRADLE_USER_HOME=~/zixie/lib/gradle/
export PATH=${GRADLE_HOME}/bin:$PATH

#其余常量
export SVN_EDITOR=vim

#RDM
export MajorVersion=0
export MinorVersion=0
export FixVersion=0
export BuildNo=1
export SVN_REVISION=100
export oldSDKTag=Tag_YSDK_1.3.1.45_635
export isPatch=false
export isRelease=false
