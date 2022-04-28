//
//  Metric.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 28.04.2022.
//

import UIKit

extension HorizontalSectionCell {
    enum Metric {
        
        static let cornerRadius = 8.0
        
        static let iconLeftAnchorConstant = 10.0
        static let iconRightAnchorConstant = -10.0
        static let iconTopAnchorConstant = 10.0
        
        static let titleLeftAnchorConstant = 10.0
        static let titleRightAnchorConstant = -10.0
        static let titleTopAnchorConstant = 5.0
        static let titleHeightArchorConstant = 18.0
        
        static let subTitleLeftAnchorConstant = 10.0
        static let subTitleRightAnchorConstant = -10.0
        static let subTitleTopAnchorConstant = 5.0
        static let subTitleHeightArchorConstant = 18.0
    }
}

extension VerticalSectionCell {
    enum Metric {
        static let iconWidthAnchorConstant = 38.0
        static let iconHeightAnchorConstant = 25.0
        
        static let accessoryIconTrailingAnchorConstant = -20.0
        static let accessoryIconWidthAnchorConstant = 9.0
        static let accessoryIconHeightAnchorConstant = 14.0
        
        static let titleLeadingArchorConstant = 10.0
        static let titleFontSize = 22.0
        
        static let subTitleTrailingArchorConstant = -10.0
        
        static let lineTopAnchorConstant = -1.0
        static let lineHeightAnchorConstant = 1.0
    }
}

extension FirstSectionHeader {
    enum Metric {
        static let lineLeadingArchorConstant = 10.0
        static let lineHeightAnchorConstant = 1.0
        
        static let titleLeadingArchorConstant = 10.0
        static let titleCenterYAnchorConstant = 20.0
        static let titleHeightAnchorConstant = 20.0
        static let titleFontSize = 25.0
        
        static let buttonTrailingArchorConstant = -20.0
        static let buttonCenterYAnchorConstant = 24.0
    }
}

extension SectionHeader {
    enum Metric {
        static let lineLeadingArchorConstant = 10.0
        static let lineHeightAnchorConstant = 1.0
        
        static let titleLeadingArchorConstant = 10.0
        static let titleCenterYAnchorConstant = 20.0
        static let titleHeightAnchorConstant = 20.0
        static let titleFontSize = 25.0
    }
}
