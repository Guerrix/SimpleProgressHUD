//
//  ViewController.m
//  SimpleProgressHUD
//
//  Created by Jesus Guerra Rosas on 2/21/12.
//  Copyright (c) Guerrix. All rights reserved.
//

#import "ViewController.h"
#import "ProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void)stopHUD{
    [[ProgressHUD defaultHUD] hideActivityIndicator];
}

- (IBAction)showHUD:(id)sender {
    [[ProgressHUD defaultHUD] showInView:self.view];
    [self performSelector:@selector(stopHUD) withObject:self afterDelay:3.0];
}
@end
