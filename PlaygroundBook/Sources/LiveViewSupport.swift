//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.
public func instantiateLiveView(_ controller: Controller) -> PlaygroundLiveViewable {
    
    var liveView: PlaygroundLiveViewable
    
    switch controller {
        case .first:
            liveView = FirstViewController()
        case .second:
            liveView = SecondViewController()
    }
    
    return liveView
}
