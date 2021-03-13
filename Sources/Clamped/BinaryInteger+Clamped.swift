import Foundation

 public extension BinaryInteger {
     func clamped(to range: ClosedRange<Self>) -> Self {
         clamped(lowerBound: range.lowerBound, upperBound: range.upperBound)
     }

     func clamped(to range: Range<Self>) -> Self {
         clamped(lowerBound: range.lowerBound, upperBound: range.upperBound)
     }

     func clamped(lowerBound: Self, upperBound: Self) -> Self {
         min(upperBound, max(lowerBound, self))
     }
 }
