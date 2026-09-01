
import 'dart:io';

void main() {
String? again = "y";

// List to store conversion history
List<String> history = [];

// Set to store used conversion types
Set<String> usedConversions = {};

while (again == "y") {
print("====================================");
print("SMART TEMPERATURE CONVERTER");
print("====================================");

print("1. Celsius to Fahrenheit");
print("2. Fahrenheit to Celsius");
print("3. Celsius to Kelvin");
print("4. Kelvin to Celsius");
print("5. Fahrenheit to Kelvin");
print("6. Kelvin to Fahrenheit");
print("7. Exit");

print("Enter your choice:");

String? choice = stdin.readLineSync();

switch (choice) {
case "1":
print("Enter temperature in Celsius:");
double? celsius = double.tryParse(stdin.readLineSync()!);

if (celsius == null) {
print("Invalid temperature.");
break;
}

// Celsius to Fahrenheit
// °F = (°C × 9/5) + 32
double fahrenheit = (celsius * 9 / 5) + 32;

String result =
"${celsius.toString().replaceAll(RegExp(r'\.0$'), '')}°C = "
"${fahrenheit.toString().replaceAll(RegExp(r'\.0$'), '')}°F";

print(result);

history.add(result);
usedConversions.add("Celsius to Fahrenheit");
break;

case "2":
print("Enter temperature in Fahrenheit:");
double? fahrenheit = double.tryParse(stdin.readLineSync()!);

if (fahrenheit == null) {
print("Invalid temperature.");
break;
}

// Fahrenheit to Celsius
// °C = (°F - 32) × 5/9
double celsius = (fahrenheit - 32) * 5 / 9;

String result =
"${fahrenheit.toString().replaceAll(RegExp(r'\.0$'), '')}°F = "
"${celsius.toString().replaceAll(RegExp(r'\.0$'), '')}°C";

print(result);

history.add(result);
usedConversions.add("Fahrenheit to Celsius");
break;

case "3":
print("Enter temperature in Celsius:");
double? celsius = double.tryParse(stdin.readLineSync()!);

if (celsius == null) {
print("Invalid temperature.");
break;
}

// Celsius to Kelvin
// K = °C + 273.15
double kelvin = celsius + 273.15;

String result =
"${celsius.toString().replaceAll(RegExp(r'\.0$'), '')}°C = "
"${kelvin.toString().replaceAll(RegExp(r'\.0$'), '')} K";

print(result);

history.add(result);
usedConversions.add("Celsius to Kelvin");
break;

case "4":
print("Enter temperature in Kelvin:");
double? kelvin = double.tryParse(stdin.readLineSync()!);

if (kelvin == null) {
print("Invalid temperature.");
break;
}

// Kelvin to Celsius
// °C = K - 273.15
double celsius = kelvin - 273.15;

String result =
"${kelvin.toString().replaceAll(RegExp(r'\.0$'), '')} K = "
"${celsius.toString().replaceAll(RegExp(r'\.0$'), '')}°C";

print(result);

history.add(result);
usedConversions.add("Kelvin to Celsius");
break;

case "5":
print("Enter temperature in Fahrenheit:");
double? fahrenheit = double.tryParse(stdin.readLineSync()!);

if (fahrenheit == null) {
print("Invalid temperature.");
break;
}

// Fahrenheit to Kelvin
// K = (°F - 32) × 5/9 + 273.15
double kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;

String result =
"${fahrenheit.toString().replaceAll(RegExp(r'\.0$'), '')}°F = "
"${kelvin.toString().replaceAll(RegExp(r'\.0$'), '')} K";

print(result);

history.add(result);
usedConversions.add("Fahrenheit to Kelvin");
break;

case "6":
print("Enter temperature in Kelvin:");
double? kelvin = double.tryParse(stdin.readLineSync()!);

if (kelvin == null) {
print("Invalid temperature.");
break;
}

// Kelvin to Fahrenheit
// °F = (K - 273.15) × 9/5 + 32
double fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;

String result =
"${kelvin.toString().replaceAll(RegExp(r'\.0$'), '')} K = "
"${fahrenheit.toString().replaceAll(RegExp(r'\.0$'), '')}°F";

print(result);

history.add(result);
usedConversions.add("Kelvin to Fahrenheit");
break;

case "7":
again = "n";
break;

default:
print("Invalid choice.");
}

if (again == "y") {
print("Do you want to perform another conversion? (y/n):");

again = stdin.readLineSync();
again = again?.toLowerCase();

if (again != "y" && again != "n") {
print("Invalid choice. Program ended.");
again = "n";
}
}
}

print("====================================");
print("       Thank You!");
print("       Program Ended");
print("====================================");

// Display conversion history
if (history.isNotEmpty) {
print("Conversion History:");

for (String item in history) {
print(item);
}
}

// Display used conversion types
if (usedConversions.isNotEmpty) {
print("Used Conversions:");

for (String item in usedConversions) {
print(item);
}
}
}

