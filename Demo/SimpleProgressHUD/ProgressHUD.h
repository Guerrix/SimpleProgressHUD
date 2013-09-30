//  Created by Jesus Guerra Rosas on 2/21/12.
//  Copyright (c) Guerrix. All rights reserved.


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ProgressHUD : UIView

@property (strong, nonatomic) UILabel *loadingLabel;
@property (strong, nonatomic) UIView *backgroundView;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

+ (ProgressHUD *) defaultHUD;
- (void)setLoadingText:(NSString *)loadingText;
- (void) hideActivityIndicator;
- (void) showInView:(UIView*)view;

@end
