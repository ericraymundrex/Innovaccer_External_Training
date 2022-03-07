// Inserting all the Courses

db.Courses.insertMany(
    [
        {
            Course_Name:"Machine Learning",
            Author: "Ms. Samantha"
         },
         {
           Course_Name:"Artificial Inteligence",
            Author: "Ms. Ramanujar"
          },
                   {
           Course_Name:"Docker",
            Author: "Ms. Tony stark"
          }
    ]
    )
          

// To see all the Inserted Value
db.Courses.find()

// To insert all the Students
db.Students.insertMany(
 [
    {
        Name: "Eric",
        Email: "eric@gmail.com",
        Couser_id: [ObjectId("62259e1d2b99857a8a7e6415"),ObjectId("62259e1d2b99857a8a7e6416"),ObjectId("62259e1d2b99857a8a7e6417")]
    }        
  ]         
 )
 
 db.Students.insertMany(
 [
    {
        Name: "Raymund",
        Email: "raymund@gmail.com",
        Couser_id: [ObjectId("62259e1d2b99857a8a7e6415"),ObjectId("62259e1d2b99857a8a7e6417")]
    },
        {
        Name: "Rex",
        Email: "rex@gmail.com",
        Couser_id: [ObjectId("62259e1d2b99857a8a7e6415"),ObjectId("62259e1d2b99857a8a7e6416")]
    },
            {
        Name: "Mary",
        Email: "mary@gmail.com",
        Couser_id: [ObjectId("62259e1d2b99857a8a7e6416")]
            }
  ]         
 )
// To see all the Students.
            
 db.Students.find()
            
