conda create -n probc python=3.6
conda activate probc
conda remove -n probc --all

pip install numpy scipy==1.2 networkx munkres sklearn

# marker file: train.marklist
# domain file: train.domainlist

# modify print statement
#estParams.py   # "import cPickle as cpickle" -> "import _pickle as cPickle"
#HistoneUtilities.py
#HistEvalUtilities.py
#myutilities.py

#sed -i 's/xrange/range/g' *.py
#has_key()..........
# so much to modify
