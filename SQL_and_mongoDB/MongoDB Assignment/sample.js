db.Courses.insertMany(
    [
        {
            Course_Name:"Machine Learning",
            Author: "Ms. Samantha",
            Sessions:[
                {
                    Time: "10:30 AM",
                    date: "5-4-2010"
                 },{
                        Time: "12:30 PM",
                     date: "6-4-2010"
                }
            ]
         },
         {
           Course_Name:"Artificial Inteligence",
            Author: "Ms. Ramanujar",
             Sessions:[
                {
                    Time: "10:30 AM",
                    date: "5-4-2010"
                 },{
                        Time: "12:30 PM",
                     date: "6-4-2010"
                }
            ]
          },
                   {
           Course_Name:"Docker",
            Author: "Ms. Tony stark",
                       Sessions:[
                {
                    Time: "10:30 AM",
                    date: "5-4-2010"
                 },{
                        Time: "12:30 PM",
                     date: "6-4-2010"
                }
            ]
          }
    ]
    )
          
 db.Courses.find().pretty()
          
db.Students.insertMany(
 [
    {
        Name: "Eric",
        Email: "eric@gmail.com",
        Couser_id: [ObjectId("6225a1892b99857a8a7e641c"),ObjectId("6225a1892b99857a8a7e641d"),ObjectId("6225a1892b99857a8a7e641e")]
    }        
  ]         
 )
 
 db.Students.insertMany(
 [
    {
        Name: "Raymund",
        Email: "raymund@gmail.com",
        Couser_id: [ObjectId("6225a1892b99857a8a7e641c"),ObjectId("6225a1892b99857a8a7e641e")]
    },
        {
        Name: "Rex",
        Email: "rex@gmail.com",
        Couser_id: [ObjectId("6225a1892b99857a8a7e641d"),ObjectId("6225a1892b99857a8a7e641e")]
    },
            {
        Name: "Mary",
        Email: "mary@gmail.com",
        Couser_id: [ObjectId("6225a1892b99857a8a7e641d")]
            }
  ]         
 )
            
 db.Students.find()


