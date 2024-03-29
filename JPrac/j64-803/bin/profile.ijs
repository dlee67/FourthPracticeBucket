NB. J profile
NB. JFE sets BINPATH_z_ and ARGV_z_
NB. add your sentences in startup.ijs

systype=. 9!:12''
jpathsep_z_=: '/'&(('\' I.@:= ])}) NB. convert to / separator
BINPATH_z_=: jpathsep BINPATH_z_

NB. create SystemFolders
bin=. BINPATH
install=. (bin i: '/'){.bin
fhs=. (FHS"_)^:(0=4!:0<'FHS') (0)
install=. (0&~:fhs){::install;'/usr/share/j/8.0.3'
install=. (INSTALLROOT"_)^:(0=4!:0<'INSTALLROOT') install
addons=. install,'/addons'
system=. install,'/system'
tools=. install,'/tools'
home=. >(systype-5){(2!:5'HOME');2!:5'USERPROFILE'
home=. >(0-:home){home;,'/'
isroot=. ('root'-:2!:5'USER') +. (<home) e. '/var/root';'/root';'';,'/'
userx=. '/j',('64-'#~16={:$3!:3[2),'803-user'
user=. home,userx
user=. >isroot{user;install,'/user'
home=. >isroot{home;install
break=. user,'/break'
config=. user,'/config'
snap=. user,'/snap'
temp=. user,'/temp'
temp=. >isroot{temp;(*#1!:0'/tmp'){::temp;'/tmp'
ids=. ;:'addons bin break config home install snap system tools temp user'

0!:0 :: ] <(({.~ i:&'/') jpathsep >{.4!:3''),'/profilex.ijs' NB. override
0!:0 :: ] ^:(0=#1!:0 (({.~ i:&'/') jpathsep >{.4!:3''),'/startup_android.ijs') <home,>(systype-5){'/.jprofile.ijs';'/_jprofile.ijs' NB. override per user except for standalone script

SystemFolders_j_=: ids,.jpathsep@".&.>ids

md=. 3 : 0 NB. recursive makedir
a=. jpathsep y,'/'
if. ('root'-:2!:5'USER') +. ('//'-:2{.a)+.('/root/'-:6{.a)+.('/var/root/'-:10{.a)+.('/usr/'-:5{.a)+.('/tmp'-:a) do. return. end. NB. installed under / /root /usr
if. -.#1!:0 }:a do.
  for_n. I. a='/' do. 1!:5 :: [ <n{.a end.
end.
)

NB. try to ensure user folders exist
md user,'/projects'
md break
md config
md snap
md temp

NB. boot up J and load startup.ijs if it exists
0!:0 <jpathsep (4!:55 (;:'systype fhs isroot userx ids md'), ids)]system,'/util/boot.ijs'
