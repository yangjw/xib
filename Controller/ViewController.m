//
//  ViewController.m
//  Controller
//
//  Created by yangjw  on 14-5-28.
//  Copyright (c) 2014年 yangjw . All rights reserved.
//

#import "ViewController.h"
#import "POPController.h"
#import "FileOwner.h"
#import "UIView+help.h"
#import "View5.h"

@interface ViewController ()
{
	UIPopoverController *popoverController;
}
@property (nonatomic, weak) IBOutlet UIView *referencedView;

- (IBAction)pop:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	
	NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"View1" owner:nil options:nil];
	UIView *v = [array lastObject];
	CGRect r = v.frame;
	r.origin.y +=100;
//	r.origin.x +=300;
	v.frame = r;
	[self.view addSubview:v];
	
	
	[[NSBundle mainBundle] loadNibNamed:@"View2" owner:self options:nil];
	
	r = _referencedView.frame;
	
	r.origin.y = v.frame.size.height + v.frame.origin.y;
	
	_referencedView.frame = r;
	
	[self.view addSubview:_referencedView];
	
	FileOwner *owner = [FileOwner new];
	
	[[NSBundle mainBundle] loadNibNamed:@"View3" owner:owner options:nil];
	
	r = owner.view.frame;
	
	r.origin.y = _referencedView.frame.origin.y + _referencedView.frame.size.height;
	
	owner.view.frame = r;
	
	[self.view addSubview:owner.view];
	
	
	
	UIView *v4 = [UIView loadFromNibNamed:@"View4"];
	
	r = v4.frame;
	
	r.origin.y = owner.view.frame.origin.y + owner.view.frame.size.height;
	
	v4.frame = r;
	
	[self.view addSubview:v4];
	
	View5 *v5 = [View5 loadFromNib];
	
	r = v5.frame;
	
	r.origin.y = v4.frame.origin.y + v4.frame.size.height;
	
	v5.frame = r;
	
	[self.view addSubview:v5];
	
	UIView *v6 = [[UIViewController alloc] initWithNibName:@"View6" bundle:nil].view;
	
	r = v6.frame;
	
	r.origin.y = v5.frame.origin.y + v5.frame.size.height;
	
	v6.frame = r;
	
	[self.view addSubview:v6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pop:(id)sender
{
	POPController *popvc=  [[POPController alloc] init];
	
	self.modalPresentationStyle = UIModalPresentationCurrentContext;
	[self presentViewController:popvc animated:YES completion:nil];
}
@end
