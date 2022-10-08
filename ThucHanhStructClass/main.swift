//
//  main.swift
//  ThucHanhStructClass
//
//  Created by Tung Vu Thien on 01/10/2022.
//

import Foundation

// Nhập vào 1 mảng sinh viên
// 1. In ra danh sách sinh viên
// 2. In ra những sinh viên có điểm TB > 8
// 3. Tìm sinh viên theo mã SV
// 4. Sắp xếp danh sách sv theo điểm TB tăng dần

//print("Nhập số sinh viên: ")
//let n = Int(readLine() ?? "") ?? 0
//
//// Tạo mảng để chứa n sinh viên
//var arrSinhVien: [SinhVien] = []
//// Nhập vào danh sách sinh viên
//for i in 0..<n {
//    print("Nhập sinh viên thứ \(i+1)")
//    print("Nhập mã SV: ")
//    let maSV = readLine() ?? ""
//    print("Nhập tên SV: ")
//    let tenSV = readLine() ?? ""
//    print("Nhập điểm Toán: ")
//    let toan = Float(readLine() ?? "") ?? 0
//    print("Nhập điểm Lý: ")
//    let ly = Float(readLine() ?? "") ?? 0
//    print("Nhập điểm Hoá: ")
//    let hoa = Float(readLine() ?? "") ?? 0
//
//    let newSV = SinhVien(maSV: maSV, tenSV: tenSV, diemToan: toan, diemLy: ly, diemHoa: hoa)
//    arrSinhVien.append(newSV)
//}
//
//// In ra danh sách tên và điểm TB sinh viên
//for sv in arrSinhVien {
//    print(sv.tenSV, "có điểm TB là", sv.diemTB)
//}

// Tạo 1 mảng các sinh viên sẵn
var arraySV: [SinhVien] = [
    SinhVien(maSV: "01", tenSV: "Nam", diemToan: 8, diemLy: 2, diemHoa: 5),
    SinhVien(maSV: "02", tenSV: "Vu", diemToan: 6.5, diemLy: 1, diemHoa: 4.5),
    SinhVien(maSV: "03", tenSV: "Ha", diemToan: 7.5, diemLy: 10, diemHoa: 8),
    SinhVien(maSV: "04", tenSV: "Linh", diemToan: 10, diemLy: 8.5, diemHoa: 9.5),
    SinhVien(maSV: "05", tenSV: "Toan", diemToan: 8, diemLy: 6.2, diemHoa: 4.5),
]

// In ra danh sách
for sv in arraySV {
    print(sv.tenSV, "có điểm TB là", sv.diemTB)
}

// In ra những sv có điểm TB lớn hơn 8
for sv in arraySV {
    if sv.diemTB > 8 {
        print("\(sv.tenSV) có điểm TB lớn hơn 8: \(sv.diemTB)")
    }
}

// Tìm sinh viên theo mã SV
print("Sinh viên có mã 01 là: ")
for sv in arraySV {
    if sv.maSV.contains("01") {
        print(sv.tenSV, sv.maSV)
        break
    }
}

// Sắp xếp ds sv theo điểm TB tăng dần

let sortArr = arraySV.sorted { svTruoc, svSau in
    // Điều kiện để sắp xếp
    svTruoc.diemTB < svSau.diemTB
}

print("Sắp xếp tăng dần điểm TB")
sortArr.forEach { sv in
    print(sv.tenSV, sv.diemTB)
}

// Sửa thông tin của sv có mã 02
for index in 0..<arraySV.count {
    if arraySV[index].maSV.contains("02") {
        arraySV[index].tenSV = "Hoang Van A"
        arraySV[index].saveDiemToan(newToan: 10)
        break
    }
}
print("Sau khi thay đổi:")
arraySV.forEach { sv in
    print(sv.tenSV, sv.diemToan, sv.diemTB)
}
