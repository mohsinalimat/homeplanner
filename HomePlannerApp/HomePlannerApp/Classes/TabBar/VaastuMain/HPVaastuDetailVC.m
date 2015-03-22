//
//  HPVaastuDetailVC.m
//  HomePlannerApp
//
//  Created by Dhanesh Gosai on 22/03/15.
//  Copyright (c) 2015 BDPartners. All rights reserved.
//

#import "HPVaastuDetailVC.h"

@interface HPVaastuDetailVC ()

@end

@implementation HPVaastuDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *filepath = [[NSBundle mainBundle] pathForResource:[self.dictDetailData objectForKey:@"menu_title"] ofType:@"html"];
    
    self.title = [self.dictDetailData objectForKey:@"menu_title"];
    [self.webViewVaastuDetail loadHTMLString:[[NSString alloc] initWithData:[NSData dataWithContentsOfFile:filepath] encoding:NSUTF8StringEncoding] baseURL:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end