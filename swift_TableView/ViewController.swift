//
//  ViewController.swift
//  List
//
//  Created by Administrator on 2017. 11. 24..
//  Copyright © 2017년 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	let elements = ["set_ico_01", "set_ico_02", "set_ico_03", "set_ico_04", "set_ico_05", "set_ico_01", "set_ico_02", "set_ico_03", "set_ico_04", "set_ico_05"]
	
	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		
		tableView.delegate = self
		tableView.dataSource = self
		
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return elements.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
		
		cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
		cell.settingLbl.text = elements[indexPath.row]
		cell.settingImage.image = UIImage(named: elements[indexPath.row])
		cell.settingImage.layer.cornerRadius = cell.settingImage.frame.height / 2
		return cell
	}
	
	
	
}

