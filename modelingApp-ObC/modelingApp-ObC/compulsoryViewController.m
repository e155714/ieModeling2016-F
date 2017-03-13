//
//  compulsoryViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "compulsoryViewController.h"

@interface compulsoryViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation compulsoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableView.delegate = self;
    tableView.dataSource = self;
    compulsoryData = [NSUserDefaults standardUserDefaults];
    
    
    if ([compulsoryData objectForKey:@"必修"]){
        nsArray = [compulsoryData objectForKey:@"必修"];
        compulsoryArray = [nsArray mutableCopy];
    }else{
        compulsoryArray = [NSMutableArray array];
    }
    
}

//セルの個数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return compulsoryArray.count;
}

//セルの中身
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UILabel *label= (UILabel *)[cell viewWithTag:1];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    label.text = [compulsoryArray objectAtIndex:indexPath.row];
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

-(IBAction)tourokuTap{
    //textfieldが空ではない時
    if (touroku.text.length !=0) {
        //compulsoryArrayの０番目　に追加
        [compulsoryArray insertObject:touroku.text atIndex:0];
        NSLog(@"%@",compulsoryArray);
        //compulsoryArrayの保存
        [compulsoryData setObject:compulsoryArray forKey:@"必修"];
        [compulsoryData synchronize];
        
        
        //textfileldを空白にする
        touroku.text= @"";
        
        //tableviewをreload
        [tableView reloadData];
        NSLog(@"%@",compulsoryArray);
        
    }
}

-(IBAction)dl{
    [compulsoryData removeObjectForKey:@"必修"];
    [compulsoryData synchronize];
    [tableView reloadData];
    [self performSegueWithIdentifier:@"modoruSegue" sender:nil];
}



-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
