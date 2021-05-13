//
//  main.m
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import <Foundation/Foundation.h>
#import "NSString+TaskApprovable.h"
#import "NSDate+TaskApprovable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: - Testing removeDuplicateSpaces
        NSLog(@"************** Removing Duplicate Whitespaces **************");
        NSString *duplicateSpasesTestStr1 = @"      ";
        NSString *duplicateSpasesTestStr2 = @"one  two    three";
        NSString *duplicateSpasesTestStr3 = @"    one   two  ";

        NSLog(@"'%@' vs expected: '%@'", [duplicateSpasesTestStr1 removeDuplicateSpaces], @" ");
        NSLog(@"'%@' vs expected: '%@'", [duplicateSpasesTestStr2 removeDuplicateSpaces], @"one two three");
        NSLog(@"'%@' vs expected: '%@'", [duplicateSpasesTestStr3 removeDuplicateSpaces], @" one two ");

        
        // MARK: - Testing removeDuplicateCharacters
        NSLog(@"************** Removing Duplicate Characters **************");
        NSString *duplicateCharactersTestStr1 = @"      ";
        NSString *duplicateCharactersTestStr2 = @"aaaa   bbbbbvvvv";
        NSString *duplicateCharactersTestStr3 = @"aabbaaavvv";

        NSLog(@"'%@' vs expected: '%@'", [duplicateCharactersTestStr1 removeDuplicateCharacters], @" ");
        NSLog(@"'%@' vs expected: '%@'", [duplicateCharactersTestStr2 removeDuplicateCharacters], @"a bv");
        NSLog(@"'%@' vs expected: '%@'", [duplicateCharactersTestStr3 removeDuplicateCharacters], @"abav");
        
        
        // MARK: - Testing longestWord
        NSLog(@"************** Longest Word **************");
        NSString *longestWordTestStr1 = @"";
        NSString *longestWordTestStr2 = @"   ";
        NSString *longestWordTestStr3 = @"one two three";

        NSLog(@"'%@' vs expected: '%@'", [longestWordTestStr1 longestWord], @"(null)");
        NSLog(@"'%@' vs expected: '%@'", [longestWordTestStr2 longestWord], @"(null)");
        NSLog(@"'%@' vs expected: '%@'", [longestWordTestStr3 longestWord], @"three");
        
        
        // MARK: - Testing vowelsCount
        NSLog(@"************** Vowels Count **************");
        NSString *vowelsCountTestStr1 = @"a A";
        NSString *vowelsCountTestStr2 = @"three";
        NSString *vowelsCountTestStr3 = @"a  E  u  I  y o";
        NSLog(@"%lu vs expected: %d", [vowelsCountTestStr1 vowelsCount], 2);
        NSLog(@"%lu vs expected: %d", [vowelsCountTestStr2 vowelsCount], 2);
        NSLog(@"%lu vs expected: %d", [vowelsCountTestStr3 vowelsCount], 5);
        
        
        // MARK: - File Write and Read
        NSLog(@"************** File Write and Read **************");
        
        NSString *currentDirectoryPath = NSFileManager.defaultManager.currentDirectoryPath;
        NSString *filePath = [currentDirectoryPath stringByAppendingPathComponent:@"sample.txt"];
        NSError *error = nil;

        int randomNumber = arc4random() % 10000;
        NSLog(@"Generated %d with arc4random.", randomNumber);

        NSString *testString = [NSString stringWithFormat:@"\nDo you have a favourite number?\nMine is definitely %d.\n", randomNumber];

        BOOL writeOperationPerformedSuccessfully = [testString writeToFile:filePath
                                        atomically:YES
                                          encoding:NSUTF8StringEncoding
                                             error:&error];

        if (writeOperationPerformedSuccessfully) {
            NSLog(@"%2$@! String written to: %1$@.", filePath, @"Success");
        } else {
            NSLog(@"Failure with error code: %ld.", (long)error.code);
        }

        NSString *retrievedSting = [NSString stringWithContentsOfFile:filePath
                                                             encoding:NSUTF8StringEncoding
                                                                error:&error];
        NSLog(@"Retrieved string is: %@", retrievedSting);
        
        
        // MARK: Formatted current date
        NSLog(@"************** Formatted Current Date **************");
        [NSDate logCurrentDate];
        
        // MARK: Weak day for date
        NSLog(@"************** Weak Day for Date **************");
        for (int i = 0; i < 7; ++i) {
            [NSDate logWeekDayFor:[[NSDate alloc] initWithTimeIntervalSinceNow:86400 * i]];
        }
    }
    
    return 0;
}
