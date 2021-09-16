//
//  GroupsCellAnimation.swift
//  VKApp
//
//  Created by Boris Sobolev on 07.09.2021.
//

import UIKit

typealias GroupsCellAnimation = (UITableViewCell, IndexPath, UITableView) -> Void

final class TableViewAnimator {
    private let animation: GroupsCellAnimation
    
    init(animation: @escaping GroupsCellAnimation) {
        self.animation = animation
    }
    
    func animate(cell: UITableViewCell, at indexPath: IndexPath, in tableView: UITableView) {
        animation(cell, indexPath, tableView)
    }
}

///enums providing tableViewCell animations
enum TableAnimationFactory {
    
    /// fades the cell by setting alpha as zero and then animates the cell's alpha based on indexPaths
    static func makeFadeAnimation(duration: TimeInterval, delayFactor: TimeInterval) -> GroupsCellAnimation {
        return { cell, indexPath, _ in
            cell.alpha = 0
            UIView.animate(
                withDuration: duration,
                delay: delayFactor * Double(indexPath.row),
                animations: {
                    cell.alpha = 1
            })
        }
    }
    
    /// fades the cell by setting alpha as zero and moves the cell downwards, then animates the cell's alpha and returns it to it's original position based on indexPaths
    static func makeMoveUpWithFadeAnimation(rowHeight: CGFloat, duration: TimeInterval, delayFactor: TimeInterval) -> GroupsCellAnimation {
        return { cell, indexPath, _ in
            cell.transform = CGAffineTransform(translationX: 0, y: rowHeight * 1.4)
            cell.alpha = 0
            UIView.animate(
                withDuration: duration,
                delay: delayFactor * Double(indexPath.row),
                options: [.curveEaseInOut, .allowUserInteraction],
                animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
                    cell.alpha = 1
            })
        }
    }

    /// moves the cell downwards, then animates the cell's by returning them to their original position based on indexPaths
    static func makeMoveUpAnimation(rowHeight: CGFloat, duration: TimeInterval, delayFactor: TimeInterval) -> GroupsCellAnimation {
        return { cell, indexPath, _ in
            cell.transform = CGAffineTransform(translationX: 0, y: rowHeight * 1.4)
            UIView.animate(
                withDuration: duration,
                delay: delayFactor * Double(indexPath.row),
                options: [.curveEaseInOut],
                animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
            })
        }
    }
    
    /// moves the cell downwards, then animates the cell's by returning them to their original position with spring bounce based on indexPaths
    static func makeMoveUpBounceAnimation(rowHeight: CGFloat, duration: TimeInterval, delayFactor: Double) -> GroupsCellAnimation {
        return { cell, indexPath, tableView in
            cell.transform = CGAffineTransform(translationX: rowHeight, y: 0)
            UIView.animate(
                withDuration: duration,
                delay: delayFactor * Double(indexPath.row),
                usingSpringWithDamping: 0.6,
                initialSpringVelocity: 0.1,
                options: [.curveEaseInOut, .allowUserInteraction],
                animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
            })
        }
    }
}
