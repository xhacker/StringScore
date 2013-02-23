# StringScore

This fork was created to prove that StringScore provides reasonable performance. The question about it was raised on the Stackoverflow question [Objective-c: Fast Fuzzy Search Match](http://stackoverflow.com/questions/15012673/objective-c-fast-fuzzy-search-match/15014414#15014414).

## Setup code extracted

Mainly, the setup code is pulled out of the `scoreAgainst:` method, thus 3 new methods are added to `NSString+StringScore`:

````

- (NSCharacterSet *)invalidCharacterSet;
- (NSString *)decomposedStringWithInvalidCharacterSet:(NSCharacterSet *)invalidCharacterSet;

- (CGFloat) scoreAgainst:(NSString *)anotherString fuzziness:(NSNumber *)fuzziness options:(NSStringScoreOption)options
     invalidCharacterSet:(NSCharacterSet *)invalidCharacterSet decomposedString:(NSString *)string;
````

The first two can be used to generate the data that is needed for the scoring algorithm. It will speed up the operation if `scoreAgainst:` is called repeatedly on the same string.

## Additional changes

The other changes focus on speeding up the algorithm itself by generating fewer NSString objects.


## Credits

Author: [Nicholas Bruning](https://github.com/thetron)

Special thanks to [Joshaven Potter](https://github.com/joshaven) for
providing the basis for this library.


## License

Licensed under the [MIT license](http://www.opensource.org/licenses/mit-license.php).
