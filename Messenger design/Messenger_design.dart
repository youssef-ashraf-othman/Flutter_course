import 'package:flutter/material.dart' ;

class Login extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/C4E03AQHzUSX_eDR0SA/profile-displayphoto-shrink_800_800/0/1661124536559?e=1707350400&v=beta&t=4gzxN3c6Tr1Q8DTmK2KCtLFMfMZrDNlCQacuEl88hDY'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                    'Search',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
          
                    ),
          
          
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                    height: 115,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) => row(),
                        separatorBuilder:(context, index) => Sep()
                        , itemCount:5,
                    ),
                  ),
              SizedBox(
                height: 15.0,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Chat(),
                  separatorBuilder: (context, index) => Sepp(),
                  itemCount: 15,
              )

          
            ],
          
          ),
        ),
      ),


      
    );
  }
  Widget row() => Row(
    children:
    [
      Container(
        width: 70.0,
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/C4E03AQHzUSX_eDR0SA/profile-displayphoto-shrink_800_800/0/1661124536559?e=1707350400&v=beta&t=4gzxN3c6Tr1Q8DTmK2KCtLFMfMZrDNlCQacuEl88hDY'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Youssef Ashraf Othman',
                style: TextStyle(
                  fontSize: 15,
                ),
                maxLines: 2,
                overflow:TextOverflow.ellipsis ,

              ),
            ],
          ),
        ),
      ),
    ],
  );

  Widget Sep() => SizedBox(
    width: 7.0,
  );

  Widget Chat() => Row(
    children: [
      CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
            'https://media.licdn.com/dms/image/C4E03AQHzUSX_eDR0SA/profile-displayphoto-shrink_800_800/0/1661124536559?e=1707350400&v=beta&t=4gzxN3c6Tr1Q8DTmK2KCtLFMfMZrDNlCQacuEl88hDY'),
      ),
      SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Youssef Ashraf Othman',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'dsadasdasdasdasdasdasdasd',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02:00 pm',
                ),

              ],
            ),
          ],
        ),
      ),

    ],
  );

  Widget Sepp() => SizedBox(
    height: 9.0,
  );



}

