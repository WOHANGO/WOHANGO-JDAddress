//
//  AppDelegate.h
//  WOHANGO-JDAddress
//
//  Created by 吴梓杭 on 2017/4/6.
//  Copyright © 2017年 吴梓杭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

