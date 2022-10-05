import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/customer_service.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_form_field.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_text.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/input_validator.dart';
import 'package:soff_cricket_hybrid/views/app/profile/complete_profile_controller.dart';

import '../../../routes/app_router.gr.dart';
import '../../_shared/constants/colors.dart';

class CompleteProfileScreen extends StatefulWidget {
  CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _telephoneNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  CompleteProfileController _completeProfileController =
  Get.put(CompleteProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
            color: kLayoutLightColor,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          'Congratulations !',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  const CustomText(
                    textAlign: TextAlign.center,
                    text:
                    'To complete your registration please enter your contact number',
                    marginLeft: 20,
                    marginTop: 24,
                    marginRight: 20,
                    marginBottom: 24,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomFormField(
                      formTitle: 'Contact Number',
                      hintText: 'xxx-xxx-xxxx',
                      controller: _telephoneNumberController,
                      inputType: TextInputType.number,
                      suffixIcon: Icons.phone,
                      marginLeft: 20,
                      marginTop: 24,
                      marginRight: 20,
                      marginBottom: 24,
                      validator: InputValidator.validatePhoneNumber,
                      onChange: (value) {
                        if (value?.length == 3) {
                          _telephoneNumberController.text = value! + '-';
                        }

                        if (value?.length == 7) {
                          _telephoneNumberController.text = value! + '-';
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                    child: SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            _completeProfileController.telephone.value =
                                _telephoneNumberController.value.text;
                            var apiResponseModel = await CustomerService()
                                .saveCustomer(
                                _completeProfileController.getUser());
                            if (apiResponseModel.apiStatus == 201) {
                              AutoRouter.of(context, watch: true).replace(
                                  const HomeBase());
                              // AutoRouter.of(context, watch: true)
                            } else {
                              _completeProfileController.apiError.value = true;
                            }
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(color: kLayoutLightColor),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0))),
                        ),
                      ),
                    ),
                  ),
                  Obx(() =>
                  _completeProfileController.apiError.value == true
                      ? Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Something Went Wrong Try again"),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              _completeProfileController.apiError.value =
                              false;
                            },
                            icon: Icon(Icons.cancel_outlined,
                                color: kWarningColor))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: kWarningBackground,
                        border: Border.all(color: kWarningColor)),
                  )
                      : Container(
                    height: 20,
                  )),
                  const Spacer(),
                ],
              ),
            )),
      ),
    );
  }
}
