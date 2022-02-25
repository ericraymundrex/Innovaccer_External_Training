db.course.insertMany(
    [
        {
            name:"Machine Learning",
            description:"Use for datascience"
        },
        {
            name:"Elastic search",
            description:"Use for datawarehouse"
        },
        {
            name:"Python",
            description:"Your for everything"
        }
    ]
    )
    db.course.find()
        
    db.students.insertMany(
        [
        {
                name: "Eric",
                course: ["62183fbbff8ccb89f134e8fb","62183fbbff8ccb89f134e8fc","62183fbbff8ccb89f134e8fd"]
        },
         {
                name: "Mary",
                course: ["62183fbbff8ccb89f134e8fb","62183fbbff8ccb89f134e8fc"]
        },
         {
                name: "Rex",
                course: ["62183fbbff8ccb89f134e8fb","62183fbbff8ccb89f134e8fd"]
        }
        ]
    )
        
    db.students.find()
        