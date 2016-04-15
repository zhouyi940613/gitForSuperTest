//
//  ThirdViewController.m
//  WorkInFirstDay
//
//  Created by apple on 16/4/12.
//  Copyright © 2016年 YLKJ. All rights reserved.
//

#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor grayColor];
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"美国", @"菲律宾", @"黄岩岛", @"中国", @"泰国", @"越南", @"老挝", nil];
    self.list = array;
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *reuse = @"reuse";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuse];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:reuse];
    }
    
    NSUInteger row = indexPath.row;
    cell.textLabel.text = [self.list objectAtIndex:row];
    
    UIImage *image = [UIImage imageNamed:@"btn.jpg"];
    cell.imageView.image = image;
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ForthViewController *forthVC = [[ForthViewController alloc] init];
    [self.navigationController pushViewController:forthVC animated:YES];
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
