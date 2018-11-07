//
//  ViewController.m
//  YYmodel-demo
//
//  Created by sunrise on 2018/11/7.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "ViewController.h"
#import "YYUserModel.h"
#import "YYModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *holder = [NSMutableArray array];
    for (int i = 0; i < 1800; i ++) {
        [holder addObject:[NSData new]];
    }
    [holder removeAllObjects];
    
    NSTimeInterval begin, end;
    begin = CACurrentMediaTime();
    
    

    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSTimeInterval begin, end;
    
    NSMutableArray *mulArr = [NSMutableArray new];
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"user" ofType:@"json"]];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    begin = CACurrentMediaTime();
    NSLog(@"开始的时间:%lf", begin);
    for (int i = 0 ; i < 18000; i ++) {
        YYUserModel *model = [YYUserModel yy_modelWithJSON:json];
        
        [mulArr addObject:model];
    }
    
    
    YYUserModel *model = [mulArr objectAtIndex:0];
    NSString *html_url = model.html_url;
    NSLog(@"%@", html_url);
    end = CACurrentMediaTime();
    
    NSLog(@"结束的时间:%lf", end);
    
    
    
}

@end
