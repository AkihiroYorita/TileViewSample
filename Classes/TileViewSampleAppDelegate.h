//
//  TileViewSampleAppDelegate.h
//  TileViewSample
//
//  Created by いろは クリエイティブ on 10/09/01.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TileViewSampleViewController;

@interface TileViewSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TileViewSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TileViewSampleViewController *viewController;

@end

