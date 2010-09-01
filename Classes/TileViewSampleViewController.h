//
//  TileViewSampleViewController.h
//  TileViewSample
//
//  Created by いろは クリエイティブ on 10/09/01.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TileView;

@interface TileViewSampleViewController : UIViewController<UIScrollViewDelegate> {
	TileView *tileView;
	UIScrollView *scrollView;
	UIImageView *imageView;

}
@property (nonatomic, retain)UIScrollView *scrollView;
@property (nonatomic, retain)UIImageView *imageView;

@end

