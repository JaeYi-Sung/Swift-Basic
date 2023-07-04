/*
 
 Swift Programming
 Collection Type : Array, Dictionary, Set
 
 Jaeyi Sung, 2023
 
 */


import UIKit

//✅ Array
//배열은 인덱스를 가진 리스트 컬렉션 타입

//1️⃣ Array 선언
var boyz : [String] = []

//아래 모두 같은 표현
var boyz1 : Array<String> = [String]()
var boyz2 : Array<String> = []
var boyz3 : [String] = Array<String>()
var boyz4 : [String] = [String]()
var boyz5 = [String()]

//2️⃣ Array 활용

//맴버 추가하기
boyz.append("Q")
boyz.append("JuYeon")

//맴버 포험 여부 확인
boyz.contains("NEW")    //false
boyz.contains("Q")     //true

//맴버 교체
boyz[0] = "HyunJae"

//맴버 삭제
boyz.remove(at: 0)
boyz.removeLast()
boyz.removeAll()

//맴버 수 확인
boyz.count


//3️⃣ 상수로 배열 선언
let Boyz = ["Q", "JuYeon", "HyunJae"]
//append, remove 사용 불가능!


//✅ Dictionary
// Dictionary 는 [키:값]으로 이루어진 컬렉션 타입

//1️⃣ Dictionary 선언
var boyzDict : [String : Any] = [:]

//아래 모두 같은 표현
var boyzDict1 : Dictionary<String, Any> = Dictionary<String, Any>()
var boyzDict2 : Dictionary<String, Any> = [:]
var boyzDict3 : [String : Any] = Dictionary<String, Any>()
var boyzDict4 : [String : Any] = [String : Any]()
var boyzDict5 = [String : Any]()

//2️⃣ Dictionary 활용

//키에 해당하는 값 할당
boyzDict["Q"] = 1998
boyzDict["JuYeon"] = 1998

//키에 해당하는 값 변경
boyzDict["Q"] = "JiChangMin"
boyzDict["JuYeon"] = "LeeJuYeon"

//키에 해당하는 값 제거
//boyzDict.removeValue(forKey: "JuYeon")
//boyzDict["JuYeon"] = nil

//맴버수 확인
boyzDict.count

//키만 보기
boyzDict.keys
//print(boyzDict.keys)

//값만 보기
boyzDict.values
//print(boyzDict.values)


//✅ Set
// 집합이랑 같은 컬렉션 : 중복없이 맴버가 존재, 맴버간의 순서도 없음

//1️⃣ Set 생성
var boyzSet : Set<String> = Set<String>()

//2️⃣ Set 활용

//새로운 맴버 입력
boyzSet.insert("Q")
boyzSet.insert("Q")         //두번 입력해도 하나로 저장
boyzSet.insert("JuYeon")
boyzSet.insert("NEW")

//맴버 포함 여부 확인
boyzSet.contains("Q")       //true
boyzSet.contains("HyunJae") //false

//맴버 삭제
boyzSet.remove("NEW")
boyzSet.removeFirst()       //Set에 들어있는 첫번째 element 삭제 (내림차순으로 정렬되는 듯)

//맴버 개수
boyzSet.count


//3️⃣ Set 연산
var boyzDance : Set<String> = ["Q", "JuYeon", "HyunJae"]
var boyzVocal : Set<String> = ["HyunJae", "YoungHoon", "New"]

//합집합
let boyzUnion : Set<String> = boyzDance.union(boyzVocal)
//합집합 오름차순 정렬
//let boyzUnionSorted : Set<String> = boyzUnion.sorted() : String은 안되고 Int, Float 형에서 사용 가능

//교집합
let boyzInter : Set<String> = boyzDance.intersection(boyzVocal)

//차집합
let boyzSub : Set<String> = boyzDance.subtracting(boyzVocal)

