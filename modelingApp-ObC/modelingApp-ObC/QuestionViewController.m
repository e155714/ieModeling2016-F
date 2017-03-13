//
//  QuestionViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data = [NSUserDefaults standardUserDefaults];
    [data removeObjectForKey:@"result"];
    [data synchronize];
    
    questionArray = @[@"大学にしっかり通っていますか？",@"課題やテスト勉強は後回しにせず計画的にしていますか？",@"学校に慣れましたか？",@"バイトと大学のバランスは取れていますか？",@"一緒に勉強できる友達ができましたか？",@"先輩とのつながりはできましたか？",@"「線形代数」は単位を取ることができましたか？",@"「微分積分」は単位を取ることができましたか？",@"卒業要件を大体把握できてますか？",@""];
    qNum = 1;
    count = 0;
    
    [self Question];
}

-(void)Question{
    Q.text = [NSString stringWithFormat:@"%d",qNum];
    question.text = questionArray[qNum-1];
    
    if(qNum == 10){
        [data setInteger:count forKey:@"result"];
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
