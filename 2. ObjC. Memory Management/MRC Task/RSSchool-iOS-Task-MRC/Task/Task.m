//
//  Task.m
//  RSSchool-iOS-Task-MRC
//
//  Created by Aliaksei Piatyha on 4/30/21.
//  Copyright © 2021 Alexei. All rights reserved.
//

#import "Task.h"
#import "Printer.h"
#import "Text.h"
#import "Page.h"
#import "Document.h"

@implementation Task

// MAIN TASK:
// Fix all memory management issues by adding retain, release and autorelease methods or
// changing property ownership attributes. You shouldn't modify the existing base code.
// Check yourself using special instruments and by crosscheck :)

- (void)execute {
    Printer *printer = [[Printer alloc] init];

    Text *welcomeText = [Text textWithContent:@"Hello, welcome to the first MRC task"];

    [printer printObject:welcomeText];

    Page *titlePage = [self getTitlePage];
    [titlePage retain];
    
    Page *mainPage = [self getMainPage];
    [mainPage retain];
    
    Page *lastPage = [self getLastPage];
    [lastPage retain];

    Text *documentTitle = [[Text alloc] initWithContent:@"Very useful document"];

    Document *document = [[Document alloc] initWithTitle: documentTitle];

    [documentTitle release];
    
    [document addPage:titlePage];
    [document addPage:mainPage];
    [document addPage:lastPage];

    titlePage.document = document;
    mainPage.document = document;
    lastPage.document = document;
    
    [titlePage release];
    [mainPage release];
    [lastPage release];

    [printer printObject:document];
    [document release];
    [printer release];
}

- (Page *)getTitlePage {
    NSString *title = [[NSString alloc] initWithUTF8String:"How to become the best iOS developer?"];
    Text *text = [[Text alloc] initWithContent:title];
    [title release];

    Page *page = [[Page alloc] init];
    page.number = 1;
    
    page.text = text;
    [text release];

    return [page autorelease];
}

- (Page *)getMainPage {
    NSString *title = [[NSString alloc] initWithUTF8String:"You need to learn the materials, practice a lot and believe in yourself!"];
    Text *text = [[Text alloc] initWithContent:title];
    [title release];

    Page *page = [Page pageWithText:text];
    page.number = 2;
    
    page.text = text;
    [text release];

    return page;
}

- (Page *)getLastPage {
    NSString *title = [[NSString alloc] initWithUTF8String:"Good luck!"];
    Text *text = [Text textWithContent:title];
    [text retain];
    [title release];
    
    Text *hiddenText = [[Text alloc] initWithContent:@"With love from RSSchool :)"];
    Page *page = [[Page alloc] init];
    page.number = 3;
    
    page.text = text;
    [text release];
    
    page.hiddenText = hiddenText;
    [hiddenText release];

    return [page autorelease];
}

@end
