#
JOB=Alcohol
RDIR=$(pwd)
mkdir -p jobs/$JOB

# obtain structure file
str_save() {
python get_pubchem.py $JOB
#}

# copy files in setups directory
setup() {
while read -u 900 LINE; do
    mkdir -p jobs/$JOB/$LINE
    cp -f $RDIR/setups/* jobs/$JOB/$LINE 
    cp -f $RDIR/structures/$JOB/POSCAR-${LINE} jobs/$JOB/$LINE/POSCAR
done 900< $RDIR/train.txt
}

# script for running
run_script() {
echo "while read -u 901 LINE; do
    echo \$LINE > $RDIR/current
    cd $RDIR/jobs/$JOB/\$LINE
    ./run.sh
done 901< $RDIR/train.txt" > jobs.sh
chmod +x jobs.sh
}

# submit the job
# make-your-path

# ======== MAIN ======== #
str_save
setup
run_script
