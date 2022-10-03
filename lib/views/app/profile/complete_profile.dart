import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_form_field.dart';

import '../../../routes/app_router.gr.dart';
import '../../_shared/constants/colors.dart';

class CompleteProfileScreen extends StatelessWidget {
  CompleteProfileScreen({Key? key}) : super(key: key);

  final TextEditingController telephoneNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: kLayoutLightColor,
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      'Congratulations !',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              Container(
                child: const Text(
                    'To complete your registration please enter your contact number'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                hintText: 'Telephone xxx-xxx-xxxx',
                controller: telephoneNumberController,
                inputType: TextInputType.phone,
                marginLeft: 20,
                marginTop: 24,
                marginRight: 20,
                marginBottom: 24,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                AutoRouter.of(context).replace(const HomeBase());
              }, child: Text('Save')),
              const Spacer(),
            ],
          )),
    );
  }
}
