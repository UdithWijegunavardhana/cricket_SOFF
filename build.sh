#!/bin/bash
flutter packages pub run build_runner build
flutter pub run build_runner build --delete-conflicting-outputs
flutter packages pub run json_to_model