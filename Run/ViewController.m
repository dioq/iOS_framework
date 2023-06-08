//
//  ViewController.m
//  Run
//
//  Created by Dio Brand on 2023/6/7.
//

#import "ViewController.h"
#import <MyFramework/Test.h>

@interface ViewController ()

@end

@implementation ViewController

//制作过程: https://www.jianshu.com/p/910acfee9025
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Test *test = [Test new];
    [test helloworld];
}


@end
