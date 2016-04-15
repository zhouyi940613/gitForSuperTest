//
//  ForthViewController.m
//  WorkInFirstDay
//
//  Created by apple on 16/4/12.
//  Copyright © 2016年 YLKJ. All rights reserved.
//

#import "ForthViewController.h"
#import "MyCell.h"

@interface ForthViewController ()

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // register cell
    [self.collectionView registerClass:[MyCell class] forCellWithReuseIdentifier:@"myReuse"];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 12;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"myReuse" forIndexPath:indexPath];
    
    cell.myImageView.image = [UIImage imageNamed:@"btn.jpg"];
    cell.myLabel.text = [NSString stringWithFormat:@"%ld, %ld", (long)indexPath.row, (long)indexPath.section];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.navigationController popViewControllerAnimated:YES];
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
