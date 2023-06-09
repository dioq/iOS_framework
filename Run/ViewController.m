//
//  ViewController.m
//  Run
//
//  Created by Dio Brand on 2023/6/7.
//

#import "ViewController.h"
#import <DioFramework/MyTest.h>
#import "DioStaticLibrary.h"

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

@end
