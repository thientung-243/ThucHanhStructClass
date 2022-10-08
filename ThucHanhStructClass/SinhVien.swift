//
//  SinhVien.swift
//  ThucHanhStructClass
//
//  Created by Tung Vu Thien on 01/10/2022.
//

import Foundation

struct SinhVien {
    // Properties
    var maSV: String
    var tenSV: String
    var diemToan: Float
    var diemLy: Float
    var diemHoa: Float
    var diemTB: Float
    
    init(maSV: String, tenSV: String, diemToan: Float, diemLy: Float, diemHoa: Float) {
        self.maSV = maSV
        self.tenSV = tenSV
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
        self.diemTB = (diemToan+diemLy+diemHoa)/3
    }
    
    // Một phương thức mutating có thể thay đổi giá trị của thuộc tính
    mutating func saveDiemToan(newToan: Float) {
        self.diemToan = newToan
        self.diemTB = (diemToan+diemLy+diemHoa)/3
    }
}
