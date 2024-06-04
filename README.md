# quotes_task
## Dialog Box
<p>
 <img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/1d570759-885d-44f2-95b2-7df581494daf" height = 25%  width = 20%>
 <img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/cd8f8aba-2d1a-41e0-bbad-daebe0c85f57" height = 25%  width = 20%>
 <img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/0822f4a4-2e09-4a8e-8b6e-b133f0a8482e" height = 25%  width = 20%>
 <img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/306acd50-a784-4eca-b927-961e6f395d8c" height = 25%  width = 20%>
</p>


##  Factory Constructor



## Write a detailed implementation of the Factory constructor & and Modal class with an explanation?

 - A factory constructor is used to return an      instance of a class from a method without necessarily creating a new instance. 
- It is typically used when you want to return a cached instance or a different subtype based on certain conditions. 
```dart

import 'dart:io';

import 'factory1.dart';

class Student {
  late String name;
  late String course;
  late int roll_num;
  Student({required this.name, required this.roll_num, required this.course});

  List<Student> stu = [
    Student(name: 'Aayat', roll_num: 39, course: 'flutter'),
    Student(name: 'Aayat', roll_num: 2, course: 'flutter'),
  ];
}

List studentList = [
  {'name': ' sonu ', 'roll_num': 17, 'course': 'flutter'},
  {'name': ' sudha ', 'roll_num': 4, 'course': 'flutter'},
  {'name': ' seema ', 'roll_num': 16, 'course': 'flutter'},
  {'name': ' sonu ', 'roll_num': 16, 'course': 'flutter'},
  {'name': ' sidhi ', 'roll_num': 13, 'course': 'flutter'},
  {'name': ' seema ', 'roll_num': 14, 'course': 'flutter'},
];
List<StudentsModel> l1 = [];

void main() {
  for (int i = 0; i < studentList.length; i++) {
    StudentsModel s1 = StudentsModel.fromstudent(stu: studentList[i]);
    l1.add(s1);
  }
  for (int i = 0; i < l1.length; i++) {
    print("\n");
    stdout.write('name : ${l1[i].name}' +
        ',roll_num: ${l1[i].roll_num},' +
        ',course: ${l1[i].course},');
  }
}

```

### Model class :-
- The modal class is the class with the highest frequency. We know that the mode is the number or observation that most often appears.
-  So, the modal class is the class in a grouped data that contains the mode. 
- That means, the class that has the highest frequency is the modal class of the grouped data.
- Model class is a user define data type.


```dart
import 'dart:io';
import 'student.dart';

class StudentsModel {
  String? name;
  String? course;
  int? roll_num;

  StudentsModel(
      {required this.name, required this.roll_num, required this.course});

  factory StudentsModel.fromstudent({required Map stu}) {
    return StudentsModel(
        name: stu['name'], roll_num: stu['roll_num'], course: stu['course']);

  }
  
}

```


<img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/e1d30911-bd41-40cb-a9fa-42ab80b465bf" height = 25%  width = 25%>
<img src = "https://github.com/Shalu6634/quotes_task/assets/149373622/79251c86-5a15-4d01-b3f7-e442565b0eb6" height = 25%  width = 25%>



