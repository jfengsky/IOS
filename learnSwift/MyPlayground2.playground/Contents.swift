import UIKit

var courses = [
    76: "kec",
    77: "cc3",
    127: "ssadfa"
]

var website = [
    "aaa": "bbb",
    "ccc": "ddd"
]

//var dict2:Dictionary<Int:String> = [];

var dict3:[Int:String] = [222: "aaa"];

var dict4 = Dictionary<Int,String>();

var dict5 = [Int: String]();

dict3 = [:];

courses.count

dict5.isEmpty

var oldValue = courses.updateValue("rrrrrr", forKey: 76)


courses

//courses[77] = nil;

//courses

courses.removeValueForKey(127)

for(key,value) in courses {
    println(key)
}

for key in courses.keys {
    
}