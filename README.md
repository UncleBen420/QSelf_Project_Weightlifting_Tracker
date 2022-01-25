# QSelf_Project_Weightlifting_Tracker

The goal of this project is to extract, prepare and analyse data of a weightlifting session. The data will be in the form of a time data serie of accelorometer and heartrate. The data represent a session of weightlifting exercice such as Squat, bench press,... Like a normal training each movement is repeted a dozen of time. Between each set some random activity could be performed such as drinking water, walking, being sitted. 
A second objectif of the project is to find a model to predict which movement is made, we'll try some more mathematical options and other by machine learning. It will be interessing to see how the model can differencate between exercice and random activity.
Once the serie of exercice are extracted, we will extract information for each serie of exercice: number of repetion, calorie burned during the serie and heartrate during the serie.
This will allow us to create a review of the training session by knowing which exercices has been done, how many series by exercices, how many repetition by series, the total calories burned and the heartrate accross the training session.

## Data capture

To capture the data, we used 2 Polar OH1, one on the left foot (left side of the ankle), one on the left arm like a watch. the polars allow us to capture accelaration on 3 axis at 2 positions and the heart rate. We need 2 captor on the foot and the arm because if we see some exercice like pullups in a mecanical way, we see that if we have only one captor on the arm, there will not be much movement as we hang to a bar. Another exemple will be if you use a machine for the legs there is a strong probability that the movement of your arm will have no correlation with the exercie. It's for this raison that a captor on the foot is needed. Not that more features equals better performance but in this case it is mandatory.

For the sake of testing multiple model we have capture 3 types of data:

- training session simulation: a time serie of a test session of exercice, this time serie comport 3 series of exercices, 2 series of bench press and one of squat. each exercice as multiple repetition and are separeted by random activities.

- series of exercices: those time series are only a specific movement with multiple repetition. for exemple 5 times a squat movement.

- isolated movement: a time serie representing only one movement for exemple just one squat or just one bench press.

To begin our project we only capture basic exercice: Bench press, Squat, Over head press, Deadlift and Pullup.

## Data preparation

One thing in datascience that take time is to prepare the data to be proceced, one thing that have bosered us was the fact that the time stamp of the records of each captor dosen't match. for exemple the arm captor will have a record at 1 second and 100 centiems and the second captor will have a record at 1 second and 98 centiems. So to do a merge of the data we had to resample it at 0,1 second for each sample. this is ok since we do not need a lot of precision to analyse the data.

## FFT

To isolate the series of movement, we have try to use a fft. This method is purely mathematical and dosen't require machine learning. the idea was when we perform an exercice, we do a reapeted movement multiple time. This create a low frequency. if we take approximatelly 2 seconds to perform a movement, we can expect a frequency of 0.5 (the sample rate is note taked into account in this exemple). We have succeed to prove that we can find a pic at low frequency in a fft of an isolated exercice serie. After this we have done a rolling fft (a fft on a batch of data and the batch move forward by a padding) on the test serie of exercices. We have succeed to isolate the 3 series of exercices but a bit of each series is cropped.

## DTW (dynamic time warping)

With this method we have try to detect movement in the serie using DTW. For this experiment we have take a isolated movement present in the test serie. we have applied DTW with a rolling windows of the size of the isolated movement. Our result we quite mitiged on one hand we see a reduction of the norm of distances when a serie of movement is detected (even if it is not the same movement compared) but the computation time of DTW makes it not possible.

## CNN (convolutive neural network)

Our last try was too use a CNN to classify the type of movement being done. The advantage of using a nn is the fact that the model can learn on multiple différent movement unlike DTW. To do the training of our model we used the time series of exercice series. We have split them in windows. We have performed the training with a cross validation. At validation the reslut were quite good we have an accuracy of 1. Like FFT and DTW we performed the CNN with a rolling windows on the test series. The result were also good. We were able to succesfully identify each movement serie accuratelly. But our model at the time miss something. It need a random class to classify the random movements because in other way each random movement is faulsy classify as a exercice.

## Data extraction

With series of exercice extracted we can now count the number of repetition done in each. For this we preprocces the serie and look at the pics indicating a mouvement. We count the number of pics (a pics need to be in the 90% of the highest values). With this method we have successfully count the number of repetitions. We also have the number of calories been burned during the serie. To have an estimation we used MET (Metabolic Equivalent Task). To do the calcul we only need the weight of the person, the MET of the movement (class) and the duration of the serie.

## Conclusion

We have succeed in our main objectives, now to progress further we could simply record more data and implement a mobile version in the form of an application.