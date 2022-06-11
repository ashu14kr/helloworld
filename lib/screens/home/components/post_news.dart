import 'package:cricket_app_admin_pannel/screens/constant/constatnt_color.dart';
import 'package:cricket_app_admin_pannel/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class PostNews extends StatelessWidget {
  const PostNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 20,
              ),
              Container(
                height: size.height / 4.5,
                width: size.width / 4,
                decoration: BoxDecoration(
                    color: dimbackground, borderRadius: BorderRadius.circular(12)),
                child: const Center(
                    child: Icon(
                  Icons.image_outlined,
                  color: Colors.white,
                )),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              InputWidget(
                onSaved: (value) {},
                topLabel: "News Title",
                hintText: "Enter News Title Here",
              ),
              SizedBox(
                height: size.height / 30,
              ),
              TextFormField(
                minLines: 20,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: dimbackground,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //gapPadding: 16,
                    borderSide: BorderSide(
                      color: dimbackground,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    //gapPaddings: 16,
                    borderSide: BorderSide(
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                  hintText: "Enter your fully Described news",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white54),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              Center(
                child: Container(
                  height: size.height/15,
                  width: size.width/4,
                  decoration: BoxDecoration(
                    color: titleColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(child: Text("Publish Your News", style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
