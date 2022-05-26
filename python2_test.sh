conda create -n probc_python2 python=2.7
conda activate probc_python2

pip install numpy scipy networkx munkres==1.0.12 sklearn

time python estParams.py -m train.marklist -p train.domainlist -o tmp
time python findDomain.py -m test.marks -p tmp_domparams.txt -o tmp

## estParams.py
#initx = np.zeros((varcount,),dtype=np.float64) if initx == None else initx --->>>  
#initx = np.zeros((varcount,),dtype=np.float64) if initx.all() == None else initx

## findDomain.py
#compcount = 1 if parammodel == "param" else len(domparams.values()[0].values()[0].values()[0]) --->>> compcount = 1 if parammodel == "param" else len(domparams.values()[0].values()[0])

## HistoneUtilities.py
#paramvec[tpar] = list(itertools.chain(*[params[tpar][marker][wind] for marker in sortmarkers for wind in xrange(1,width+1)]))  --->>>  paramvec[tpar] = list(itertools.chain([params[tpar][marker][wind] for marker in sortmarkers for wind in xrange(1,width+1)]))

## can not find script for Hi-C interaction map generation
