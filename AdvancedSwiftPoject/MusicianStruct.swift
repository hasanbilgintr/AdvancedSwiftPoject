//
//  MusicianStruct.swift
//  AdvancedSwiftPoject
//
//  Created by hasan bilgin on 11.10.2023.
//

import Foundation


struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    //init oluşturmadığım için hata vermedi
    //mainden çağırırkende parammetreleri zorunlu kıldı
    
    //bu fonksiyon mutating sız değişikliğe hata verirdi koyunca değiştirilebilir anlamındadır
   mutating func happyBirthday(){
       self.age += 1
    }
}
    
