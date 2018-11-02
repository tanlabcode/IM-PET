# July 2013 by BH
# Compute linkage scores using Weka

#system("export CLASSPATH=$ARGV[0]/weka-3-6-9/weka.jar");

print "run Random Forest Classifier\n";
system("java weka.classifiers.trees.RandomForest -l $ARGV[0]/RF_5/Trained.model -T test3.arff -p 0 > out3.txt");
