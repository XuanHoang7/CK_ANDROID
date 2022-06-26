import 'package:flutter/material.dart';
import 'package:photo_ltdd/screens/login/body/text_input.dart';

class BodySearch extends StatefulWidget {
  const BodySearch({Key? key}) : super(key: key);

  @override
  State<BodySearch> createState() => _BodySearchState();
}

class _BodySearchState extends State<BodySearch> {
  TextEditingController sreach = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    sreach.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Search",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 46,
                fontStyle: FontStyle.normal),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 52,
            width: double.infinity,
            child: TextInput(
                hinttext: 'Search all photos',
                textEditingController: sreach,
                textInputType: TextInputType.text),
          )
        ],
      ),
    );
  }
}
