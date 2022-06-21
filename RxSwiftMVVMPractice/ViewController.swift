//
//  ViewController.swift
//  RxSwiftMVVMPractice
//
//  Created by 山田　天星 on 2022/06/17.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var countResetButton: UIButton!
    
    private let disposeBug = DisposeBag()
    
    private var viewModel: CounterRxViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }

    func setupViewModel() {
        viewModel = CounterRxViewModel()
        
        let input = CounterViewModelInput(
            countUpButton: countUpButton.rx.tap.asObservable(),
            countDownButton: countDownButton.rx.tap.asObservable(),
            countResetButton: countResetButton.rx.tap.asObservable()
        )
        
        viewModel.setup(input: input)
        viewModel.outputs?.counterText.drive(countLabel.rx.text)
            .disposed(by: disposeBug)
    }
}
