//
//  Created by duan on 2018/3/7.
//  2018 Copyright (c) RxSwiftCommunity. All rights reserved.
//

#if os(iOS) || os(tvOS) || os(macOS)

import Foundation
import UIKit
import RxSwift
import RxCocoa


public extension Reactive where Base: CAShapeLayer {

    /// Bindable sink for `strokeColor` property
    var strokeColor: Binder<CGColor?> {
        return Binder(self.base) { view, attr in
            view.strokeColor = attr
        }
    }

    /// Bindable sink for `fillColor` property
    var fillColor: Binder<CGColor?> {
        return Binder(self.base) { view, attr in
            view.fillColor = attr
        }
    }

}
#endif
