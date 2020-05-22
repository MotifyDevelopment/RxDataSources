//
//  AnimationConfiguration.swift
//  RxDataSources
//
//  Created by Esteban Torres on 5/2/16.
//  Copyright © 2016 Krunoslav Zaher. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import Foundation
    import UIKit

    /**
     Exposes custom animation styles for insertion, deletion and reloading behavior.
     */
    public struct AnimationConfiguration {
        public let insertAnimation: UITableView.RowAnimation
        public let reloadAnimation: UITableView.RowAnimation
        public let deleteAnimation: UITableView.RowAnimation

        // Allows to use custom animation instead of system provided one for items
        // at index paths that were filtered out
        // Parameters: an array of index paths for items that need reloading
        // Returns: an array of index paths for items that should be reloaded with reloadAnimation
        public let handleCustomReloadAnimation: (([IndexPath]) -> [IndexPath])?

        public init(insertAnimation: UITableView.RowAnimation = .automatic,
                    reloadAnimation: UITableView.RowAnimation = .automatic,
                    deleteAnimation: UITableView.RowAnimation = .automatic,
                    handleCustomReloadAnimation: (([IndexPath]) -> [IndexPath])? = nil) {
            self.insertAnimation = insertAnimation
            self.reloadAnimation = reloadAnimation
            self.deleteAnimation = deleteAnimation
            self.handleCustomReloadAnimation = handleCustomReloadAnimation
        }
    }
#endif
