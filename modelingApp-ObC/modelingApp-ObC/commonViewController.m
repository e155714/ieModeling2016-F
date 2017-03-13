
//
//  commonViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "commonViewController.h"

@interface commonViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation commonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableView.delegate = self;
    tableView.dataSource = self;
    commonData = [NSUserDefaults standardUserDefaults];
    
    
    if ([commonData objectForKey:@"共通"]){
        nsArray = [commonData objectForKey:@"共通"];
        commonArray = [nsArray mutableCopy];
    }else{
        commonArray = [NSMutableArray array];
    }
    
}

//セルの個数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return commonArray.count;
}

//セルの中身
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UILabel *label= (UILabel *)[cell viewWithTag:1];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    label.text = [commonArray objectAtIndex:indexPath.row];
    return cell;
}

//セルをタップした時の処理
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

//セルを削除
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellStyleDefault){
        //Delete時の処理をここに書く
        
    }
}

-(IBAction)commonTap{
    //textfieldが空ではない時
    if (touroku.text.length !=0) {
        //commonArrayの０番目　に追加
        [commonArray insertObject:touroku.text atIndex:0];
        NSLog(@"%@",commonArray);
        //commonArrayの保存
        [commonData setObject:commonArray forKey:@"共通"];
        [commonData synchronize];
        
        
        //textfileldを空白にする
        touroku.text= @"";
        
        //tableviewをreload
        [tableView reloadData];
        NSLog(@"%@",commonArray);
        
    }
}

-(IBAction)commondl{
    [commonData removeObjectForKey:@"共通"];
    [commonData synchronize];
    [tableView reloadData];
    [self performSegueWithIdentifier:@"modoruSegue" sender:nil];
}



-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
