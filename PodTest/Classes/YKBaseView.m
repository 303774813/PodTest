//
//  YKBaseView.m
//  PodTest
//
//  Created by wangchao on 2021/1/5.
//  Copyright © 2021 303774813. All rights reserved.
//

#import "YKBaseView.h"

@implementation YKBaseView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *iv = [[UIImageView alloc] initWithFrame:frame];
        [iv setImage:[UIImage imageNamed:@"header4.jpeg"]];
        iv.backgroundColor = [UIColor redColor];
        [self addSubview:iv];
        
        UIImageView *iv1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        [self addSubview:iv1];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSDictionary *dic = bundle.infoDictionary;
        NSString *bundleName = dic[@"CFBundleExecutable"];
        NSString *path = [bundle pathForResource:@"header4.jpeg" ofType:nil inDirectory:[NSString stringWithFormat:@"%@.bundle",@"PodTest2"]];
        UIImage *iv2 = [UIImage imageWithContentsOfFile:path];
        iv1.backgroundColor = [UIColor yellowColor];
//        NSString *frameworkPath = [[bundle.resourcePath stringByAppendingPathComponent:@"PodA.bundle"] stringByAppendingPathComponent:@"timg.jpg"];
//        
//        NSLog(@"frameworkPath:%@",frameworkPath);

        NSLog(@"bundle:%@",bundleName);
        
        
        [iv1 setImage:iv2];
    }
    return self;
}

+ (void)printFrameString
{
    NSLog(@"___(self.frame)");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
