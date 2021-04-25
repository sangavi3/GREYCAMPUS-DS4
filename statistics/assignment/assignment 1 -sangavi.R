
###1.What is the basic difference and similarity between a vector and a matrix?
   ##DIFFERENCES 
    #1.Vector is a basic data structure in R where as matrix is a two dimensional data structure.
    #2.Matrix is similar to vector but additionally contains the dimensional attributes
    #3.In matrix, the dimension attributes is itself an integer vector of length 2(nrow, ncol).
    #4.Vectors in R are assigned using c() function where as a matrix can be constructed by using 'matrix()' function.
    #5.Elements of matrix mat can be accessed by using mat[n,m] at nth  column and mth row where as vector elements can be accessed with the help of vector indexing,
    #  vector indexing starts from 1.
   ##SIMILARITIES
    #1.Vector contains elements of same type and matrix is the collection of elements of the same data type.

########################################################################################################################################################################    

###2.What is the basic difference and similarity between a data frame and a matrix?
   ## DIFFERENCE
    #1.matrix is the collection of elements of the same data type where as data frame is the collection of different data types.
   ##SIMILARITIES
    #1.Both data frame and  matrix is a two dimensional data structure.

########################################################################################################################################################################

###3.Create a vector using (15, TRUE, "World"). What happened to your result?
      vector<-c(15, TRUE, "World")
      vector
      class(vector)
      #Vector contains elements of same type,but in the above vector we created a vector of different types such as integer,logical and character respectively
      #so it converts the 15 i.e numeric into character and TRUE i.e logical into character.

####################################################################################################################################################################################################
            
###4.John scores in the final semester for the three subjects are 95, 91, and 88. The subjects are Statistics, Linear Algebra, and Calculus. Using these create a vector and give names to all elements of the vector based on their subjects
      # creating vector
       john_marks<-c(95,91,88)
       subjects_names<-c("statistics","linear algebra","calculus")
       
      #giving names to elements of john_marks
       names(john_marks) <- subjects_names
       john_marks
       
#########################################################################################################################################################################################################################################################
       

       
###5.Please check the types (character or numeric) of the vector you created
      class(john_marks)
      typeof(john_marks)
      class(subjects_names)      
      #data type of vector john_marks is numeric
      #data type of vector subject_names is character
      
####################################################################################################################################################################################################################################################################
      
###6.You have three students in your class (choose any name you want). You must create a matrix using their score in the above mentioned subjects (question 4) Student 1 (95, 91, and 88), Student 2(96, 94, and 97), Student 3(88, 98, and 85). Create a matrix and label column and row names.
   #creating vector of each student showing marks in diff subj
      usha<-c(95,91,88)
      sony<-c(96,94,97)
      asha<-c(88,98,85)
      
   #creat box office
      marks <-c (usha,sony,asha)
      marks
   
   #construct matrix
      marks_sheet <- matrix(marks,nrow = 3,byrow = TRUE)
      marks_sheet 
      
   ##naming the matrix
    #naming column with name of the subject
      colnames(marks_sheet) <- c('statistics', 'linear algebra', 'calculus')
      marks_sheet
      
    #naming row with name of the student
      rownames(marks_sheet) <- c('usha','sony','asha')
      marks_sheet 
      
##############################################################################################################################################################################################
 
###7.covert the above matrix to data frame.
      marks_df <- as.data.frame(marks_sheet)
      marks_df
      class(marks_df)
      
#########################################################################################################################################################
###8.Create three vectors using five countries (your choice) from the following website. 
    #The first vector should be country names, the second vector should be the total number of cases,
    #and the third vector should contain the total number of deaths. Create a data frame using these vectors.      
      
      Country_name <- c("USA", "India", "Brazil","France", "Russia")
      Total_cases <- c(32669212, 16263695, 14172139,5408606,4736121)
      Total_death <- c (584226, 186928, 383757,102164, 107103)
      data_frame  <- data.frame(Country_name,Total_cases, Total_death)
      data_frame 

#########################################################################################################################################################################      
###9.mtcars data
      data("mtcars")
      str(mtcars)
      mtcars$cyl<-factor(mtcars$cyl)
      mtcars[8:11]<-lapply(mtcars[8:11],as.factor)
      str(mtcars)
      
      
      
      
      
      
      
      
      