//
//  Created by duan on 2018/3/7.
//  2018 Copyright (c) RxSwiftCommunity. All rights reserved.
//

#if os(iOS) || os(tvOS) || os(macOS)

import Foundation
import UIKit
import RxSwift
import RxCocoa


public extension ThemeProxy where Base: CALayer {

    /// (set only) bind a stream to backgroundColor
    var backgroundColor: Observable<CGColor?> {
        get { return .empty() }
        set {
            let disposable = newValue
                .takeUntil(base.rx.deallocating)
                .observeOn(MainScheduler.instance)
                .bind(to: base.rx.backgroundColor)
            hold(disposable, for: "backgroundColor")
        }
    }

    /// (set only) bind a stream to borderWidth
    var borderWidth: Observable<CGFloat> {
        get { return .empty() }
        set {
            let disposable = newValue
                .takeUntil(base.rx.deallocating)
                .observeOn(MainScheduler.instance)
                .bind(to: base.rx.borderWidth)
            hold(disposable, for: "borderWidth")
        }
    }

    /// (set only) bind a stream to borderColor
    var borderColor: Observable<CGColor?> {
        get { return .empty() }
        set {
            let disposable = newValue
                .takeUntil(base.rx.deallocating)
                .observeOn(MainScheduler.instance)
                .bind(to: base.rx.borderColor)
            hold(disposable, for: "borderColor")
        }
    }

    /// (set only) bind a stream to shadowColor
    var shadowColor: Observable<CGColor?> {
        get { return .empty() }
        set {
            let disposable = newValue
                .takeUntil(base.rx.deallocating)
                .observeOn(MainScheduler.instance)
                .bind(to: base.rx.shadowColor)
            hold(disposable, for: "shadowColor")
        }
    }

}
#endif
