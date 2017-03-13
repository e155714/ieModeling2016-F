//
//  QuestionViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "Question2ViewController.h"

@interface Question2ViewController ()

@end

@implementation Question2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data = [NSUserDefaults standardUserDefaults];
    [data removeObjectForKey:@"result2"];
    [data synchronize];
    
    questionArray = @[@"大学にしっかり通っていますか？",@"課題やテスト勉強は後回しにせず計画的にしていますか？",@"1年次で落とした単位は取れましたか？",@"OSは取れましたか？",@"確率統計は取れましたか？",@"怠け癖は付いてませんか？",@"行きたい研究室の目星はつきましたか？",@"今年次の講義内容はしっかり理解できましたか？",@""];
    qNum = 1;
    count = 0;
    
    [self Question];
}

-(void)Question{
    Q.text = [NSString stringWithFormat:@"%d",qNum];
    question.text = questionArray[qNum-1];
    
    if(qNum == 9){
        [data setInteger:count forKey:@"result2"];
        [data synchronize];
        
        [self performSegueWithIdentifier:@"resultSegue" sender:nil];
    }
}

-(IBAction)tapYes{
    qNum = qNum + 1;
    count = count + 1;
    [self Question];
}

-(IBAction)tapNo{
    qNum = qNum + 1;
    count = count - 1;
    [self Question];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
