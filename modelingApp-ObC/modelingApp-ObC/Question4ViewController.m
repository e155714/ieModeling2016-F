//
//  QuestionViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "Question4ViewController.h"

@interface Question4ViewController ()

@end

@implementation Question4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data = [NSUserDefaults standardUserDefaults];
    [data removeObjectForKey:@"result4"];
    [data synchronize];
    
    questionArray = @[@"大学にしっかり通っていますか？",@"課題やテスト勉強は後回しにせず計画的にしていますか？",@"研究テーマは決まりましたか？",@"ゼミに出席していますか？",@"卒業研究,順調にできていますか？",@""];
    qNum = 1;
    count = 0;
    
    [self Question];
}

-(void)Question{
    Q.text = [NSString stringWithFormat:@"%d",qNum];
    question.text = questionArray[qNum-1];
    
    if(qNum == 6){
        [data setInteger:count forKey:@"result4"];
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
