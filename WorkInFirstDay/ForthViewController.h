//
//  ForthViewController.h
//  WorkInFirstDay
//
//  Created by apple on 16/4/12.
//  Copyright © 2016年 YLKJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForthViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
