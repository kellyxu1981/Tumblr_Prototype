//
//  HomeViewController.m
//  HomeWork3
//
//  Created by Kelly Xu on 3/20/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (strong, nonatomic) IBOutlet UIView *loadingView;
@property (nonatomic,strong) UIImageView *customActivityIndicator;
@property (strong, nonatomic) IBOutlet UIImageView *homeImage;

@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *loginFrame;
@property (strong, nonatomic) IBOutlet UIView *topbarView;


- (IBAction)onLoginButton:(id)sender;
- (IBAction)onCancelButton:(id)sender;
- (IBAction)onTap:(id)sender;
@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self homeImageAnimation];
    // Do any additional setup after loading the view from its nib.

    self.scrollView.contentSize = CGSizeMake(326, 580);
    self.scrollView.alpha = 0;
    self.loginFrame.alpha = 0;
    
    //create a custom loading bar
    self.customActivityIndicator = [[UIImageView alloc] initWithFrame:self.loadingView.frame];

    
    self.customActivityIndicator.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"loading1.png"],[UIImage imageNamed:@"loading2.png"],[UIImage imageNamed:@"loading2.png"],nil];
    self.customActivityIndicator.animationDuration = 0.3; // in seconds
    self.customActivityIndicator.animationRepeatCount = 0; // sets to loop
    
    [self.customActivityIndicator startAnimating]; // starts animating
    [self.view addSubview:self.customActivityIndicator];

    [self performSelector:@selector(loadScrollView) withObject:nil afterDelay:1.5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)onLoginButton:(id)sender {
    self.scrollView.userInteractionEnabled = NO;
    self.topbarView.userInteractionEnabled = NO;
    [self.emailTextField becomeFirstResponder];
    CGRect frame = self.loginFrame.frame;
    frame.origin.y -= 50;
    [UIView animateWithDuration:0.3 animations:^{
        self.loginFrame.alpha = .95;
        self.loginFrame.frame = frame;
    }];

    
}

- (IBAction)onCancelButton:(id)sender {
    [self cancelTextForm];

}


- (IBAction)onTap:(id)sender {
    [self cancelTextForm];

}

#pragma mark - private method

-(void)loadScrollView{
    [UIView animateWithDuration:0.3 animations:^{
        self.scrollView.alpha = 1;
        [self.customActivityIndicator stopAnimating];
        
    }];
}

- (void)cancelTextForm {
    self.scrollView.userInteractionEnabled = YES;
    self.topbarView.userInteractionEnabled = YES;
    [self.view endEditing:YES];
    CGRect frame = self.loginFrame.frame;
    frame.origin.y += 50;
    [UIView animateWithDuration:0.3 animations:^{
        self.loginFrame.alpha = 0;
        self.loginFrame.frame = frame;
    }];
}

-(void)homeImageAnimation{
    self.homeImage.animationImages = [NSArray arrayWithObjects:
                                      [UIImage imageNamed:@"homeImage1.png"],
                                      [UIImage imageNamed:@"homeImage2.png"],
                                      [UIImage imageNamed:@"homeImage3.png"],
                                      [UIImage imageNamed:@"homeImage4.png"],
                                      [UIImage imageNamed:@"homeImage5.png"],
                                      [UIImage imageNamed:@"homeImage6.png"],
                                      [UIImage imageNamed:@"homeImage7.png"],
                                      [UIImage imageNamed:@"homeImage8.png"],
                                      [UIImage imageNamed:@"homeImage9.png"],
                                      [UIImage imageNamed:@"homeImage10.png"],
                                      [UIImage imageNamed:@"homeImage11.png"],
                                      [UIImage imageNamed:@"homeImage12.png"],
                                      [UIImage imageNamed:@"homeImage13.png"],
                                      [UIImage imageNamed:@"homeImage14.png"],
                                      [UIImage imageNamed:@"homeImage15.png"],
                                      [UIImage imageNamed:@"homeImage16.png"],
                                      [UIImage imageNamed:@"homeImage17.png"],
                                      [UIImage imageNamed:@"homeImage18.png"],
                                      [UIImage imageNamed:@"homeImage19.png"],
                                      [UIImage imageNamed:@"homeImage20.png"],
                                      [UIImage imageNamed:@"homeImage21.png"],
                                      [UIImage imageNamed:@"homeImage22.png"],
                                      [UIImage imageNamed:@"homeImage23.png"],
                                      [UIImage imageNamed:@"homeImage24.png"],
                                      [UIImage imageNamed:@"homeImage25.png"],
                                      [UIImage imageNamed:@"homeImage26.png"],
                                      [UIImage imageNamed:@"homeImage27.png"],
                                      [UIImage imageNamed:@"homeImage28.png"],
                                      [UIImage imageNamed:@"homeImage29.png"],
                                      [UIImage imageNamed:@"homeImage30.png"],

                                      nil];
    self.homeImage.animationDuration = 1.5;
    self.homeImage.animationRepeatCount = 0;
    [self.homeImage startAnimating];
}

@end
