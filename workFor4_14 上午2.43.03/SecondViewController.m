//
//  SecondViewController.m
//  workFor4_14
//
//  Created by apple on 16/4/14.
//  Copyright © 2016年 CloudAvant. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)dealloc{
    
}

- (void)update{
    
    NSLog(@"update!!");
    self.showLabel.text = self.nameTextField.text;
}

- (void)changeShowLabelText{
    
//    self.showLabel.text = self.nameTextField.text;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateName" object:nil];
}

- (void)changeDownerTextFieldContent{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(update) name:@"updateName" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeDownerTextFieldContent) name:@"changeContent" object:nil];
    
    
    
    
    [self.nameTextField addTarget:self action:@selector(changeShowLabelText) forControlEvents:UIControlEventEditingChanged];
    
    
    
    
}

- (void)viewWillDisappear:(BOOL)animated{
    
    
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
