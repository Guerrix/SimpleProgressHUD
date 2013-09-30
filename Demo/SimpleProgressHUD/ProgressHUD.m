//  Created by Jesus Guerra Rosas on 2/21/12.
//  Copyright (c) Guerrix. All rights reserved.

#import "ProgressHUD.h"

@implementation ProgressHUD

#define DEFAULT_WIDTH 110
#define DEFAULT_HEIGHT 100
#define LOADING_TEXT @"Loading..."

+ (ProgressHUD *) defaultHUD {
    static ProgressHUD *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[ProgressHUD alloc] initWithFrame:CGRectMake(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT)];
    });
    
    return shared;
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
		
		self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | 
        UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
        
        // Initialization code.
		double offset = DEFAULT_HEIGHT/2.0;
		self.loadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, DEFAULT_HEIGHT-2*offset/3.0, DEFAULT_WIDTH, offset/2)];
        self.loadingLabel.textAlignment=UITextAlignmentCenter;
		self.loadingLabel.backgroundColor=[UIColor clearColor];
		self.loadingLabel.font=[UIFont boldSystemFontOfSize:14];
		self.loadingLabel.textColor=[UIColor whiteColor];
        
        self.loadingLabel.text = LOADING_TEXT;
		
		self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT)];
        self.backgroundView.alpha=0.65;
		self.backgroundView.backgroundColor=[UIColor blackColor];
        self.backgroundView.layer.cornerRadius=10;
		
        
        self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        self.activityIndicator.center=CGPointMake( DEFAULT_WIDTH/2, DEFAULT_HEIGHT/3);
		[self.activityIndicator startAnimating];

		[self addSubview:self.backgroundView];
		[self addSubview:self.loadingLabel];
        [self addSubview:self.activityIndicator];
		
    }
    return self;
}

-(void)setLoadingText:(NSString *)loadingText{
	self.loadingLabel.text=loadingText;
}

-(void) showInView:(UIView*)view {
	self.alpha = 1.0;
    self.transform = CGAffineTransformMakeScale(1, 1);
    self.center = CGPointMake(view.bounds.size.width/2.0, view.bounds.size.height/2.0);
    [view addSubview:self];
}

-(void) hideActivityIndicator {
    [self removeFromSuperview];
}

#pragma Setters

- (UILabel *)loadingLabel
{
    if (!_loadingLabel) {
        _loadingLabel = [[UILabel alloc] init];
    }
    return _loadingLabel;
}

- (UIView *)backgroundView
{
    if (!_backgroundView) {
        _backgroundView = [[UIView alloc] init];
    }
    return _backgroundView;
}

- (UIActivityIndicatorView *)activityIndicator
{
    if (!_activityIndicator) {
        _activityIndicator = [[UIActivityIndicatorView alloc] init];
    }
    return _activityIndicator;
}
@end
