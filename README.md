# Craig Stanton

Rework of my website

## Development notes

Using [this](https://medium.com/flutter-community/flutter-code-organization-revised-b09ad5cef7f6) post as guide for app organisation.

### Animations
* **Mixins**: anytime you see a **with** keyword, the class is using a Mixin. Mixins are basically extending a class (kind of like decorators in Python) so that multiple classes can use the same code (think about the Mosquito/Bird example in the [Recoder video](https://resocoder.com/2019/07/21/mixins-in-dart-understand-dart-flutter-fundamentals-tutorial/) - a Flying Mixin might be created so that *multiple* classes (Mosquito and Bird) can use the Flying class and methods. These replace any need to have multiclass inheritance in Dart - you still create methods in Mixins (so they are like classes in that sense) but you can use them anywhere
    * You can also restrict mixins to only be used by specific classes using the **on** keyword



### Flutter development 
* For Linux:
export PATH="$PATH:~/Development/flutter/bin"

* **Alignment**: 