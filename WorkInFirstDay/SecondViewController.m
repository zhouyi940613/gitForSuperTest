//
//  SecondViewController.m
//  WorkInFirstDay
//
//  Created by apple on 16/4/11.
//  Copyright © 2016年 YLKJ. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@property(nonatomic, strong) UICollectionView *collectionView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"NEXT >" style:UIBarButtonItemStyleDone target:self action:@selector(nextAction:)];
    
    
    // get array for nib view
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    // get the first UIView
    UIView *tmpCustomView = [nib objectAtIndex:0];
    // get the frame of screen
    CGRect tmpFrame = [[UIScreen mainScreen] bounds];
    // set the center of custom view as the center of screen
    [tmpCustomView setCenter:CGPointMake(tmpFrame.size.width / 2, tmpFrame.size.height / 2)];
    // add view
    [self.view addSubview:tmpCustomView];
    
    
    
    
}

- (void)nextAction:(UIBarButtonItem *)btn{
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
