//
//  main.swift
//  AdvancedSwiftPoject
//
//  Created by hasan bilgin on 11.10.2023.
//

import Foundation

let classJames = MusicianClass(name: "james", age: 50, instrument:  "Guitar")
print(classJames.age)
var structJames = MusicianStruct(name: "james", age: 50, instrument:  "Guitar")
print(structJames.age)
//apple daha çok class yerine struct kullanmamızı istiyormuş ihtiyaç olduğunda  classa çevirirsin diyor
//önemli farklı inherit classta var bide referans type ile çalışırsan , struct value type ile çalışır yada object-c ile sadece class çalışır





//IMMUTABLE STRUCT (structlar değişikliğe olanak sağlamazlar)
print("IMMUTABLE STRUCT")
//class olduğu için değiştirilebilir
classJames.age = 51
print(classJames.age) //51
//struct olduğu içinse çağırılan değişken let ise değiştirilemezler(immutable) var ise değiştirilebilir
structJames.age = 51
print(structJames.age) //hata verir var yapılırsa hatasız değiştirir





//REFERANSCE vc VALUE
//print("REFERANSCE vc VALUE")
let copyClassJames = classJames
var copyStructJames = structJames
//print("copyClassJames.age : \(copyClassJames.age)")// 51 verdsi
//print("copyStructJames.age : \(copyStructJames.age)")// 51 verdi
//copyClassJames.age  = 52
//copyStructJames.age  = 52
//print("copyClassJames.age : \(copyClassJames.age)")// 52 verdi
//print("copyStructJames.age : \(copyStructJames.age)")// 52 verdi
//print(classJames.age) // 52 verdi çünkü kopyalanan veri referansle ile ilerlediği içi oda 52 oldu
//print(structJames.age) // 51 verdi
//referans Types -> Class
//Copy - > Same object new referance -> 1 obejct + 2 referance
//Value Types -> Struct
//Copy -> new object-> 2 objects
//not referans ile devam edilcekse class dğeilse struct diye süreci ilerletebiliriz






//Function vs Mutating Function
//print("Function vs Mutating Function")
//print(classJames.age)
//classJames.happyBirthday()
//print(classJames.age)
//
//print(structJames.age)
//structJames.happyBirthday()
//print(structJames.age)





//TUPLE (diziye benzer bir yapı)
let myTuple = (1,3)
print(myTuple.0)//1 vericektir
var myTuple2 = (1,3,5)
//var myTuple2 = (1,2,3,4,5,6,7,8,9) olabilir
myTuple2.2 = 10 //değişimde olur
print(myTuple2.2)//10 verir
let myTuple3 = ("Atil",100)
let myTuple4 = (10,[10,20,30])
print(myTuple4.1[1]) //20 vericektir
var predefinedTuple : (String , String)
predefinedTuple.0 = "Atil"
predefinedTuple.1 = "Sam"
//olmaz çünkü tanımlandmadı hata verir
//predefinedTuple.2 = "dsf"
//print(predefinedTuple)//("Atil", "Sam") yazdırır
let newTuple = (name: "James", metalica: true)
//print(newTuple.metalica)//true vericektir
//print(newTuple.name)//James vericektir





//GUARD LET vs IF LET
//guard daha çok verisini koruu if se bu ise bunu yap
//Guard -> Negative && donfident(güvenli)
//If -> Pozitive

let myNumber = "5"

//çağırılırsa verdiğim stringi imntegere çevirebilirsen myIntegera ata değerini onu döndür çeviremezsen 0 döndür
func convertToIntegerIf (StringInput: String) -> Int{
    if let myInteger = Int(StringInput) {
        return myInteger
    }else{
        return 0
    }
}
//çağırılırsa verdiğim stringi imntegere çeviremessen 0 döndür dönüştürürse myIntegera ata değerini onu döndür
func convertToIntegerGuard(StringInput: String) -> Int{
    guard let myInteger = Int(StringInput) else {
        return 0
    }
    return myInteger
}
//print(convertToIntegerIf(StringInput: myNumber))
//print(convertToIntegerGuard(StringInput: myNumber))








//Switch
//remainder diğer adı % mod... sölenebilir
let myNum = 11
let myREmainder = myNum % 4
print(myREmainder)//3 verir

switch myREmainder {
case 1:
    print("1")
case 2:
    print("2")
case 3:
    print("3")
    //4 ile 7 arasında ise
case 4...7:
    print("4-7")
default:
    print("none of the above")
}






//Breakpoint //kod izleme
//153 satırına basılıncsa kod izelenebilşir hale gelir //tutulıu basıp istediğin yere getirtilebilir //debug yaparkjen çok yardımcı olucak
//tıklanan breakpoint  getirdildiyse sağ tık silinebilir yada tutup sağ tarafa çekilerek silinebilir breakpointler
//f6 ile breakporin ilerletebiliriz. burda F tuşları açma bilgisi var https://teknodiot.com/mac-touch-bar-f-tuslari-gosterme. üst sekemde debugtanda bakılabilir ve ilerletilebilir
//fn tuşuna basılı tutarak üstte F tuşları çıkar
var x = 5
print(x)
x += 1
print(x)
