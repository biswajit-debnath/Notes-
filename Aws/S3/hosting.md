### Steps to host a website in s3
1.  `Create a bucket in block all public acces`
        unselect that -> select only 
                        1. Block public access to buckets and objects granted through new access control lists (ACLs)
                        2. Block public access to buckets and objects granted through any access control lists (ACLs)
        Rest will be unselected

2. `For Bucket Policy`
        Paste this  `{
                        "Version": "2012-10-17",
                        "Id": "Policy1548223592786",
                        "Statement": [
                            {
                                "Sid": "Stmt1548223591553",
                                "Effect": "Allow",
                                "Principal": "*",
                                "Action": "s3:GetObject",
                                "Resource": "arn:aws:s3:::biswajitdebnathportfolio/*" //Change to your arn
                            }
                        ]
                    }`

3. `In Properties edit static website hosting `
                Enable static website hosting and set index document and error document to index.html