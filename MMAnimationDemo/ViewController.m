//
//  ViewController.m
//  MMAnimationDemo
//
//  Created by yuchen on 2017/3/3.
//  Copyright © 2017年 yuchen. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)pressedNextPage:(id)sender {
//    FirstViewController *first =[[FirstViewController alloc]init];
//    [self.navigationController pushViewController:first animated:NO];
//    CATransition *animation =[MMAnimate getAnimation:8];
//    [self.navigationController.view.layer addAnimation:animation forKey:nil];
//}
#pragma mark -tableview Delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 12;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *const cellID =@"cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
         cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text =[NSString stringWithFormat:@"这是动画--%ld",indexPath.row];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FirstViewController *first =[[FirstViewController alloc]init];
    [self.navigationController pushViewController:first animated:NO];
    CATransition *animate =[MMAnimate getAnimation:indexPath.row+1];
    [self.navigationController.view.layer addAnimation:animate forKey:nil];
}
@end
