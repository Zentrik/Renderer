; Function Attrs: uwtable
define i8 @julia_f1_4364(i64 signext %0, i64 signext %1) #0 {
top:
  %2 = icmp slt i64 %1, %0
  %3 = zext i1 %2 to i8
  ret i8 %3
}
