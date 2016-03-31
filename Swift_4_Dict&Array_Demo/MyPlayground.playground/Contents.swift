//: Playground - noun: a place where people can play

import Cocoa

/*
var str = "Hello, playground"

let nameArr = ["夏宣洲"]
for i in 0..<nameArr.count {
//    print(nameArr[i])
    
    for char in nameArr[i].unicodeScalars {
        var b = char.value
        print(b)//ASIIC码
        
//        var a = Character(UnicodeScalar(char.value))
        var a = UnicodeScalar(char.value)
        print(a)//字符
    }
}
*/

/*
print("-----------------------------------")
/*-1-**********数组**********/
let myArr = ["1", "2", "0"]
print(myArr)

//声明
var arr:[String]
var arr1:Array<Int>
//赋值
arr = ["0", "1"]
arr1 = [0, 1, 2]
print(arr)
print(arr1)

//初始化,创建空数组 ****
var nullArr = [Int]()
var nullArr1:[String] = []
var nullArr2:Array<Float> = []
//初始化指定数的指定个数
var nullArr3 = [Int](count: 0, repeatedValue: 10)

//直接初始化
var nullArr4 = ["1", "2"]

//print(nullArr)
//print(nullArr1)
//print(nullArr2)
print(nullArr3)

//赋值
nullArr = [1, 2, 3]
nullArr1 = ["one", "two", "three"]
nullArr2 = [1.1, 2.2, 3.3]
//print(nullArr)
//print(nullArr1)
//print(nullArr2)

//数组的操作 ********
//1 - 增
nullArr1.insert("four", atIndex: nullArr1.count)//插入指定位置
print(nullArr1)

nullArr1.append("five")//追加在数组尾部
print(nullArr1)

nullArr1 += ["six"]//赋值追加至尾部,也可多个元素
print(nullArr1)

//1.1 - 数组的加法
//let tempArr = ["x", "y", "z"]
//nullArr1 = nullArr1 + tempArr
//print(nullArr1)

//1.2 - 根据区间赋值
//在数组个数范围内:
//多则追加在后面
//少则删除对应的原数组的元素
//正常情况,在范围内,,区间的 步长 对应个数的 元素

//三种特殊情况
//nullArr1[0...2] = ["6", "7"] //>
//print(nullArr1)
//nullArr1[0...1] = ["6", "7", "8"] //<
//print(nullArr1)
//nullArr1[1...2] = ["6", "7", "8"];
//print(nullArr1)

//2 - 删
//nullArr1.removeAtIndex(0)//删除置顶位置的元素
//print(nullArr1)
//nullArr1.removeLast()//删除最后元素
//print(nullArr1)

//3 - 改
nullArr1[2] = "2"
print(nullArr1)

//4 - 查
//var char = nullArr1[3]
//print(char)

//5 - 判断数组是否为空
if nullArr1.isEmpty {
    print("没有元素")
}else {
    print(nullArr1)
}

print("------------------")
//6 - 枚举数组中的元素
for str in nullArr1 {
    print(str)
}
print("------------------")
for i in 0 ..< nullArr1.count {
    print(nullArr1[i])
}
print("------------------")
//同时获取下标和元素
for (index, value) in EnumerateSequence(nullArr1) {
    print("\(index) = \(value)")
}

*/

//复习
//数组的声明
var myArr11:[String]
var myArr22:Array<Int>

//数组的初始化
var myArr33:[Int] = []
var myArr44:Array<String> = []
var myArr55 = [Float]()
var myArr66 = [Double](count: 3, repeatedValue: 10)

print("-----------------------------------")
/*-2-**********字典**********/
//字典的声明
var dict:[String: String]
var dict1:Dictionary<Int, Int>

//直接初始化
var dict2 = ["name":"xxz", "sex":"boy"];
print(dict2)

//直接清空
dict2 = [:] //[:] 表示空字典
print(dict2)

//但初始化时,不能直接用[:],否则默认为NSDictionary
var dic = [:]; print(dic)
dic = ["name":"xxz", "info":"info"]; print(dic)

//字典的赋值
dict = ["name":"xxz", "age":"25"]
dict1 = [1:12, 2:23]

//字典的个数
let index = dict.count; print(index)

//字典的初始化 => 创建空的字典 ****
var nullDict = [String: String]()
var nullDict1 = Dictionary<String, String>()
//print(nullDict) //[:] 表示空字典
//print(nullDict1)

//字典的操作 ********
//增
//直接根据名字赋值,,若有key直接更新,若没有key,直接添加
nullDict["name"] = "xxz"
print(nullDict)

//更新,,若有key直接更新,若没有key,直接添加
nullDict.updateValue("25", forKey: "age")
print(nullDict)

//删除
//nullDict["age"] = nil//将指定的key为nil=>没有值,OC中nil=>指值为空
//print(nullDict)
//nullDict.removeValueForKey("name")//移除指定的key
//print(nullDict)

//查
//查1
let age = nullDict.indexForKey("age")
print("age = \(age)")//

//查2
var name = nullDict["age"]
print(name!)//String   
//or
var name1 = nullDict["age"]!
print(name1)//String

//转
//若是数字组成的字符串 => Int
//否则, 加 ? 直接没有值nil, 加 ! 直接报错
let value11:Int! = Int(nullDict["age"]!)
print(value11)//Int

//获取字典的所有key和value, 转换成数组
var keysArr = Array(nullDict.keys);
var valuesArr = [String](nullDict.values)
print("keysArr = \(keysArr)")
print("valuesArr = \(valuesArr)")

if nullDict.isEmpty {
    print("字典为空")
}else {
    print("字典不为空")
}

print("-------------------------")
//遍历
//1 同时获取key和value
for (key, value) in nullDict {
    print("\(key): \(value)")
}
print("-------------------------")
//2 只获取key
for key in nullDict.keys {
    print("key = \(key)")
    
    if key == "age" {//根据key取值
        var age = Int(nullDict[key]!)//转换成Int //or
//        var age:Int! = Int(nullDict[key]!)
        var myAge = age!+10 //若进行操作 必须加!, 或者声明时加上!
        print("myAge = \(myAge)")
    }
}
print("-------------------------")
//3 只获取value
for value in nullDict.values {
    print("value = \(value)")
}
print("-------------------------")
for (index, element) in EnumerateSequence(nullDict) {
    print("\(index): \(element)")
}
print("-------------------------")





