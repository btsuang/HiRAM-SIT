ACCOUNT=Benjei.Tsuang@117.103.105.59
#ACCOUNT=Benjei.Tsuang@gaea
DIR="Aquaplanet/dpmcube-merlis-sit/src-prodrun"
if [ 1 -eq 0 ]; then
  rsync -truv  --delete --exclude=*.o* --exclude=*.bak --exclude=*log --exclude=*err --exclude=*out --exclude=*jpg* --exclude=*png* --exclude=tcrg* --exclude=*.nc --exclude=.git* ${ACCOUNT}:/home/bjt/codes/CWB_GFS/gfs_test/gfso3phys/v${VER} ..
else
  rsync -truv  --exclude=*.o* --exclude=*.bak --exclude=*log --exclude=*err --exclude=*out --exclude=*jpg* --exclude=*png* --exclude=tcrg* --exclude=*.nc --exclude=.git* --exclude=exec* . ${ACCOUNT}:~/codes/${DIR} 
fi

