//
//  CustomTableViewCell.swift
//  List
//
//  Created by Administrator on 2017. 11. 24..
//  Copyright © 2017년 Administrator. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
	
	@IBOutlet weak var cellView: UIView!
	@IBOutlet weak var settingImage: UIImageView!
	@IBOutlet weak var settingLbl: UILabel!
	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}
}

