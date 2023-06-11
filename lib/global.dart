import 'package:flutter/material.dart';

appInputDecoration({required String label, String? errorText}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blueAccent, width: 1),
        borderRadius: BorderRadius.circular(20)),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        borderRadius: BorderRadius.circular(20)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        borderRadius: BorderRadius.circular(20)),
    label: Text(label),
    errorText: errorText,
  );
}

br({double height = 20.0}) {
  return SizedBox(height: height);
}

appButton(context, {required String text, void Function()? onPressed}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: MaterialButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      padding: const EdgeInsets.all(20),
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child:  Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
