//
//  TileViewSampleViewController.m
//  TileViewSample
//
//  Created by いろは クリエイティブ on 10/09/01.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "TileViewSampleViewController.h"
#import "TileView.h"

@implementation TileViewSampleViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	int i, j, width, height, row = 86;
	
//	width = self.view.bounds.size.width / 4;
//	height = self.view.bounds.size.height / 6;
	width = 128;
	height = 128;
    [super viewDidLoad];
	
	imageView = [[UIImageView alloc]init];
	imageView.frame = CGRectMake(0, 0, 768, height * row);
	
	//スクロールビュー
	scrollView = [[[UIScrollView alloc]initWithFrame:self.view.bounds]autorelease];
	scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	
	for (j=0;j<row ; j++) {
		for (i=0; i<6; i++) {
			tileView = [[TileView alloc]init];
			tileView.backgroundColor = [UIColor colorWithHue:0.5 saturation:0.3 brightness:1-0.01*i-0.01*j alpha:1];
			tileView.frame = CGRectMake( i * width, j * height, width, height);
			[imageView addSubview:tileView];
		}
	}
//	scrollView.contentSize.height = height * 12;
//	scrollView.contentSize.width = tileView.bounds.size.width * 6;
//	printf("%f ", imageView.frame.size.width);
	[scrollView addSubview:imageView];
	[self.view addSubview:scrollView];
	scrollView.contentSize = imageView.bounds.size;
	
	//拡大縮小
	scrollView.delegate = self;
	scrollView.minimumZoomScale = 1.0f;
	scrollView.maximumZoomScale = 3.0f;
}

//拡大縮小対応
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	for (id subview in scrollView.subviews) {
		if ([subview isKindOfClass:[UIImageView class]]) {
			return subview;
		}
	}
	return nil;
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[tileView release];
	[imageView release];
    [super dealloc];
}

@end
