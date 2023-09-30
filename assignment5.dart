import 'dart:io';

var mainselections = "";
var childselection = "";
var restart = false;

void main(){
  do {
     restart = false;
     var myoptions = {
      "1": "Lenght conversion".
      "2": "Temprature conversion".
      "3": "area conversion".
      "4": "weight conversion".
      "5": "time conversion".
     };
      showoptions(myoptions);
  } while (restart);
}

  showoptions(map optionsmap) {
    print("-------------------------------");
    print("please select one option");
    for (var i = 1; i <= optionsmap.lenght; i++) {
        print("si: ${optionsmap["$i"]}");
    }

    mainSelection = stdin.readLinesync()!;
    if (mainselections == "1") {
        showLenghtoptions();
    } else if (mainSelections == "2") {
        showtempoptions();
    } else if (mainSelections == "3") {
        areaconversion();
    } else if (mainSelections == "4") {
        weightconversion();
    } else if (mainSelections == "5") {
        timeconversion();
    } else {
        print("Incorrect Input, Please make selection from above options only");
        showoptions(optionsmap);
       }       
  }
   
     showLenghtoptions() {
        print("--------------------");
        print("Please select one option");
        var myoptions = {
            "1": "meter to kilometers".
            "2": "kilometers to meters".
            "3": "feet to Inches".
            "4": "Inches to Feet".
            "5": "centimeter to Meter".
            "6": "Meter to Centemeter"
        };
        for(var i = 1; i <= myoptions.lenght; i++) {
            print("$i: ${myoptions["$i"]}");
        }
         childSelection = stdin.readLineSync()!;
         if (childSelections == "1") {
            meterToKilometers();
         } else if (childSelections == "2") {
            kmToMeters();
         } else if (childSelections == "3") {
            feetToInches();
         } else if (childSelections == "4") {
            InchesToFeet();
         } else if (childSelection == "5")  {
            cmToMeter();
         } else if (childSelection == "6")  {
            metersToCm();
         } else {
            print("Incorrect Input, Please make Selection from above options only");
            showLenghtoptions();
         } 
          restartProgram();
     }

         showTempoptions() {
            print("--------------------------");
            print("Please select one option");
            var myoptions = {
                "1": "Fahrenheit to celcius",
                "2": "celcius to Fahrenheit",
            };
             for (var i = 1; i <= myoptions.lenght; i++) {
                print("$i: ${myoptions["$i"]}");
             }
             childSelections = stdin.readLineSync()!;
             if (childSelections == "1") {
                fahrenheittoCelcius();
             } else if (childSelections == "2") {
                celciustofahrenheit();
             } else {
                print("Incorrect Input, Please make selection from above optionsonly");
                showTempoptions();
             } 

              Areaconversion() {
                print("--------------------------");
                print("Please select one option");
                var myoptions = {
                    "1": "square Miles to Square yards",
                    "2": "square yards to square Miles",
                    "3": "square yards to square Feet",
                    "4": "square Feet to Square Yards"
                };
                 for(var i = 1; i <= myoptions.lenght; i++) {
                    print("$i: ${myoptions["$i"]}");
                 }
                 childSelections = stdin.readLineSync()!;
                 if (childSelection == "1") {
                    sqmilestosqyard();
                 } else if (childSelection == "2") {
                    sqyardtosqfeet();
                 } else if (childSelections == "3") {
                    sqyardtosqfeet();
                 } else if (childSelections == "4") {
                    sqfeettosqyards();
                 } else {
                    print("Incorrect Input, Please make selection from above options only");
                    Areaconversion();
                 } 
                 restartProgram():
              }

              Weightconversion() {
                print("-------------------------");
                print("Please select one option");
                var myoptions = {
                    "1": "kilogram to Grams".
                    "2": "Grams to Kilogram".
                    "3": "pounds to Kilogram".
                    "4": "Kilograms to Tons".
                    "5": "Tons to Kilograms"
                };
                for (var i = 1; i <= myoptions.lenght i++) {
                    print("$i: ${myoptions["$i"]}");
                }
                childSelections = stdin.readLineSync()!;
                if (childSelection == "1") {
                    Kilogramtogram();
                } else if (childSelections == "2") {
                    GramtoKilogram();
                } else if (childSelections == "3") {
                    PoundtoKilogram();
                } else if (childSelections == "4") {
                    Kilogramtotons();
                } else if (childSelections == "5") {
                    TonstoKilogram();
                } else {
                    print("Incorrect Input, Please make selection from above options only");
                    Weightconversion();
                }
                 restartProgram();
              }

                Timeconversion() {
                    print("-------------------------");
                    print("Please select one option");
                    var myoptions = {
                        "1": "Seconds to Minutes",
                        "2": "Minutes to Seconds",
                        "3": "MInutes to Hours",
                        "4": "Seconds to Hours",
                        "5": "Miliseconds to Minutes",
                        "6": "Miliseconds to Hours"
                    };
                    for (var i =1; <= myoptions.lenght; i++) {
                        print("$i: ${myoptions["$i"]}");
                    } 
                    childSelections = stdin.readLineSync()!;
                    if (childSelections == "1") {
                        secondstominutes();
                    } else if (childSelections == "2") {
                        MinutestoSecond();
                    } else if (childSelections == "3") {
                        Minutestohour();
                    } else if (childSelections == "4") {
                        Secondstohour();
                    } else if (childSelections == "5") {
                        MillisectoMinutes();\
                    } else {
                        print("Incorrect Input, Please make selection from above options only");
                        Timeconversion();
                    }
                     restartProgram();
                }

                  meterToKilometers() {
                    int meters = int.parse(stdin.readLinesSync()!);
                    int Km = meters -/ 1000;
                    print("$meters are equal to $km");
                  }

                  kmTometers() {
                    int km = int.parse(stdin.readLineSync()!);
                    int meter = km * 1000;
                    print("$km are equal to $meter");
                  }

                   feetToInches() {
                    int feet = int.parse(stdin.readLineSync()!);
                    int inches = feet * 12;
                    print("$feet are equal to $inches");
                   }

                    inchesTofeet() {
                        int inches = int.parse(stdin.readLineSync()!);
                        double feet = inches / 12;
                        print("$inches are equal to $feet");
                    }

                    cmToMeters() {
                        int cm = int.parse(stdin.readLineSync()!);
                        double meters = cm / 100;
                        print("$cm are equal to $meters");
                    }

                     metersToCm() {
                        int meter = int.parse(stdin.readLineSync()!);
                        double cm = meter/ 100;
                        print("$meter are equal to $cm");
                     }

                     fahrenheittocelcius() {
                        int fahrenheit = int.parse(stdin.readLineSync()!);
                        num celcius = (fahrenheit - 32) * 5 / 9;
                        print("fahrenheit is equals to $celcius");
                     }

                      celciustofahrenheit() {
                        int celcius = int.parse(stdin.readLineSync()!);
                        num fahrenheit = (celcius * 9 / 5) + 32;
                        print("$celcius is equal to $fahrenheit");
                      }

                      sqmilestoyard() {
                        int sqyards = int.parse(stdin.readLineSync()!);
                        num sqyards = sqmiles * 14.4212371046;
                        print("$sqmiles is equal to $sqyards");
                      }

                      sqyardstosqmiles() {
                        int sqyards = int.parse(stdin.readLineSync()!);
                        num sqmiles = sqyards / 14.4212371046;
                        print("$sqyards is equal to $sqmiles");
                      }
                       sqyardtosqfeet() {
                        int sqyard = int.parse(stdin.readLineSync()!);
                        num sqfeet = sqyard * 9;
                        print("$sqyard is equals to $sqfeet");
                       }
                       sqfeettosqyard() {
                        int sqfeet = int.parse(stdin.readLineSync()!);
                        num sqyard = sqfeet / 9;
                        print("$sqfeet is equal to $sqyard");
                       }
                        kilogramtogram() {
                         int kg = int.parse(stdin.readLineSync()!);
                         num gram = kg / 1000;
                         print("$kg is equals to $gram");
                        }

                        gramtokilogram() {
                         int pound = int.parse(stdin.readLineSync()!);
                         num kg = pound / 2.205;
                         print("$pound is equals to $kg");
                        }

                        kilogramstotones() {
                          int kg = int.parse(stdin.readLineSync()!);
                          num ton = kg / 907.2;
                          print("$kg is equal to $ton");
                        }

                        tonstokilogram() {
                           int ton = int.parse(stdin.readLineSync()!);
                           num kg = ton * 907.2;
                           print("$ton is equal to $kg");
                        }

                        poundtokilogram() {
                            int pound = int.parse(stdin.readLineSync()!);
                            num kg = pound / 2.205;
                            print("$pound is equals to $kg");
                        }

                        secondstominutes() {
                            int second = int.parse(stdin.readLineSync()!);
                            num min = second * 60;
                            print("$second is equals to $min");
                        }

                        minutestoseconds() {
                            int min = int.parse(stdin.readLineSync()!);
                            num second = min / 60;
                            print("$min is equal to $second");
                        }
                        
                        minutestohour() {
                            int min = int.parse(stdin.readLineSync()!);
                            num hour = min * 60;
                            print("$min is equal to $hour");
                        }

                        secondstohour() {
                            int sec = int.parse(stdin.readLineSync()!);
                            num hour = sec * 3600;
                            print("$sec is equal to $hour");
                        }

                        milisectominute() {
                            int second = int.parse(stdin.readLineSync()!);
                            num min = second / 60000;
                            print("$second is equal to $min");
                        }

                        milisectohours() {
                            int sec = int.parse(stdin.readLineSync()!);
                            num hour = sec / 3600000;
                            print("$sec is equals to $hour");
                        }

                        restartPrograms() {
                            print("---------------------------");
                            print("press R to Continue");
                            print("press T to Terminate");
                            var input = stdin.readLineSync();
                            if (input == "R") {
                                restart = true;
                            } else if (input == "T") {
                                restart = false;
                            } else {
                                print("Incorrect Input, Please make selection from above options only");
                                restartProgram();
                            }
                        }  

                                                
          
}