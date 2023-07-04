import UIKit


//🩵 Struct
// 사용자가 만드는 데이터 타입. 그러나 클래스와 달리 <값 타입>이다
//cf) 값 타입 : 직접 리터럴을 저장함 (참조타입은 메모리 주소를 저장한다)


//1️⃣ Struct 정의
struct Boyz {
    
    //let 키워드로 불변 프로퍼티로 선언해서 한번 정해지면 값 못바꿈
    let name : String
    let age : Int
    let OriginName : String
    
    //var 키워드는 가변 프로퍼티. 변경 가능
    var position : String
    
    static let members : Int = 11       //타입 프로퍼티. 인스턴스에서 바꿀 수 없음. (Boyz 타입 자체가 사용하는 프로퍼티)
    
    func dance(song : String){
        print("Dancing : \(song)")
    }
    
    func sing(song : String){
        print("Sing : \(song)")
    }
    
    static func TheBoyz(){
        print("Best the Boyz")
    }
}

//2️⃣ Struct 인스턴스 선언
let Q = Boyz(name: "Q", age: 26, OriginName: "JiChangMin", position: "MainDance")
//Q.position = "SubVocal"   ❎ let으로 Q를 선언했기 때문에 변경 불가능!!
Q.dance(song: "Reveal")
Q.sing(song: "Summer Nights")

var Juyeon = Boyz(name: "Juyeon", age: 26, OriginName: "LeeJuYeon", position: "MainDance")
Juyeon.position = "SubVocal"    //🅾️ var로 선언해서 변경 가능
Juyeon.dance(song: "The Stealer")


//Q.members = 10    ❎ 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다

Boyz.members
Boyz.TheBoyz()

