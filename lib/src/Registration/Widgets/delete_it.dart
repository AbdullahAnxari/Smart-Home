// class RegisterForm extends StatelessWidget {
//   const RegisterForm({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Name',
//             hintText: 'Enter your name',
//             keyboardType: TextInputType.text,
//             onChanged: (value) {},
//             icon: Icons.person,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'email',
//             hintText: 'Enter your email',
//             keyboardType: TextInputType.emailAddress,
//             onChanged: (value) {},
//             icon: Icons.email,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Phone',
//             hintText: 'Enter your phone',
//             keyboardType: TextInputType.phone,
//             onChanged: (value) {},
//             icon: Icons.phone,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Password',
//             hintText: 'Enter your password',
//             keyboardType: TextInputType.visiblePassword,
//             onChanged: (value) {},
//             icon: Icons.fingerprint,
//             obscureValue: true,
//           ),
//           SizedBox(height: 20.h),
//           SizedBox(
//             width: double.infinity,
//             child: CustomElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const TypeScreens()));
//               },
//               text: 'Register',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//..................................//

//
// class RegisterForm extends StatelessWidget {
//   const RegisterForm({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Name',
//             hintText: 'Enter your name',
//             keyboardType: TextInputType.text,
//             onChanged: (value) {},
//             icon: Icons.person,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'email',
//             hintText: 'Enter your email',
//             keyboardType: TextInputType.emailAddress,
//             onChanged: (value) {},
//             icon: Icons.email,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Name',
//             hintText: 'Enter your phone',
//             keyboardType: TextInputType.phone,
//             onChanged: (value) {},
//             icon: Icons.phone,
//             obscureValue: false,
//           ),
//           SizedBox(height: 10.h),
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: 'Name',
//             hintText: 'Enter your password',
//             keyboardType: TextInputType.visiblePassword,
//             onChanged: (value) {},
//             icon: Icons.fingerprint,
//             obscureValue: true,
//           ),
//           SizedBox(height: 20.h),
//           SizedBox(
//             width: double.infinity,
//             child: CustomElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const TypeScreens()));
//               },
//               text: 'Register',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
