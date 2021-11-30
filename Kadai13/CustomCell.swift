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

    func configure(item: ListItem) {
        fruitsLabel.text = item.name
        // 三項演算子で記述
        checkMarkImageView.image = item.isMarked ? UIImage(named: "checkmark") : nil
    }
}
