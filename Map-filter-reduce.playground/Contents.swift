import UIKit

/*
 Map - filter - reduce
 
 là các phép xử lí áp dụng được trên các dối tượng dang collection như
 
 Array
 Dictionary
 Set
 
 */
//==============================================================================
/*
 Map
    : Duyệt qua từng phần tử trog một mang sử dụng cùng một toán tử với cá phần tử được duyêt qua và trả ra một mảng mơi sau khi đã tính toán
 */
var myArr = [1,5,8,9,7,8,4]
//cach1
let map1 = myArr.map { (number) in
    number * 2
}
//cach2
let map2 = myArr.map {
    $0 * 2
}
//cach3
let map3 = myArr.map { (data: Int) -> Int in
    data * 3
}

    
//==============================================================================
/*
 Filter
        : Duyệt qua tất cả các phần tử có trong mảng và lấy ra các phần tử thoả mãn
            điều kiện đã cho vào một mảng mới
 */
let filterArr = [Int](0...10)
let mangvuanay = [2,3,-4]
//cach 1
let filter1 = filterArr.filter { (data) -> Bool in
    data % 2 == 0
}
//vẫn là cach 1
let filterpoint = mangvuanay.filter { (data) -> Bool in
    data + 4 >= 7 && data + 4 <= 10
}


//==============================================================================
/*
 Reduce
        : sử dụng để kết hợp tất cả các phần tử trong mảng thành một kết quả đầu ra
 */
    let arrAbc = [5,1,1,1,1,1,1,1,1,1000]
//number
var ketqua = arrAbc.reduce(1, *) //print 5000
//string
var aString = ["dasd","dasdas","dasdsad"]
var finalll = aString.reduce("", +) //print "dasddasdasdasdsad"
//mmot cach nua

let addNUm = [1,2,3,4,5,6,7,8,9,10]
addNUm.reduce(0) { result, value in
    result + value
}

//==============================================================================
/*
 Flatmap
        : sử dụng để chuyển dữ liệu kiểu collection (tức mảng trong mảng) về dang colleciton
 */
 let aCollection = [[1,2,3], [4,5,6], [7,8,9]]
//chuyển dữ liệu kkieeur collection về array
let flat = aCollection.flatMap { data in
    data
}

// loại bỏ những giá trị nil khong mong muốn
let people: [String?] = ["Ling",nil,"Dieu",nil,"Nguyen",nil]
let flatNil = people.compactMap{ $0 }
flatNil


let anotherArrayNIl: [String?] = ["Phuong",nil,"Minh",nil,"Nguyen",nil]
let fulname = anotherArrayNIl.compactMap{ $0}

//==============================================================================
/*
 Chaining
         : cho phép sử dụng kết quả của map filter reduce trước làm đầu vào cho map filter reduce sau
           ==>> nghĩa là có thể map xong mà filter luôn trên kêt quả đó
 */

// Ví dụ: tính tổng của các số lớn hơn 7  = 7 trong mảng
let motmang = [2,4,6,8,2,7,9]

let chungta = motmang.filter{ $0 >= 7 }.reduce(0, +)


//ví dụ: tìm ra các số có luỹ thừa chẵn trong mảng

let motmangkhac = [2,3,6,8,7,4,5,8,7,45]

let laimotmang = motmangkhac.map { $0 * $0 }.filter{ $0 % 2 != 0 }

print(laimotmang)

//==============================================================================
