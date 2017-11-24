//
//  ViewController.swift
//  List
//
//  Created by Administrator on 2017. 11. 24..
//  Copyright © 2017년 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	let titleElements = ["언어", "효과", "추천단어","입력", "레이아웃", "테마", "정보"]
	let subTitleElements = ["언어 및 키보드 형식", "효과음, 진동, 프리뷰", "추천단어바, 자동대체, 주소록 동기화","영역보정, 연속입력", "숫자키 추가, 화면 분할, 숫자 및 기호", "스토어, 보관함", "설정 초기화, 이메일 보내기, 버전"]
	let imageElements = ["set_ico_01", "set_ico_02", "set_ico_03","set_ico_05", "set_ico_06", "set_ico_07", "set_ico_08"]
	
	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		
		tableView.delegate = self
		tableView.dataSource = self
		
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
	}
	
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return titleElements.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 70
	}
	
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
		
//		cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
		cell.settingLbl.text = titleElements[indexPath.row]
		cell.settingImage.image = UIImage(named: imageElements[indexPath.row])
		cell.settingSubLbl.text = subTitleElements[indexPath.row]
//		cell.settingImage.layer.cornerRadius = cell.settingImage.frame.height / 2

		return cell
	}
	
	public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let storyboard: UIStoryboard = self.storyboard!
		
		if indexPath.row == 0 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "LanguageView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 1 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "EffectView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 2 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "RecommandView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 3 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "InputView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 4 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "LayoutView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 5 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "ThemeView")
			present(nextView, animated: true, completion: nil)
		} else if indexPath.row == 6 {
			let nextView = storyboard.instantiateViewController(withIdentifier: "InfoView")
			present(nextView, animated: true, completion: nil)
		}
	}
	
	
}

