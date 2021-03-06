//
//  onboarding.swift
//  Magic Pantry
//
//  Created by Emmett Shaughnessy on 2/21/21.
//  Copyright © 2021 Emmett Shaughnessy. All rights reserved.
//

import UIKit
import paper_onboarding

class onboarding: PaperOnboarding {

    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        guard let MPTitleFont = UIFont(name: "PublicSans-ExtraBold.otf", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "PublicSans-ExtraBold.otf" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        
        guard let MPDescFont = UIFont(name: "PublicSans-Thin.otf", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "PublicSans-ExtraBold.otf" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        
        let MPRedColor = UIColor(red: 250, green: 62, blue: 62, alpha: 1)

       return [
        OnboardingItemInfo(informationImage: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                                       title: "title",
                                 description: "description",
                                 pageIcon: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                                       color: MPRedColor,
                                  titleColor: UIColor.white,
                            descriptionColor: UIColor.white,
                            titleFont: MPTitleFont,
                             descriptionFont: MPDescFont),

        OnboardingItemInfo(informationImage: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                                        title: "title",
                                  description: "description",
                                  pageIcon: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                                        color: MPRedColor,
                                   titleColor: UIColor.white,
                             descriptionColor: UIColor.white,
                             titleFont: MPTitleFont,
                              descriptionFont: MPDescFont),

        OnboardingItemInfo(informationImage: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                                     title: "title",
                               description: "description",
                               pageIcon: UIImage(imageLiteralResourceName: "ItunesArtwork@2x.png"),
                               color: MPRedColor,
                                titleColor: UIColor.white,
                          descriptionColor: UIColor.white,
                            titleFont: MPTitleFont,
                           descriptionFont: MPDescFont)
         ][index]
     }

     func onboardingItemsCount() -> Int {
        return 3
      }

}
