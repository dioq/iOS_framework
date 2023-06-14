//
//  ViewController.m
//  Run
//
//  Created by Dio Brand on 2023/6/7.
//

#import "ViewController.h"
#import <DioFramework/MyTest.h>
#import "DioStaticLibrary.h"
#import <ZDLog/CurrentLog.h>
#import <ZDNetwork/NetworkManager.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)dylib_action:(UIButton *)sender {
    MyTest *test = [MyTest new];
    [test PrintTest];
}

- (IBAction)static_lib_action:(UIButton *)sender {
    DioStaticLibrary *slib = [DioStaticLibrary new];
    [slib testFuncForslib];
}

- (IBAction)test_zdlog:(UIButton *)sender {
    [CurrentLog logMsg:@"This is a test from run target"];
}

- (IBAction)zd_network:(UIButton *)sender {
    NSString *urlStr = @"https://www.baidu.com/";
    [[NetworkManager sharedManager] getUrl:urlStr success:^(id  _Nonnull response) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"%@",response);
        });
    } failure:^(NSError * _Nonnull error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"%@",[error localizedDescription]);
        });
    }];
}

@end
