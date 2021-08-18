//
//  WordControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 17.08.2021.
//

import UIKit

final class WordControl: UIControl {

    var selectLetter: String? = nil {
        didSet {
            self.sendActions(for: .valueChanged)
        }
    }

    private var letters = [String]() {
        didSet {
            setupViews()
        }
    }

    private var buttons = [UIButton]()
    private var stackView: UIStackView!

    override func layoutSubviews() {
        super.layoutSubviews()
        setupUIView()
    }
    func setLetters(_ letters: [String]) {
        self.letters = letters
    }
    private func setupViews() {
        for letter in letters {
            let button = UIButton(type: .system)
            button.backgroundColor = .clear
            button.setTitle(letter, for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.addTarget(self, action: #selector(selectedLetter(_:)), for: .touchUpInside)
            self.buttons.append(button)
        }
        stackView = UIStackView(arrangedSubviews: self.buttons)
        addSubview(stackView)
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.layer.cornerRadius = 20
    }
    @objc private func selectedLetter(_ sender: UIButton) {
        guard let index = self.buttons.firstIndex(of: sender) else {
            return
        }
        self.selectLetter = letters[index]
    }
   private func setupUIView() {
        stackView.frame = bounds
    stackView.layer.borderWidth = 0.2
    stackView.layer.backgroundColor = UIColor.white.cgColor
        stackView.alpha = 0.3
    }
}
