//
//  ViewController.m
//  Ally
//
//  Created by Donald Patterson on 12/7/16.
//  Copyright © 2016 Donald J. Patterson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *address = @"http://djp3.westmont.edu/ally_staging/ally/index.php?";
    NSString *params = @"";
    
    
    // Build the url and loadRequest
    NSString *urlString = [NSString stringWithFormat:@"%@%@",address,params];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
