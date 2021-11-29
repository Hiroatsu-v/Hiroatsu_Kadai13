//
//  CustomCell.swift
//  Kadai13
//
//  Created by Hiroatsu on 2021/11/29.
//

import UIKit

// Labelの表示とimageViewの表示処理を行うクラス
class CustomCell: UITableViewCell {
    @IBOutlet private weak var fruitsLabel: UILabel!
    @IBOutlet private weak var checkMarkImageView: UIImageView!

    struct List {
        let fruit: String
        var isMarked: Bool
    }

    func configure(name: List, image: List) {
        fruitsLabel.text = name.fruit
        // 三項演算子で記述
        checkMarkImageView.image = image.isMarked == true ? UIImage(named: "chekmark") : UIImage(named: "white")
    }
}
