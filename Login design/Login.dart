import 'package:flutter/material.dart' ;

class Login extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(

          '         Login Form',

        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [

                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,


                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: TextEditingController(),
                  onFieldSubmitted:(value) {
                    print(value);
                  },
                  keyboardType:TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    label: Text('Email'),
                    prefixIcon: Icon(Icons.email),

                  ),

                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType:TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),

                  ),

                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.teal,
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      width:0.5,
                    ),
                    TextButton(onPressed: (){}
                        , child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )

                  ],
                )

              ],
            ),
          ),
        ),
      )


    );
  }

}
