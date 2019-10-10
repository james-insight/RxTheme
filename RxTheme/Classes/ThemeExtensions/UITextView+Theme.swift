//
//  Created by duan on 2018/3/7.
//  2018 Copyright (c) RxSwiftCommunity. All rights reserved.
//

#if os(iOS) || os(tvOS)

import UIKit
import RxSwift
import RxCocoa


public extension ThemeProxy where Base: UITextView {

    /// (set only) bind a stream to font
    var font: ThemeSignal<UIFont?> {
        @available(*, unavailable)
        get { fatalError("Should use set only") }
        set {
            let disposable = newValue.bind(to: base.theme.binder(\.font))
            hold(disposable, for: "font")
        }
    }

    /// (set only) bind a stream to textColor
    var textColor: ThemeSignal<UIColor?> {
        @available(*, unavailable)
        get { fatalError("Should use set only") }
        set {
            let disposable = newValue.bind(to: base.theme.binder(\.textColor))
            hold(disposable, for: "textColor")
        }
    }

    /// (set only) bind a stream to keyboardAppearance
    var keyboardAppearance: ThemeSignal<UIKeyboardAppearance> {
        @available(*, unavailable)
        get { fatalError("Should use set only") }
        set {
            let disposable = newValue.bind(to: base.theme.binder(\.keyboardAppearance))
            hold(disposable, for: "keyboardAppearance")
        }
    }

}
#endif
