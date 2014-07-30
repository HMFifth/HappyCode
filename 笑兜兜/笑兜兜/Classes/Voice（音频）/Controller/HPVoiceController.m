//
//  HPVoiceController.m
//  提升幸福感
//
//  Created by shaun on 14-7-29.
//  Copyright (c) 2014年 cn.happy. All rights reserved.
//

#import "HPVoiceController.h"

@interface HPVoiceController ()

@end

@implementation HPVoiceController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 设置导航栏按钮
//    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_friendsearch" highImageName:@"navigationbar_friendsearch_highlighted" target:self action:@selector(friendSearch)];
    UIView *vi = [[UIView alloc] init];
    vi.width = 80;
    vi.height = 30;
    vi.backgroundColor = HPRandomColor;
    self.navigationItem.titleView = vi;
    
    
    
    
    
}



#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] init];
    }
    
    cell.textLabel.text = @"真好笑";
    
    return cell;
}

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    
}

//-(void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    
//    CGFloat cy = self.tableView.contentOffset.y + 264;
//    
//    if (cy > 0) {
//        
//        double scale = cy / 200;
////        [self changeTitleViewWithScale:scale];
//    }
//    
//}







-(void)changeTitleViewWithScale:(double)scale
{
    NSLog(@"%f", scale);
    self.navigationItem.titleView.transform = CGAffineTransformScale(self.navigationItem.titleView.transform, scale, scale);
}

@end
