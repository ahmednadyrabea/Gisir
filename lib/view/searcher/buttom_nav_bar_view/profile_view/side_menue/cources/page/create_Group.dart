import 'package:flutter/material.dart';


class CreateGroup extends StatelessWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //foregroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        //  backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 42,right: 110,left: 110),
                child: Container(
                  child: Image.asset(
                    'assets/image 32.png',
                    width: 150,
                    height: 140,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 15,left: 150,right: 150),
                child: Text('اضافة صورة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25,left: 212,right: 68),
                child: Text('أسم المجموعة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51,left: 37,top: 10),
                child: Container(
                  width: 272,
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25,left: 212,right: 68),
                child: Text('المجال',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51,left: 37,top: 10),
                child: Container(
                  width: 272,
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),Padding(
                padding:  EdgeInsets.only(top: 25,left: 212,right: 68),
                child: Text('وصف المجموعة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51,left: 37,top: 10),
                child: Container(
                  width: 272,
                  height: 150,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'انشاء مجموعة',
                    style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      primary: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
