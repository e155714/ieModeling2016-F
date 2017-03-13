//
//  selectViewcontroller.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/20.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "selectViewController.h"

@interface selectViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation selectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableView.delegate = self;
    tableView.dataSource = self;
    selectData = [NSUserDefaults standardUserDefaults];
    
    
    if ([selectData objectForKey:@"選択"]){
        nsArray = [selectData objectForKey:@"選択"];
        selectArray = [nsArray mutableCopy];
    }else{
        selectArray = [NSMutableArray array];
    }
    
}

//セルの個数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return selectArray.count;
}

//セルの中身
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UILabel *label= (UILabel *)[cell viewWithTag:1];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    label.text = [selectArray objectAtIndex:indexPath.row];
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

-(IBAction)selectTap{
    //textfieldが空ではない時
    if (touroku.text.length !=0) {
        //selectArrayの０番目　に追加
        [selectArray insertObject:touroku.text atIndex:0];
        NSLog(@"%@",selectArray);
        //selectArrayの保存
        [selectData setObject:selectArray forKey:@"選択"];
        [selectData synchronize];
        
        
        //textfileldを空白にする
        touroku.text= @"";
        
        //tableviewをreload
        [tableView reloadData];
        NSLog(@"%@",selectArray);
        
    }
}

-(IBAction)selectDl{
    [selectData removeObjectForKey:@"選択"];
    [selectData synchronize];
    [tableView reloadData];
    [self performSegueWithIdentifier:@"modoruSegue" sender:nil];
}



-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
