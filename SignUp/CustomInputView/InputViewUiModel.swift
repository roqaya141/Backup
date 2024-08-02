//
//  InputViewUiModel.swift
//  FinalProjectBM
//
//  Created by SONOMA on 01/08/2024.
//

import Foundation

struct InputViewUiModel {
    var titleLabel: String?
    var placeHolder: String?
    var imageName: String?
    var inputType: keyBoardTextField?
}

public enum keyBoardTextField {
    case passward
    case email
    case none
    case creditCardNo
}
