; ModuleID = '/mnt/66784B59784B26E1/Users/gag/Documents/Code/Renderer/c++/simdBenchmarking.cpp'
source_filename = "/mnt/66784B59784B26E1/Users/gag/Documents/Code/Renderer/c++/simdBenchmarking.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.benchmark::internal::Benchmark" = type { i32 (...)**, %"class.std::__cxx11::basic_string", i32, %"class.std::vector.14", %"class.std::vector.19", i32, i32, double, i64, i32, i8, i8, i8, i32, double (i64)*, %"class.std::vector.29", %"class.std::vector.39", void (%"class.benchmark::State"*)*, void (%"class.benchmark::State"*)* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.13 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon.13 = type { i64, [8 x i8] }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* }
%"class.std::vector.19" = type { %"struct.std::_Vector_base.20" }
%"struct.std::_Vector_base.20" = type { %"struct.std::_Vector_base<std::vector<long>, std::allocator<std::vector<long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<long>, std::allocator<std::vector<long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<long>, std::allocator<std::vector<long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<long>, std::allocator<std::vector<long>>>::_Vector_impl_data" = type { %"class.std::vector.24"*, %"class.std::vector.24"*, %"class.std::vector.24"* }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { i64*, i64*, i64* }
%"class.std::vector.29" = type { %"struct.std::_Vector_base.30" }
%"struct.std::_Vector_base.30" = type { %"struct.std::_Vector_base<benchmark::internal::Statistics, std::allocator<benchmark::internal::Statistics>>::_Vector_impl" }
%"struct.std::_Vector_base<benchmark::internal::Statistics, std::allocator<benchmark::internal::Statistics>>::_Vector_impl" = type { %"struct.std::_Vector_base<benchmark::internal::Statistics, std::allocator<benchmark::internal::Statistics>>::_Vector_impl_data" }
%"struct.std::_Vector_base<benchmark::internal::Statistics, std::allocator<benchmark::internal::Statistics>>::_Vector_impl_data" = type { %"struct.benchmark::internal::Statistics"*, %"struct.benchmark::internal::Statistics"*, %"struct.benchmark::internal::Statistics"* }
%"struct.benchmark::internal::Statistics" = type <{ %"class.std::__cxx11::basic_string", double (%"class.std::vector.34"*)*, i32, [4 x i8] }>
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { double*, double*, double* }
%"class.std::vector.39" = type { %"struct.std::_Vector_base.40" }
%"struct.std::_Vector_base.40" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.benchmark::State" = type { i64, i64, i64, i8, i8, i8, %"class.std::vector.24", i64, %"class.std::map", i32, i32, %"class.benchmark::internal::ThreadTimer"*, %"class.benchmark::internal::ThreadManager"*, %"class.benchmark::internal::PerfCountersMeasurement"* }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.benchmark::internal::ThreadTimer" = type opaque
%"class.benchmark::internal::ThreadManager" = type opaque
%"class.benchmark::internal::PerfCountersMeasurement" = type opaque
%struct.random_series = type { i32 }
%"class.boost::stacktrace::basic_stacktrace" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" = type { %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"* }
%"class.boost::stacktrace::frame" = type { i8* }
%"class.std::range_error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { i8* }
%class.vec3 = type { float, float, float }
%struct.data = type { %class.hittable_list, %struct.hit_record, %class.ray }
%class.hittable_list = type { %class.hittable, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.5" }
%class.hittable = type { i32 (...)** }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<Vec8f, std::allocator<Vec8f>>::_Vector_impl" }
%"struct.std::_Vector_base<Vec8f, std::allocator<Vec8f>>::_Vector_impl" = type { %"struct.std::_Vector_base<Vec8f, std::allocator<Vec8f>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Vec8f, std::allocator<Vec8f>>::_Vector_impl_data" = type { %class.Vec8f*, %class.Vec8f*, %class.Vec8f* }
%class.Vec8f = type { <8 x float> }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<material *, std::allocator<material *>>::_Vector_impl" }
%"struct.std::_Vector_base<material *, std::allocator<material *>>::_Vector_impl" = type { %"struct.std::_Vector_base<material *, std::allocator<material *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<material *, std::allocator<material *>>::_Vector_impl_data" = type { %class.material**, %class.material**, %class.material** }
%class.material = type { i32 (...)** }
%struct.hit_record = type <{ %class.vec3, %class.vec3, %class.material*, float, [4 x i8] }>
%class.ray = type { %class.vec3, %class.vec3 }
%class.sphere = type { %class.vec3, float, %class.material* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %struct.data }
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<const void *, std::allocator<const void *>>::_Vector_impl" }
%"struct.std::_Vector_base<const void *, std::allocator<const void *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const void *, std::allocator<const void *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const void *, std::allocator<const void *>>::_Vector_impl_data" = type { i8**, i8**, i8** }
%"struct.boost::stacktrace::detail::unwind_state" = type { i64, i8**, i8** }
%struct._Unwind_Context = type opaque
%"class.boost::stacktrace::detail::to_string_impl_base" = type { %"struct.boost::stacktrace::detail::to_string_using_nothing" }
%"struct.boost::stacktrace::detail::to_string_using_nothing" = type { %"class.std::__cxx11::basic_string" }
%"class.boost::array" = type { [40 x i8] }
%"class.boost::array.57" = type { [19 x i8] }
%"class.boost::stacktrace::detail::location_from_symbol" = type { %struct.Dl_info }
%struct.Dl_info = type { i8*, i8*, i8*, i8* }
%"struct.std::_Nested_exception" = type { %"class.std::range_error", %"class.std::nested_exception" }
%"class.std::nested_exception" = type { i32 (...)**, %"class.std::__exception_ptr::exception_ptr" }
%"class.std::__exception_ptr::exception_ptr" = type { i8* }
%"class.benchmark::internal::FunctionBenchmark" = type { %"class.benchmark::internal::Benchmark", void (%"class.benchmark::State"*)* }

$_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev = comdat any

$_ZSt17throw_with_nestedIRA91_KcEvOT_ = comdat any

$_ZSt17throw_with_nestedISt11range_errorEvOT_ = comdat any

$_ZN13hittable_list3addERK6sphere = comdat any

$_ZN13hittable_listC2ERKS_ = comdat any

$_ZN13hittable_listD2Ev = comdat any

$_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK13hittable_list3hitERK3rayffR10hit_record = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm = comdat any

$_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm = comdat any

$_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv = comdat any

$_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm = comdat any

$_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm = comdat any

$_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv = comdat any

$_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv = comdat any

$_ZN5boost4core8demangleB5cxx11EPKc = comdat any

$_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE = comdat any

$_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE = comdat any

$_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_ = comdat any

$_ZNSt17_Nested_exceptionISt11range_errorED2Ev = comdat any

$_ZNSt17_Nested_exceptionISt11range_errorED0Ev = comdat any

$_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev = comdat any

$_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev = comdat any

$_ZTV13hittable_list = comdat any

$_ZTS13hittable_list = comdat any

$_ZTS8hittable = comdat any

$_ZTI8hittable = comdat any

$_ZTI13hittable_list = comdat any

$_ZTSSt17_Nested_exceptionISt11range_errorE = comdat any

$_ZTISt17_Nested_exceptionISt11range_errorE = comdat any

$_ZTVSt17_Nested_exceptionISt11range_errorE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [91 x i8] c"uniform_random_in_unit_sphere took more than 500 iterations to generate a random number!!!\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"uniform_random_in_unit_disk took more than 500 iterations to generate a random number!!!\00", align 1
@_ZL24benchmark_uniq_2runbench = internal unnamed_addr global %"class.benchmark::internal::Benchmark"* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"runbench/scene interesction\00", align 1
@_ZTV13hittable_list = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI13hittable_list to i8*), i8* bitcast (i1 (%class.hittable_list*, %class.ray*, float, float, %struct.hit_record*)* @_ZNK13hittable_list3hitERK3rayffR10hit_record to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS13hittable_list = linkonce_odr dso_local constant [16 x i8] c"13hittable_list\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS8hittable = linkonce_odr dso_local constant [10 x i8] c"8hittable\00", comdat, align 1
@_ZTI8hittable = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTS8hittable, i32 0, i32 0) }, comdat, align 8
@_ZTI13hittable_list = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_ZTS13hittable_list, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8hittable to i8*) }, comdat, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x i8*] }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"(i < N)&&(\22out of range\22)\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"/usr/include/boost/array.hpp\00", align 1
@__PRETTY_FUNCTION__._ZN5boost5arrayIcLm40EEixEm = private unnamed_addr constant [103 x i8] c"boost::array::reference boost::array<char, 40>::operator[](boost::array::size_type) [T = char, N = 40]\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN5boost10stacktrace6detailL18to_hex_array_bytesE = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@_ZTIPKc = external constant i8*
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTSSt17_Nested_exceptionISt11range_errorE = linkonce_odr dso_local constant [39 x i8] c"St17_Nested_exceptionISt11range_errorE\00", comdat, align 1
@_ZTISt11range_error = external constant i8*
@_ZTISt16nested_exception = external constant i8*
@_ZTISt17_Nested_exceptionISt11range_errorE = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @_ZTSSt17_Nested_exceptionISt11range_errorE, i32 0, i32 0), i32 0, i32 2, i8* bitcast (i8** @_ZTISt11range_error to i8*), i64 2, i8* bitcast (i8** @_ZTISt16nested_exception to i8*), i64 4098 }, comdat, align 8
@_ZTVSt17_Nested_exceptionISt11range_errorE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*], [4 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTISt17_Nested_exceptionISt11range_errorE to i8*), i8* bitcast (void (%"struct.std::_Nested_exception"*)* @_ZNSt17_Nested_exceptionISt11range_errorED2Ev to i8*), i8* bitcast (void (%"struct.std::_Nested_exception"*)* @_ZNSt17_Nested_exceptionISt11range_errorED0Ev to i8*), i8* bitcast (i8* (%"class.std::runtime_error"*)* @_ZNKSt13runtime_error4whatEv to i8*)], [4 x i8*] [i8* inttoptr (i64 -16 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTISt17_Nested_exceptionISt11range_errorE to i8*), i8* bitcast (void (%"struct.std::_Nested_exception"*)* @_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev to i8*), i8* bitcast (void (%"struct.std::_Nested_exception"*)* @_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev to i8*)] }, comdat, align 8
@_ZTVSt11range_error = external unnamed_addr constant { [5 x i8*] }, align 8
@_ZTVSt16nested_exception = external unnamed_addr constant { [4 x i8*] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_simdBenchmarking.cpp, i8* null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z10XOrShift32R13random_series(%struct.random_series* nocapture noundef nonnull align 4 dereferenceable(4) %Series) local_unnamed_addr #1 {
entry:
  %State = getelementptr inbounds %struct.random_series, %struct.random_series* %Series, i64 0, i32 0
  %0 = load i32, i32* %State, align 4, !tbaa !5
  %shl = shl i32 %0, 13
  %xor = xor i32 %shl, %0
  %shr = lshr i32 %xor, 17
  %xor1 = xor i32 %shr, %xor
  %shl2 = shl i32 %xor1, 5
  %xor3 = xor i32 %shl2, %xor1
  store i32 %xor3, i32* %State, align 4, !tbaa !5
  ret i32 %xor3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local { <2 x float>, float } @_Z29uniform_random_in_unit_sphereR13random_series(%struct.random_series* nocapture noundef nonnull align 4 dereferenceable(4) %Series) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.boost::stacktrace::basic_stacktrace", align 8
  %State.i.i.i.i = getelementptr inbounds %struct.random_series, %struct.random_series* %Series, i64 0, i32 0
  %State.i.i.i.i.promoted = load i32, i32* %State.i.i.i.i, align 4, !tbaa !5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %entry, %for.cond
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %xor3.i.i.i29.i1718 = phi i32 [ %State.i.i.i.i.promoted, %entry ], [ %xor3.i.i.i29.i, %for.cond ]
  %shl.i.i.i.i = shl i32 %xor3.i.i.i29.i1718, 13
  %xor.i.i.i.i = xor i32 %shl.i.i.i.i, %xor3.i.i.i29.i1718
  %shr.i.i.i.i = lshr i32 %xor.i.i.i.i, 17
  %xor1.i.i.i.i = xor i32 %shr.i.i.i.i, %xor.i.i.i.i
  %shl2.i.i.i.i = shl i32 %xor1.i.i.i.i, 5
  %xor3.i.i.i.i = xor i32 %shl2.i.i.i.i, %xor1.i.i.i.i
  %conv.i.i.i = uitofp i32 %xor3.i.i.i.i to float
  %mul.i.i = fmul fast float %conv.i.i.i, 0x3E00000000000000
  %add.i.i = fadd fast float %mul.i.i, -1.000000e+00
  %shl.i.i.i12.i = shl i32 %xor3.i.i.i.i, 13
  %xor.i.i.i13.i = xor i32 %shl.i.i.i12.i, %xor3.i.i.i.i
  %shr.i.i.i14.i = lshr i32 %xor.i.i.i13.i, 17
  %xor1.i.i.i15.i = xor i32 %shr.i.i.i14.i, %xor.i.i.i13.i
  %shl2.i.i.i16.i = shl i32 %xor1.i.i.i15.i, 5
  %xor3.i.i.i17.i = xor i32 %shl2.i.i.i16.i, %xor1.i.i.i15.i
  %conv.i.i18.i = uitofp i32 %xor3.i.i.i17.i to float
  %mul.i20.i = fmul fast float %conv.i.i18.i, 0x3E00000000000000
  %add.i21.i = fadd fast float %mul.i20.i, -1.000000e+00
  %shl.i.i.i24.i = shl i32 %xor3.i.i.i17.i, 13
  %xor.i.i.i25.i = xor i32 %shl.i.i.i24.i, %xor3.i.i.i17.i
  %shr.i.i.i26.i = lshr i32 %xor.i.i.i25.i, 17
  %xor1.i.i.i27.i = xor i32 %shr.i.i.i26.i, %xor.i.i.i25.i
  %shl2.i.i.i28.i = shl i32 %xor1.i.i.i27.i, 5
  %xor3.i.i.i29.i = xor i32 %shl2.i.i.i28.i, %xor1.i.i.i27.i
  %conv.i.i30.i = uitofp i32 %xor3.i.i.i29.i to float
  %mul.i32.i = fmul fast float %conv.i.i30.i, 0x3E00000000000000
  %add.i33.i = fadd fast float %mul.i32.i, -1.000000e+00
  %mul.i.i9 = fmul fast float %add.i.i, %add.i.i
  %mul4.i.i = fmul fast float %add.i21.i, %add.i21.i
  %add.i.i10 = fadd fast float %mul4.i.i, %mul.i.i9
  %mul7.i.i = fmul fast float %add.i33.i, %add.i33.i
  %add8.i.i = fadd fast float %add.i.i10, %mul7.i.i
  %cmp2 = fcmp fast olt float %add8.i.i, 1.000000e+00
  br i1 %cmp2, label %return, label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 %xor3.i.i.i29.i, i32* %State.i.i.i.i, align 4, !tbaa !5
  %0 = bitcast %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #36
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false) #36
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %ref.tmp, i64 noundef 0, i64 noundef -1)
          to label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit unwind label %lpad.i

lpad.i:                                           ; preds = %for.end
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %impl_.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp, i64 0, i32 0
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %impl_.i) #36
  call void @__clang_call_terminate(i8* %2) #37
  unreachable

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit: ; preds = %for.end
  %call3 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  call void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %ref.tmp) #36
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  call void @_ZSt17throw_with_nestedIRA91_KcEvOT_([91 x i8]* noundef nonnull align 1 dereferenceable(91) @.str) #38
  unreachable

lpad:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i.i, align 8, !tbaa !12
  %tobool.not.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %4, null
  br i1 %tobool.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad
  %5 = bitcast %"class.boost::stacktrace::frame"* %4 to i8*
  call void @_ZdlPv(i8* noundef %5) #39
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %lpad, %if.then.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  resume { i8*, i32 } %3

return:                                           ; preds = %for.body
  store i32 %xor3.i.i.i29.i, i32* %State.i.i.i.i, align 4, !tbaa !5
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %add.i.i, i64 0
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %add.i21.i, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %retval.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %add.i33.i, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %os, %"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %bt) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %_M_finish.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %bt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_finish.i.i.i.i, align 8, !tbaa !18, !noalias !15
  %_M_start.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %bt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %2 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i.i.i, align 8, !tbaa !12, !noalias !15
  %tobool.not.i.i = icmp eq %"class.boost::stacktrace::frame"* %1, %2
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon.13**
  store %union.anon.13* %3, %union.anon.13** %4, align 8, !tbaa !19, !alias.scope !15
  %_M_string_length.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i, align 8, !tbaa !21, !alias.scope !15
  %.cast.i.i = bitcast %union.anon.13* %3 to i8*
  store i8 0, i8* %.cast.i.i, align 8, !tbaa !24, !alias.scope !15
  br label %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit

if.end.i:                                         ; preds = %entry
  %sub.ptr.lhs.cast.i.i.i = ptrtoint %"class.boost::stacktrace::frame"* %1 to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint %"class.boost::stacktrace::frame"* %2 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 3
  call void @_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp, %"class.boost::stacktrace::frame"* noundef nonnull %2, i64 noundef %sub.ptr.div.i.i.i)
  %_M_p.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load i8*, i8** %_M_p.i.i.i.phi.trans.insert, align 8, !tbaa !25
  %_M_string_length.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %.pre8 = load i64, i64* %_M_string_length.i.i.phi.trans.insert, align 8, !tbaa !21
  br label %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit

_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit: ; preds = %if.then.i, %if.end.i
  %5 = phi i64 [ 0, %if.then.i ], [ %.pre8, %if.end.i ]
  %6 = phi i8* [ %.cast.i.i, %if.then.i ], [ %.pre, %if.end.i ]
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %call2.i2 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %os, i8* noundef %6, i64 noundef %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit
  %7 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon.13* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  call void @_ZdlPv(i8* noundef %7) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #36
  ret %"class.std::basic_ostream"* %call2.i2

lpad:                                             ; preds = %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i.i.i4 = bitcast %union.anon.13* %11 to i8*
  %cmp.i.i.i5 = icmp eq i8* %10, %arraydecay.i.i.i.i4
  br i1 %cmp.i.i.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %if.then.i.i6

if.then.i.i6:                                     ; preds = %lpad
  call void @_ZdlPv(i8* noundef %10) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %lpad, %if.then.i.i6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #36
  resume { i8*, i32 } %9
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %_M_start.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %this, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %0 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i, align 8, !tbaa !12
  %tobool.not.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %0, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %1 = bitcast %"class.boost::stacktrace::frame"* %0 to i8*
  tail call void @_ZdlPv(i8* noundef %1) #39
  br label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev.exit

_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev.exit: ; preds = %entry, %if.then.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt17throw_with_nestedIRA91_KcEvOT_([91 x i8]* noundef nonnull align 1 dereferenceable(91) %__t) local_unnamed_addr #8 comdat {
entry:
  tail call void @_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE([91 x i8]* noundef nonnull align 1 dereferenceable(91) %__t) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z26uniform_random_unit_vectorR13random_series(%struct.random_series* nocapture noundef nonnull align 4 dereferenceable(4) %Series) local_unnamed_addr #9 {
entry:
  %call = tail call { <2 x float>, float } @_Z29uniform_random_in_unit_sphereR13random_series(%struct.random_series* noundef nonnull align 4 dereferenceable(4) %Series)
  %call.fca.0.extract = extractvalue { <2 x float>, float } %call, 0
  %call.fca.1.extract = extractvalue { <2 x float>, float } %call, 1
  %0 = fmul fast <2 x float> %call.fca.0.extract, %call.fca.0.extract
  %mul.i.i.i.i.i = extractelement <2 x float> %0, i64 0
  %1 = fmul fast <2 x float> %call.fca.0.extract, %call.fca.0.extract
  %mul4.i.i.i.i.i = extractelement <2 x float> %1, i64 1
  %mul7.i.i.i.i.i = fmul fast float %call.fca.1.extract, %call.fca.1.extract
  %add.i.i.i.i.i = fadd fast float %mul.i.i.i.i.i, %mul7.i.i.i.i.i
  %add8.i.i.i.i.i = fadd fast float %add.i.i.i.i.i, %mul4.i.i.i.i.i
  %2 = tail call fast float @llvm.sqrt.f32(float %add8.i.i.i.i.i) #36
  %div.i.i.i = fdiv fast float 1.000000e+00, %2
  %3 = insertelement <2 x float> poison, float %div.i.i.i, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fmul fast <2 x float> %4, %call.fca.0.extract
  %mul5.i.i.i.i = fmul fast float %div.i.i.i, %call.fca.1.extract
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %5, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %mul5.i.i.i.i, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: uwtable
define dso_local { <2 x float>, float } @_Z27uniform_random_in_unit_diskR13random_series(%struct.random_series* nocapture noundef nonnull align 4 dereferenceable(4) %Series) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.boost::stacktrace::basic_stacktrace", align 8
  %ref.tmp5 = alloca %"class.std::range_error", align 8
  %State.i.i.i = getelementptr inbounds %struct.random_series, %struct.random_series* %Series, i64 0, i32 0
  %State.i.i.i.promoted = load i32, i32* %State.i.i.i, align 4, !tbaa !5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !26

for.body:                                         ; preds = %entry, %for.cond
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %xor3.i.i.i203536 = phi i32 [ %State.i.i.i.promoted, %entry ], [ %xor3.i.i.i20, %for.cond ]
  %shl.i.i.i = shl i32 %xor3.i.i.i203536, 13
  %xor.i.i.i = xor i32 %shl.i.i.i, %xor3.i.i.i203536
  %shr.i.i.i = lshr i32 %xor.i.i.i, 17
  %xor1.i.i.i = xor i32 %shr.i.i.i, %xor.i.i.i
  %shl2.i.i.i = shl i32 %xor1.i.i.i, 5
  %xor3.i.i.i = xor i32 %shl2.i.i.i, %xor1.i.i.i
  %conv.i.i = uitofp i32 %xor3.i.i.i to float
  %mul.i = fmul fast float %conv.i.i, 0x3E00000000000000
  %add.i = fadd fast float %mul.i, -1.000000e+00
  %shl.i.i.i15 = shl i32 %xor3.i.i.i, 13
  %xor.i.i.i16 = xor i32 %shl.i.i.i15, %xor3.i.i.i
  %shr.i.i.i17 = lshr i32 %xor.i.i.i16, 17
  %xor1.i.i.i18 = xor i32 %shr.i.i.i17, %xor.i.i.i16
  %shl2.i.i.i19 = shl i32 %xor1.i.i.i18, 5
  %xor3.i.i.i20 = xor i32 %shl2.i.i.i19, %xor1.i.i.i18
  %conv.i.i21 = uitofp i32 %xor3.i.i.i20 to float
  %mul.i22 = fmul fast float %conv.i.i21, 0x3E00000000000000
  %add.i23 = fadd fast float %mul.i22, -1.000000e+00
  %mul.i.i = fmul fast float %add.i, %add.i
  %mul4.i.i = fmul fast float %add.i23, %add.i23
  %add.i.i = fadd fast float %mul4.i.i, %mul.i.i
  %cmp3 = fcmp fast olt float %add.i.i, 1.000000e+00
  br i1 %cmp3, label %return, label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 %xor3.i.i.i20, i32* %State.i.i.i, align 4, !tbaa !5
  %0 = bitcast %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #36
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false) #36
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %ref.tmp, i64 noundef 0, i64 noundef -1)
          to label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit unwind label %lpad.i

lpad.i:                                           ; preds = %for.end
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %impl_.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp, i64 0, i32 0
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %impl_.i) #36
  call void @__clang_call_terminate(i8* %2) #37
  unreachable

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit: ; preds = %for.end
  %call4 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZN5boost10stacktracelsIcSt11char_traitsIcESaINS0_5frameEEEERSt13basic_ostreamIT_T0_ESA_RKNS0_16basic_stacktraceIT1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  %_M_start.i.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i.i, align 8, !tbaa !12
  %tobool.not.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %3, null
  br i1 %tobool.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %invoke.cont
  %4 = bitcast %"class.boost::stacktrace::frame"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #39
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %invoke.cont, %if.then.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  %5 = bitcast %"class.std::range_error"* %ref.tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #36
  call void @_ZNSt11range_errorC1EPKc(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %ref.tmp5, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  invoke void @_ZSt17throw_with_nestedISt11range_errorEvOT_(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %ref.tmp5) #38
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  unreachable

lpad:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  %6 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i24 = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i.i24, align 8, !tbaa !12
  %tobool.not.i.i.i.i25 = icmp eq %"class.boost::stacktrace::frame"* %7, null
  br i1 %tobool.not.i.i.i.i25, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit27, label %if.then.i.i.i.i26

if.then.i.i.i.i26:                                ; preds = %lpad
  %8 = bitcast %"class.boost::stacktrace::frame"* %7 to i8*
  call void @_ZdlPv(i8* noundef %8) #39
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit27

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit27: ; preds = %lpad, %if.then.i.i.i.i26
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  br label %eh.resume

lpad6:                                            ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt11range_errorD1Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %ref.tmp5) #36
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #36
  br label %eh.resume

return:                                           ; preds = %for.body
  store i32 %xor3.i.i.i20, i32* %State.i.i.i, align 4, !tbaa !5
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %add.i, i64 0
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %add.i23, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %retval.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert

eh.resume:                                        ; preds = %lpad6, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit27
  %.pn = phi { i8*, i32 } [ %9, %lpad6 ], [ %6, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit27 ]
  resume { i8*, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt17throw_with_nestedISt11range_errorEvOT_(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %__t) local_unnamed_addr #8 comdat {
entry:
  tail call void @_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %__t) #38
  unreachable
}

declare void @_ZNSt11range_errorC1EPKc(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16), i8* noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD1Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local { <2 x float>, float } @_Z7reflectRK4vec3S1_(%class.vec3* nocapture noundef nonnull readonly align 4 dereferenceable(12) %v, %class.vec3* nocapture noundef nonnull readonly align 4 dereferenceable(12) %n) local_unnamed_addr #10 {
entry:
  %0 = bitcast %class.vec3* %v to <2 x float>*
  %1 = load <2 x float>, <2 x float>* %0, align 4, !tbaa !27
  %2 = bitcast %class.vec3* %n to <2 x float>*
  %3 = load <2 x float>, <2 x float>* %2, align 4, !tbaa !27
  %4 = fmul fast <2 x float> %3, %1
  %5 = fmul fast <2 x float> %3, %1
  %shift = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 undef>
  %6 = fadd fast <2 x float> %shift, %4
  %add.i = extractelement <2 x float> %6, i64 0
  %c.i.i = getelementptr inbounds %class.vec3, %class.vec3* %v, i64 0, i32 2
  %retval.0.i18.i = load float, float* %c.i.i, align 4, !tbaa !27
  %c.i19.i = getelementptr inbounds %class.vec3, %class.vec3* %n, i64 0, i32 2
  %retval.0.i20.i = load float, float* %c.i19.i, align 4, !tbaa !27
  %mul7.i = fmul fast float %retval.0.i20.i, %retval.0.i18.i
  %add8.i = fadd fast float %add.i, %mul7.i
  %mul = fmul fast float %add8.i, 2.000000e+00
  %7 = insertelement <2 x float> poison, float %mul, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul fast <2 x float> %8, %3
  %mul4.i14 = fmul fast float %mul, %retval.0.i20.i
  %10 = fsub fast <2 x float> %1, %9
  %sub7.i = fsub fast float %retval.0.i18.i, %mul4.i14
  %.fca.0.insert.i29 = insertvalue { <2 x float>, float } poison, <2 x float> %10, 0
  %.fca.1.insert.i30 = insertvalue { <2 x float>, float } %.fca.0.insert.i29, float %sub7.i, 1
  ret { <2 x float>, float } %.fca.1.insert.i30
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7schlickff(float noundef %cosTheta, float noundef %ior_ratio) local_unnamed_addr #11 {
entry:
  %sub = fsub fast float 1.000000e+00, %ior_ratio
  %add = fadd fast float %ior_ratio, 1.000000e+00
  %div = fdiv fast float %sub, %add
  %mul = fmul fast float %div, %div
  %conv = fpext float %mul to double
  %sub1 = fsub fast float 1.000000e+00, %mul
  %conv2 = fpext float %sub1 to double
  %sub3 = fsub fast float 1.000000e+00, %cosTheta
  %conv.i = fpext float %sub3 to double
  %0 = tail call fast double @llvm.powi.f64.i32(double %conv.i, i32 5) #36
  %mul4 = fmul fast double %0, %conv2
  %add5 = fadd fast double %mul4, %conv
  %conv6 = fptrunc double %add5 to float
  ret float %conv6
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local { <2 x float>, float } @_Z7refract4vec3S_ff(<2 x float> %unit_direction.coerce0, float %unit_direction.coerce1, <2 x float> %normal.coerce0, float %normal.coerce1, float noundef %cosTheta, float noundef %ior_ratio) local_unnamed_addr #12 {
entry:
  %0 = insertelement <2 x float> poison, float %cosTheta, i64 0
  %1 = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer
  %2 = fmul fast <2 x float> %1, %normal.coerce0
  %mul4.i = fmul fast float %cosTheta, %normal.coerce1
  %3 = fadd fast <2 x float> %2, %unit_direction.coerce0
  %add7.i = fadd fast float %mul4.i, %unit_direction.coerce1
  %4 = insertelement <2 x float> poison, float %ior_ratio, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul fast <2 x float> %3, %5
  %mul4.i37 = fmul fast float %add7.i, %ior_ratio
  %7 = fmul fast <2 x float> %6, %6
  %shift = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 undef>
  %8 = fadd fast <2 x float> %shift, %7
  %add.i.i = extractelement <2 x float> %8, i64 0
  %mul7.i.i = fmul fast float %mul4.i37, %mul4.i37
  %add8.i.i = fadd fast float %add.i.i, %mul7.i.i
  %conv = fpext float %add8.i.i to double
  %sub = fsub fast double 1.000000e+00, %conv
  %9 = tail call fast double @llvm.fabs.f64(double %sub)
  %10 = tail call fast double @llvm.sqrt.f64(double %9)
  %11 = fptrunc double %10 to float
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul fast <2 x float> %13, %normal.coerce0
  %15 = fsub fast <2 x float> %6, %14
  %16 = fmul fast float %11, %normal.coerce1
  %add7.i69 = fsub fast float %mul4.i37, %16
  %.fca.0.insert.i72 = insertvalue { <2 x float>, float } poison, <2 x float> %15, 0
  %.fca.1.insert.i73 = insertvalue { <2 x float>, float } %.fca.0.insert.i72, float %add7.i69, 1
  ret { <2 x float>, float } %.fca.1.insert.i73
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #13

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: uwtable
define dso_local void @_Z5setupv(%struct.data* noalias sret(%struct.data) align 8 %agg.result) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %scene = alloca %class.hittable_list, align 8
  %ref.tmp = alloca %class.sphere, align 8
  %agg.tmp24 = alloca %class.hittable_list, align 8
  %0 = bitcast %class.hittable_list* %scene to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #36
  %1 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !29
  %centreX.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 1
  %2 = bitcast %"class.std::vector.0"* %centreX.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false) #36
  %3 = bitcast %class.sphere* %ref.tmp to i8*
  %centre.sroa.0.0..sroa_cast.i = bitcast %class.sphere* %ref.tmp to <2 x float>*
  %centre.sroa.2.0..sroa_idx5.i = getelementptr inbounds %class.sphere, %class.sphere* %ref.tmp, i64 0, i32 0, i32 2
  %radius3.i = getelementptr inbounds %class.sphere, %class.sphere* %ref.tmp, i64 0, i32 1
  %mat_ptr.i = getelementptr inbounds %class.sphere, %class.sphere* %ref.tmp, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %entry, %invoke.cont13
  %i.0133 = phi i32 [ 0, %entry ], [ %inc, %invoke.cont13 ]
  %mul = mul nuw nsw i32 %i.0133, 200
  %conv = sitofp i32 %mul to double
  %div = fmul fast double %conv, 0x3F6B65E2E3BEEE05
  %add = fadd fast double %div, -1.000000e+02
  %conv3 = fptrunc double %add to float
  %mul4 = mul nuw nsw i32 %i.0133, 45
  %conv5 = sitofp i32 %mul4 to double
  %div9 = fmul fast double %conv5, 0x3F6B65E2E3BEEE05
  %add10 = fadd fast double %div9, 5.000000e+00
  %conv11 = fptrunc double %add10 to float
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #36
  %agg.tmp.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %conv3, i64 0
  %agg.tmp.sroa.0.4.vec.insert = shufflevector <2 x float> %agg.tmp.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %agg.tmp.sroa.0.4.vec.insert, <2 x float>* %centre.sroa.0.0..sroa_cast.i, align 8, !tbaa.struct !31
  store float %conv3, float* %centre.sroa.2.0..sroa_idx5.i, align 8, !tbaa.struct !32
  store float %conv11, float* %radius3.i, align 4, !tbaa !33
  store %class.material* null, %class.material** %mat_ptr.i, align 8, !tbaa !36
  invoke void @_ZN13hittable_list3addERK6sphere(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene, %class.sphere* noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #36
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %invoke.cont23, label %for.body, !llvm.loop !37

lpad:                                             ; preds = %for.body
  %4 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #36
  br label %ehcleanup33

invoke.cont23:                                    ; preds = %invoke.cont13
  invoke void @_ZN13hittable_listC2ERKS_(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %agg.tmp24, %class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene)
          to label %invoke.cont25 unwind label %lpad22

invoke.cont25:                                    ; preds = %invoke.cont23
  %scene2.i = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 0
  invoke void @_ZN13hittable_listC2ERKS_(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene2.i, %class.hittable_list* noundef nonnull align 8 dereferenceable(128) %agg.tmp24)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %invoke.cont25
  %rec3.i = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 1
  %5 = bitcast %struct.hit_record* %rec3.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %agg.tmp2764.sroa.0.0..sroa_idx = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 2, i32 0, i32 0
  store float 0.000000e+00, float* %agg.tmp2764.sroa.0.0..sroa_idx, align 8, !tbaa.struct !38
  %agg.tmp2764.sroa.4.0..sroa_idx122 = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 2, i32 0, i32 1
  store float 0.000000e+00, float* %agg.tmp2764.sroa.4.0..sroa_idx122, align 4, !tbaa.struct !39
  %agg.tmp2764.sroa.5.0..sroa_idx124 = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, float* %agg.tmp2764.sroa.5.0..sroa_idx124, align 8, !tbaa.struct !40
  %agg.tmp2764.sroa.6.0..sroa_idx126 = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 2, i32 1
  %agg.tmp2764.sroa.6.0..sroa_cast = bitcast %class.vec3* %agg.tmp2764.sroa.6.0..sroa_idx126 to <2 x float>*
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float>* %agg.tmp2764.sroa.6.0..sroa_cast, align 4, !tbaa.struct !31
  %agg.tmp2764.sroa.7.0..sroa_idx128 = getelementptr inbounds %struct.data, %struct.data* %agg.result, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, float* %agg.tmp2764.sroa.7.0..sroa_idx128, align 4, !tbaa.struct !32
  %6 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !29
  %_M_start.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %7 = load %class.material**, %class.material*** %_M_start.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i = icmp eq %class.material** %7, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %invoke.cont29
  %8 = bitcast %class.material** %7 to i8*
  call void @_ZdlPv(i8* noundef %8) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i:       ; preds = %if.then.i.i.i.i, %invoke.cont29
  %_M_start.i.i2.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %9 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i = icmp eq %class.Vec8f* %9, null
  br i1 %tobool.not.i.i.i3.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i, label %if.then.i.i.i4.i

if.then.i.i.i4.i:                                 ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i
  %10 = bitcast %class.Vec8f* %9 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %10, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i:           ; preds = %if.then.i.i.i4.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i
  %_M_start.i.i5.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %11 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i = icmp eq %class.Vec8f* %11, null
  br i1 %tobool.not.i.i.i6.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i, label %if.then.i.i.i7.i

if.then.i.i.i7.i:                                 ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i
  %12 = bitcast %class.Vec8f* %11 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %12, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i:          ; preds = %if.then.i.i.i7.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i
  %_M_start.i.i9.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %13 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i = icmp eq %class.Vec8f* %13, null
  br i1 %tobool.not.i.i.i10.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i, label %if.then.i.i.i11.i

if.then.i.i.i11.i:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i
  %14 = bitcast %class.Vec8f* %13 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %14, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i:         ; preds = %if.then.i.i.i11.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i
  %_M_start.i.i13.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %agg.tmp24, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %15 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i = icmp eq %class.Vec8f* %15, null
  br i1 %tobool.not.i.i.i14.i, label %_ZN13hittable_listD2Ev.exit, label %if.then.i.i.i15.i

if.then.i.i.i15.i:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i
  %16 = bitcast %class.Vec8f* %15 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %16, i64 noundef 32) #39
  br label %_ZN13hittable_listD2Ev.exit

_ZN13hittable_listD2Ev.exit:                      ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i, %if.then.i.i.i15.i
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !29
  %_M_start.i.i.i65 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %17 = load %class.material**, %class.material*** %_M_start.i.i.i65, align 8, !tbaa !41
  %tobool.not.i.i.i.i66 = icmp eq %class.material** %17, null
  br i1 %tobool.not.i.i.i.i66, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i70, label %if.then.i.i.i.i67

if.then.i.i.i.i67:                                ; preds = %_ZN13hittable_listD2Ev.exit
  %18 = bitcast %class.material** %17 to i8*
  call void @_ZdlPv(i8* noundef %18) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i70

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i70:     ; preds = %if.then.i.i.i.i67, %_ZN13hittable_listD2Ev.exit
  %_M_start.i.i2.i68 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %19 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i68, align 8, !tbaa !43
  %tobool.not.i.i.i3.i69 = icmp eq %class.Vec8f* %19, null
  br i1 %tobool.not.i.i.i3.i69, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i74, label %if.then.i.i.i4.i71

if.then.i.i.i4.i71:                               ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i70
  %20 = bitcast %class.Vec8f* %19 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %20, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i74

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i74:         ; preds = %if.then.i.i.i4.i71, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i70
  %_M_start.i.i5.i72 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %21 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i72, align 8, !tbaa !43
  %tobool.not.i.i.i6.i73 = icmp eq %class.Vec8f* %21, null
  br i1 %tobool.not.i.i.i6.i73, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i78, label %if.then.i.i.i7.i75

if.then.i.i.i7.i75:                               ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i74
  %22 = bitcast %class.Vec8f* %21 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %22, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i78

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i78:        ; preds = %if.then.i.i.i7.i75, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i74
  %_M_start.i.i9.i76 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %23 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i76, align 8, !tbaa !43
  %tobool.not.i.i.i10.i77 = icmp eq %class.Vec8f* %23, null
  br i1 %tobool.not.i.i.i10.i77, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i82, label %if.then.i.i.i11.i79

if.then.i.i.i11.i79:                              ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i78
  %24 = bitcast %class.Vec8f* %23 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %24, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i82

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i82:       ; preds = %if.then.i.i.i11.i79, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i78
  %_M_start.i.i13.i80 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %25 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i80, align 8, !tbaa !43
  %tobool.not.i.i.i14.i81 = icmp eq %class.Vec8f* %25, null
  br i1 %tobool.not.i.i.i14.i81, label %_ZN13hittable_listD2Ev.exit84, label %if.then.i.i.i15.i83

if.then.i.i.i15.i83:                              ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i82
  %26 = bitcast %class.Vec8f* %25 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %26, i64 noundef 32) #39
  br label %_ZN13hittable_listD2Ev.exit84

_ZN13hittable_listD2Ev.exit84:                    ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i82, %if.then.i.i.i15.i83
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #36
  ret void

lpad22:                                           ; preds = %invoke.cont23
  %27 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup33

lpad28:                                           ; preds = %invoke.cont25
  %28 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN13hittable_listD2Ev(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %agg.tmp24) #36
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %lpad22, %lpad28, %lpad
  %.pn53 = phi { i8*, i32 } [ %4, %lpad ], [ %28, %lpad28 ], [ %27, %lpad22 ]
  call void @_ZN13hittable_listD2Ev(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene) #36
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #36
  resume { i8*, i32 } %.pn53
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN13hittable_list3addERK6sphere(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %this, %class.sphere* noundef nonnull align 8 dereferenceable(24) %object) local_unnamed_addr #15 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %mat_ptr2 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 2
  %_M_finish.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %0 = load %class.material**, %class.material*** %_M_finish.i, align 8, !tbaa !45
  %_M_end_of_storage.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %1 = load %class.material**, %class.material*** %_M_end_of_storage.i, align 8, !tbaa !46
  %cmp.not.i = icmp eq %class.material** %0, %1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = load %class.material*, %class.material** %mat_ptr2, align 8, !tbaa !47
  store %class.material* %2, %class.material** %0, align 8, !tbaa !47
  %3 = load %class.material**, %class.material*** %_M_finish.i, align 8, !tbaa !45
  %incdec.ptr.i = getelementptr inbounds %class.material*, %class.material** %3, i64 1
  store %class.material** %incdec.ptr.i, %class.material*** %_M_finish.i, align 8, !tbaa !45
  br label %_ZNSt6vectorIP8materialSaIS1_EE9push_backERKS1_.exit

if.else.i:                                        ; preds = %entry
  %_M_start.i.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %4 = load %class.material**, %class.material*** %_M_start.i.i.i.i, align 8, !tbaa !41
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint %class.material** %0 to i64
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.material** %4 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 9223372036854775800
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt6vectorIP8materialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorIP8materialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %if.else.i
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 1152921504606846975
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %_ZNSt12_Vector_baseIP8materialSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP8materialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %mul.i.i.i.i.i = shl nuw nsw i64 %cond.i.i.i, 3
  %call5.i.i.i.i.i = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #40
  %5 = bitcast i8* %call5.i.i.i.i.i to %class.material**
  br label %_ZNSt12_Vector_baseIP8materialSaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIP8materialSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP8materialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %cond.i38.i.i = phi %class.material** [ %5, %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i ], [ null, %_ZNKSt6vectorIP8materialSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %add.ptr.i.i = getelementptr inbounds %class.material*, %class.material** %cond.i38.i.i, i64 %sub.ptr.div.i.i.i.i
  %6 = load %class.material*, %class.material** %mat_ptr2, align 8, !tbaa !47
  store %class.material* %6, %class.material** %add.ptr.i.i, align 8, !tbaa !47
  %cmp.i.i.i39.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i, 0
  br i1 %cmp.i.i.i39.i.i, label %if.then.i.i.i40.i.i, label %_ZNSt6vectorIP8materialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit49.i.i

if.then.i.i.i40.i.i:                              ; preds = %_ZNSt12_Vector_baseIP8materialSaIS1_EE11_M_allocateEm.exit.i.i
  %7 = bitcast %class.material** %cond.i38.i.i to i8*
  %8 = bitcast %class.material** %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 %sub.ptr.sub.i.i.i.i, i1 false) #36
  br label %_ZNSt6vectorIP8materialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit49.i.i

_ZNSt6vectorIP8materialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit49.i.i: ; preds = %if.then.i.i.i40.i.i, %_ZNSt12_Vector_baseIP8materialSaIS1_EE11_M_allocateEm.exit.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.material*, %class.material** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.material** %4, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i50.i.i

if.then.i50.i.i:                                  ; preds = %_ZNSt6vectorIP8materialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit49.i.i
  %9 = bitcast %class.material** %4 to i8*
  tail call void @_ZdlPv(i8* noundef %9) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8materialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i50.i.i, %_ZNSt6vectorIP8materialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit49.i.i
  store %class.material** %cond.i38.i.i, %class.material*** %_M_start.i.i.i.i, align 8, !tbaa !41
  store %class.material** %incdec.ptr.i.i, %class.material*** %_M_finish.i, align 8, !tbaa !45
  %add.ptr20.i.i = getelementptr inbounds %class.material*, %class.material** %cond.i38.i.i, i64 %cond.i.i.i
  store %class.material** %add.ptr20.i.i, %class.material*** %_M_end_of_storage.i, align 8, !tbaa !46
  br label %_ZNSt6vectorIP8materialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8materialSaIS1_EE9push_backERKS1_.exit: ; preds = %if.then.i, %_ZNSt6vectorIP8materialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %_M_start.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %10 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i, align 8, !tbaa !47
  %_M_finish.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %11 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %cmp.i.i = icmp eq %class.Vec8f* %10, %11
  br i1 %cmp.i.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_ZNSt6vectorIP8materialSaIS1_EE9push_backERKS1_.exit
  %ymm.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %11, i64 -1, i32 0
  %12 = load <8 x float>, <8 x float>* %ymm.i.i.i, align 32, !tbaa !24
  %x.i.i.28.vec.extract = extractelement <8 x float> %12, i64 7
  %cmp = fcmp fast une float %x.i.i.28.vec.extract, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %_ZNSt6vectorIP8materialSaIS1_EE9push_backERKS1_.exit
  %a.i = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 0
  %13 = load float, float* %a.i, align 8, !tbaa !48
  %vecinit7.i.i.i = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %13, i64 0
  %_M_finish.i.i66 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i66, align 8, !tbaa !49
  %_M_end_of_storage.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %15 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage.i.i, align 8, !tbaa !50
  %cmp.not.i.i = icmp eq %class.Vec8f* %14, %15
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  %ref.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %14, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i, <8 x float>* %ref.tmp.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %16 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i66, align 8, !tbaa !49
  %incdec.ptr.i.i67 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %16, i64 1
  store %class.Vec8f* %incdec.ptr.i.i67, %class.Vec8f** %_M_finish.i.i66, align 8, !tbaa !49
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit

if.else.i.i:                                      ; preds = %if.then
  %_M_start.i.i.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %17 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i.i, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint %class.Vec8f* %14 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint %class.Vec8f* %17 to i64
  %sub.ptr.sub.i.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i.i, 5
  %cmp.i.i.i.i68 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i, 9223372036854775776
  br i1 %cmp.i.i.i.i68, label %if.then.i.i.i.i, label %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.else.i.i
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %if.else.i.i
  %cmp.i.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i.i, 0
  %.sroa.speculated.i.i.i.i = select i1 %cmp.i.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i.i
  %add.i.i.i.i = add nsw i64 %.sroa.speculated.i.i.i.i, %sub.ptr.div.i.i.i.i.i
  %cmp7.i.i.i.i = icmp ult i64 %add.i.i.i.i, %sub.ptr.div.i.i.i.i.i
  %cmp9.i.i.i.i = icmp ugt i64 %add.i.i.i.i, 288230376151711743
  %or.cond.i.i.i.i = or i1 %cmp7.i.i.i.i, %cmp9.i.i.i.i
  %cond.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 288230376151711743, i64 %add.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq i64 %cond.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i: ; preds = %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %cond.i.i.i.i, 5
  %call5.i.i.i.i.i.i = tail call noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %mul.i.i.i.i.i.i, i64 noundef 32) #40
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i.i.i, i64 32) ]
  %18 = bitcast i8* %call5.i.i.i.i.i.i to %class.Vec8f*
  br label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %cond.i38.i.i.i = phi %class.Vec8f* [ %18, %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i ], [ null, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i, i64 %sub.ptr.div.i.i.i.i.i
  %ref.tmp.sroa.0.0..sroa_idx316 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i, <8 x float>* %ref.tmp.sroa.0.0..sroa_idx316, align 32, !tbaa.struct !51
  %cmp.i.i.i39.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i.i, 0
  br i1 %cmp.i.i.i39.i.i.i, label %if.then.i.i.i40.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i

if.then.i.i.i40.i.i.i:                            ; preds = %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i
  %19 = bitcast %class.Vec8f* %cond.i38.i.i.i to i8*
  %20 = bitcast %class.Vec8f* %17 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %19, i8* align 32 %20, i64 %sub.ptr.sub.i.i.i.i.i, i1 false) #36
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i: ; preds = %if.then.i.i.i40.i.i.i, %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i
  %incdec.ptr.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i, i64 1
  %tobool.not.i.i.i.i = icmp eq %class.Vec8f* %17, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %if.then.i50.i.i.i

if.then.i50.i.i.i:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i
  %21 = bitcast %class.Vec8f* %17 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %21, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %if.then.i50.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i
  store %class.Vec8f* %cond.i38.i.i.i, %class.Vec8f** %_M_start.i.i.i.i.i, align 8, !tbaa !43
  store %class.Vec8f* %incdec.ptr.i.i.i, %class.Vec8f** %_M_finish.i.i66, align 8, !tbaa !49
  %add.ptr20.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i, i64 %cond.i.i.i.i
  store %class.Vec8f* %add.ptr20.i.i.i, %class.Vec8f** %_M_end_of_storage.i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit:  ; preds = %if.then.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %b.i = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %22 = load float, float* %b.i, align 4, !tbaa !52
  %vecinit7.i.i.i76 = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %22, i64 0
  %_M_finish.i.i78 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %23 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i78, align 8, !tbaa !49
  %_M_end_of_storage.i.i79 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %24 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage.i.i79, align 8, !tbaa !50
  %cmp.not.i.i80 = icmp eq %class.Vec8f* %23, %24
  br i1 %cmp.not.i.i80, label %if.else.i.i89, label %if.then.i.i82

if.then.i.i82:                                    ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit
  %ref.tmp8.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %23, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i76, <8 x float>* %ref.tmp8.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %25 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i78, align 8, !tbaa !49
  %incdec.ptr.i.i81 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %25, i64 1
  store %class.Vec8f* %incdec.ptr.i.i81, %class.Vec8f** %_M_finish.i.i78, align 8, !tbaa !49
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit114

if.else.i.i89:                                    ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit
  %_M_start.i.i.i.i.i83 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %26 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i.i83, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i.i.i.i84 = ptrtoint %class.Vec8f* %23 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i85 = ptrtoint %class.Vec8f* %26 to i64
  %sub.ptr.sub.i.i.i.i.i86 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i84, %sub.ptr.rhs.cast.i.i.i.i.i85
  %sub.ptr.div.i.i.i.i.i87 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i86, 5
  %cmp.i.i.i.i88 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i86, 9223372036854775776
  br i1 %cmp.i.i.i.i88, label %if.then.i.i.i.i90, label %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i99

if.then.i.i.i.i90:                                ; preds = %if.else.i.i89
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %if.else.i.i89
  %cmp.i.i.i.i.i91 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i86, 0
  %.sroa.speculated.i.i.i.i92 = select i1 %cmp.i.i.i.i.i91, i64 1, i64 %sub.ptr.div.i.i.i.i.i87
  %add.i.i.i.i93 = add nsw i64 %.sroa.speculated.i.i.i.i92, %sub.ptr.div.i.i.i.i.i87
  %cmp7.i.i.i.i94 = icmp ult i64 %add.i.i.i.i93, %sub.ptr.div.i.i.i.i.i87
  %cmp9.i.i.i.i95 = icmp ugt i64 %add.i.i.i.i93, 288230376151711743
  %or.cond.i.i.i.i96 = or i1 %cmp7.i.i.i.i94, %cmp9.i.i.i.i95
  %cond.i.i.i.i97 = select i1 %or.cond.i.i.i.i96, i64 288230376151711743, i64 %add.i.i.i.i93
  %cmp.not.i.i.i.i98 = icmp eq i64 %cond.i.i.i.i97, 0
  br i1 %cmp.not.i.i.i.i98, label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i106, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i102

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i102: ; preds = %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i99
  %mul.i.i.i.i.i.i100 = shl nuw nsw i64 %cond.i.i.i.i97, 5
  %call5.i.i.i.i.i.i101 = tail call noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %mul.i.i.i.i.i.i100, i64 noundef 32) #40
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i.i.i101, i64 32) ]
  %27 = bitcast i8* %call5.i.i.i.i.i.i101 to %class.Vec8f*
  br label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i106

_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i106: ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i102, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i99
  %cond.i38.i.i.i103 = phi %class.Vec8f* [ %27, %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i102 ], [ null, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i99 ]
  %add.ptr.i.i.i104 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i103, i64 %sub.ptr.div.i.i.i.i.i87
  %ref.tmp8.sroa.0.0..sroa_idx313 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i104, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i76, <8 x float>* %ref.tmp8.sroa.0.0..sroa_idx313, align 32, !tbaa.struct !51
  %cmp.i.i.i39.i.i.i105 = icmp sgt i64 %sub.ptr.sub.i.i.i.i.i86, 0
  br i1 %cmp.i.i.i39.i.i.i105, label %if.then.i.i.i40.i.i.i107, label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i110

if.then.i.i.i40.i.i.i107:                         ; preds = %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i106
  %28 = bitcast %class.Vec8f* %cond.i38.i.i.i103 to i8*
  %29 = bitcast %class.Vec8f* %26 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %28, i8* align 32 %29, i64 %sub.ptr.sub.i.i.i.i.i86, i1 false) #36
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i110

_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i110: ; preds = %if.then.i.i.i40.i.i.i107, %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i106
  %incdec.ptr.i.i.i108 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i104, i64 1
  %tobool.not.i.i.i.i109 = icmp eq %class.Vec8f* %26, null
  br i1 %tobool.not.i.i.i.i109, label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i113, label %if.then.i50.i.i.i111

if.then.i50.i.i.i111:                             ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i110
  %30 = bitcast %class.Vec8f* %26 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %30, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i113

_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i113: ; preds = %if.then.i50.i.i.i111, %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i110
  store %class.Vec8f* %cond.i38.i.i.i103, %class.Vec8f** %_M_start.i.i.i.i.i83, align 8, !tbaa !43
  store %class.Vec8f* %incdec.ptr.i.i.i108, %class.Vec8f** %_M_finish.i.i78, align 8, !tbaa !49
  %add.ptr20.i.i.i112 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i103, i64 %cond.i.i.i.i97
  store %class.Vec8f* %add.ptr20.i.i.i112, %class.Vec8f** %_M_end_of_storage.i.i79, align 8, !tbaa !50
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit114

_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit114: ; preds = %if.then.i.i82, %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i113
  %c.i = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %31 = load float, float* %c.i, align 8, !tbaa !53
  %vecinit7.i.i.i122 = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %31, i64 0
  %_M_finish.i.i124 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %32 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i124, align 8, !tbaa !49
  %_M_end_of_storage.i.i125 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %33 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage.i.i125, align 8, !tbaa !50
  %cmp.not.i.i126 = icmp eq %class.Vec8f* %32, %33
  br i1 %cmp.not.i.i126, label %if.else.i.i135, label %if.then.i.i128

if.then.i.i128:                                   ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit114
  %ref.tmp11.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %32, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i122, <8 x float>* %ref.tmp11.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %34 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i124, align 8, !tbaa !49
  %incdec.ptr.i.i127 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %34, i64 1
  store %class.Vec8f* %incdec.ptr.i.i127, %class.Vec8f** %_M_finish.i.i124, align 8, !tbaa !49
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit160

if.else.i.i135:                                   ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit114
  %_M_start.i.i.i.i.i129 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %35 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i.i129, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i.i.i.i130 = ptrtoint %class.Vec8f* %32 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i131 = ptrtoint %class.Vec8f* %35 to i64
  %sub.ptr.sub.i.i.i.i.i132 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i130, %sub.ptr.rhs.cast.i.i.i.i.i131
  %sub.ptr.div.i.i.i.i.i133 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i132, 5
  %cmp.i.i.i.i134 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i132, 9223372036854775776
  br i1 %cmp.i.i.i.i134, label %if.then.i.i.i.i136, label %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i145

if.then.i.i.i.i136:                               ; preds = %if.else.i.i135
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i145: ; preds = %if.else.i.i135
  %cmp.i.i.i.i.i137 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i132, 0
  %.sroa.speculated.i.i.i.i138 = select i1 %cmp.i.i.i.i.i137, i64 1, i64 %sub.ptr.div.i.i.i.i.i133
  %add.i.i.i.i139 = add nsw i64 %.sroa.speculated.i.i.i.i138, %sub.ptr.div.i.i.i.i.i133
  %cmp7.i.i.i.i140 = icmp ult i64 %add.i.i.i.i139, %sub.ptr.div.i.i.i.i.i133
  %cmp9.i.i.i.i141 = icmp ugt i64 %add.i.i.i.i139, 288230376151711743
  %or.cond.i.i.i.i142 = or i1 %cmp7.i.i.i.i140, %cmp9.i.i.i.i141
  %cond.i.i.i.i143 = select i1 %or.cond.i.i.i.i142, i64 288230376151711743, i64 %add.i.i.i.i139
  %cmp.not.i.i.i.i144 = icmp eq i64 %cond.i.i.i.i143, 0
  br i1 %cmp.not.i.i.i.i144, label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i152, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i148

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i148: ; preds = %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i145
  %mul.i.i.i.i.i.i146 = shl nuw nsw i64 %cond.i.i.i.i143, 5
  %call5.i.i.i.i.i.i147 = tail call noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %mul.i.i.i.i.i.i146, i64 noundef 32) #40
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i.i.i147, i64 32) ]
  %36 = bitcast i8* %call5.i.i.i.i.i.i147 to %class.Vec8f*
  br label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i152

_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i152: ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i148, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i145
  %cond.i38.i.i.i149 = phi %class.Vec8f* [ %36, %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i148 ], [ null, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i145 ]
  %add.ptr.i.i.i150 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i149, i64 %sub.ptr.div.i.i.i.i.i133
  %ref.tmp11.sroa.0.0..sroa_idx310 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i150, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i122, <8 x float>* %ref.tmp11.sroa.0.0..sroa_idx310, align 32, !tbaa.struct !51
  %cmp.i.i.i39.i.i.i151 = icmp sgt i64 %sub.ptr.sub.i.i.i.i.i132, 0
  br i1 %cmp.i.i.i39.i.i.i151, label %if.then.i.i.i40.i.i.i153, label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i156

if.then.i.i.i40.i.i.i153:                         ; preds = %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i152
  %37 = bitcast %class.Vec8f* %cond.i38.i.i.i149 to i8*
  %38 = bitcast %class.Vec8f* %35 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %37, i8* align 32 %38, i64 %sub.ptr.sub.i.i.i.i.i132, i1 false) #36
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i156

_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i156: ; preds = %if.then.i.i.i40.i.i.i153, %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i152
  %incdec.ptr.i.i.i154 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i150, i64 1
  %tobool.not.i.i.i.i155 = icmp eq %class.Vec8f* %35, null
  br i1 %tobool.not.i.i.i.i155, label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i159, label %if.then.i50.i.i.i157

if.then.i50.i.i.i157:                             ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i156
  %39 = bitcast %class.Vec8f* %35 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %39, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i159

_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i159: ; preds = %if.then.i50.i.i.i157, %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i156
  store %class.Vec8f* %cond.i38.i.i.i149, %class.Vec8f** %_M_start.i.i.i.i.i129, align 8, !tbaa !43
  store %class.Vec8f* %incdec.ptr.i.i.i154, %class.Vec8f** %_M_finish.i.i124, align 8, !tbaa !49
  %add.ptr20.i.i.i158 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i149, i64 %cond.i.i.i.i143
  store %class.Vec8f* %add.ptr20.i.i.i158, %class.Vec8f** %_M_end_of_storage.i.i125, align 8, !tbaa !50
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit160

_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit160: ; preds = %if.then.i.i128, %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i159
  %radius16 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %40 = load float, float* %radius16, align 4, !tbaa !33
  %vecinit7.i.i.i168 = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %40, i64 0
  %41 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !49
  %_M_end_of_storage.i.i171 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %42 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage.i.i171, align 8, !tbaa !50
  %cmp.not.i.i172 = icmp eq %class.Vec8f* %41, %42
  br i1 %cmp.not.i.i172, label %if.else.i.i181, label %if.then.i.i174

if.then.i.i174:                                   ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit160
  %ref.tmp15.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %41, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i168, <8 x float>* %ref.tmp15.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %43 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !49
  %incdec.ptr.i.i173 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %43, i64 1
  store %class.Vec8f* %incdec.ptr.i.i173, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !49
  br label %if.end

if.else.i.i181:                                   ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE9push_backEOS0_.exit160
  %44 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i.i.i.i176 = ptrtoint %class.Vec8f* %41 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i177 = ptrtoint %class.Vec8f* %44 to i64
  %sub.ptr.sub.i.i.i.i.i178 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i176, %sub.ptr.rhs.cast.i.i.i.i.i177
  %sub.ptr.div.i.i.i.i.i179 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i178, 5
  %cmp.i.i.i.i180 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i178, 9223372036854775776
  br i1 %cmp.i.i.i.i180, label %if.then.i.i.i.i182, label %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i191

if.then.i.i.i.i182:                               ; preds = %if.else.i.i181
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i191: ; preds = %if.else.i.i181
  %cmp.i.i.i.i.i183 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i178, 0
  %.sroa.speculated.i.i.i.i184 = select i1 %cmp.i.i.i.i.i183, i64 1, i64 %sub.ptr.div.i.i.i.i.i179
  %add.i.i.i.i185 = add nsw i64 %.sroa.speculated.i.i.i.i184, %sub.ptr.div.i.i.i.i.i179
  %cmp7.i.i.i.i186 = icmp ult i64 %add.i.i.i.i185, %sub.ptr.div.i.i.i.i.i179
  %cmp9.i.i.i.i187 = icmp ugt i64 %add.i.i.i.i185, 288230376151711743
  %or.cond.i.i.i.i188 = or i1 %cmp7.i.i.i.i186, %cmp9.i.i.i.i187
  %cond.i.i.i.i189 = select i1 %or.cond.i.i.i.i188, i64 288230376151711743, i64 %add.i.i.i.i185
  %cmp.not.i.i.i.i190 = icmp eq i64 %cond.i.i.i.i189, 0
  br i1 %cmp.not.i.i.i.i190, label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i198, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i194

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i194: ; preds = %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i191
  %mul.i.i.i.i.i.i192 = shl nuw nsw i64 %cond.i.i.i.i189, 5
  %call5.i.i.i.i.i.i193 = tail call noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %mul.i.i.i.i.i.i192, i64 noundef 32) #40
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i.i.i193, i64 32) ]
  %45 = bitcast i8* %call5.i.i.i.i.i.i193 to %class.Vec8f*
  br label %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i198

_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i198: ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i194, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i191
  %cond.i38.i.i.i195 = phi %class.Vec8f* [ %45, %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i194 ], [ null, %_ZNKSt6vectorI5Vec8fSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i191 ]
  %add.ptr.i.i.i196 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i195, i64 %sub.ptr.div.i.i.i.i.i179
  %ref.tmp15.sroa.0.0..sroa_idx307 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i196, i64 0, i32 0
  store <8 x float> %vecinit7.i.i.i168, <8 x float>* %ref.tmp15.sroa.0.0..sroa_idx307, align 32, !tbaa.struct !51
  %cmp.i.i.i39.i.i.i197 = icmp sgt i64 %sub.ptr.sub.i.i.i.i.i178, 0
  br i1 %cmp.i.i.i39.i.i.i197, label %if.then.i.i.i40.i.i.i199, label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i202

if.then.i.i.i40.i.i.i199:                         ; preds = %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i198
  %46 = bitcast %class.Vec8f* %cond.i38.i.i.i195 to i8*
  %47 = bitcast %class.Vec8f* %44 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %46, i8* align 32 %47, i64 %sub.ptr.sub.i.i.i.i.i178, i1 false) #36
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i202

_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i202: ; preds = %if.then.i.i.i40.i.i.i199, %_ZNSt12_Vector_baseI5Vec8fSaIS0_EE11_M_allocateEm.exit.i.i.i198
  %incdec.ptr.i.i.i200 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i.i196, i64 1
  %tobool.not.i.i.i.i201 = icmp eq %class.Vec8f* %44, null
  br i1 %tobool.not.i.i.i.i201, label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i205, label %if.then.i50.i.i.i203

if.then.i50.i.i.i203:                             ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i202
  %48 = bitcast %class.Vec8f* %44 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %48, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i205

_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i205: ; preds = %if.then.i50.i.i.i203, %_ZNSt6vectorI5Vec8fSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit49.i.i.i202
  store %class.Vec8f* %cond.i38.i.i.i195, %class.Vec8f** %_M_start.i.i, align 8, !tbaa !43
  store %class.Vec8f* %incdec.ptr.i.i.i200, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !49
  %add.ptr20.i.i.i204 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i38.i.i.i195, i64 %cond.i.i.i.i189
  store %class.Vec8f* %add.ptr20.i.i.i204, %class.Vec8f** %_M_end_of_storage.i.i171, align 8, !tbaa !50
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %49 = fcmp fast oeq <8 x float> %12, zeroinitializer
  %50 = sext <8 x i1> %49 to <8 x i32>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %shuffle.i.i.i.i.i.i = shufflevector <4 x i64> %51, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %extract.i.i.i.i.i = shufflevector <8 x i32> %50, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %52 = bitcast <2 x i64> %shuffle.i.i.i.i.i.i to <4 x i32>
  %53 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %52, <4 x i32> %extract.i.i.i.i.i) #36
  %54 = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %53, <8 x i16> %53) #36
  %55 = icmp slt <16 x i8> %54, zeroinitializer
  %bc.i.i.i = bitcast <16 x i1> %55 to <2 x i8>
  %conv.i.i.i = extractelement <2 x i8> %bc.i.i.i, i64 0
  %cmp.i = icmp eq i8 %conv.i.i.i, 0
  br i1 %cmp.i, label %_ZN5Vec8f6insertEif.exit275.thread593, label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit

_ZN5Vec8f6insertEif.exit275.thread593:            ; preds = %if.else
  %_M_finish.i.i210320 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %56 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i210320, align 8, !tbaa !47
  %a.i212323 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 0
  %57 = load float, float* %a.i212323, align 8, !tbaa !48
  %58 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %56, i64 -1, i32 0, i64 7
  store float %57, float* %58, align 4, !tbaa !24
  br label %sw.default.i303

_ZL21horizontal_find_firstI6Vec8fbEiT_.exit:      ; preds = %if.else
  %conv.i = zext i8 %conv.i.i.i to i32
  %59 = tail call i32 asm "bsfl $1, $0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %conv.i) #41, !srcloc !54
  %_M_finish.i.i210 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %60 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i210, align 8, !tbaa !47
  %add.ptr.i.i211 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %60, i64 -1
  %a.i212 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 0
  %61 = load float, float* %a.i212, align 8, !tbaa !48
  %vecinit.i.i = insertelement <8 x float> undef, float %61, i64 0
  %vecinit7.i.i = shufflevector <8 x float> %vecinit.i.i, <8 x float> poison, <8 x i32> zeroinitializer
  switch i32 %59, label %_ZN5Vec8f6insertEif.exit [
    i32 0, label %_ZN5Vec8f6insertEif.exit.thread
    i32 1, label %_ZN5Vec8f6insertEif.exit.thread345
    i32 2, label %_ZN5Vec8f6insertEif.exit.thread358
    i32 3, label %_ZN5Vec8f6insertEif.exit.thread371
    i32 4, label %_ZN5Vec8f6insertEif.exit.thread384
    i32 5, label %_ZN5Vec8f6insertEif.exit.thread397
    i32 6, label %_ZN5Vec8f6insertEif.exit.thread410
  ]

_ZN5Vec8f6insertEif.exit.thread:                  ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %62 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0, i64 0
  store float %61, float* %62, align 32, !tbaa !24
  %_M_finish.i.i214335 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %63 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214335, align 8, !tbaa !47
  %b.i216337 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %64 = load float, float* %b.i216337, align 4, !tbaa !52
  %65 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %63, i64 -1, i32 0, i64 0
  store float %64, float* %65, align 32, !tbaa !24
  %_M_finish.i.i245443 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %66 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245443, align 8, !tbaa !47
  %c.i247445 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %67 = load float, float* %c.i247445, align 8, !tbaa !53
  %68 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %66, i64 -1, i32 0, i64 0
  store float %67, float* %68, align 32, !tbaa !24
  %69 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48541 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %70 = load float, float* %radius48541, align 4, !tbaa !33
  %71 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %69, i64 -1, i32 0, i64 0
  store float %70, float* %71, align 32, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread345:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm4.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %72 = load <8 x float>, <8 x float>* %ymm4.i, align 32, !tbaa !24
  %blend5.i = shufflevector <8 x float> %72, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %blend5.i, <8 x float>* %ymm4.i, align 32, !tbaa !24
  %_M_finish.i.i214349 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %73 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214349, align 8, !tbaa !47
  %b.i216351 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %74 = load float, float* %b.i216351, align 4, !tbaa !52
  %75 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %73, i64 -1, i32 0, i64 1
  store float %74, float* %75, align 4, !tbaa !24
  %_M_finish.i.i245455 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %76 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245455, align 8, !tbaa !47
  %c.i247457 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %77 = load float, float* %c.i247457, align 8, !tbaa !53
  %78 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %76, i64 -1, i32 0, i64 1
  store float %77, float* %78, align 4, !tbaa !24
  %79 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48548 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %80 = load float, float* %radius48548, align 4, !tbaa !33
  %81 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %79, i64 -1, i32 0, i64 1
  store float %80, float* %81, align 4, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread358:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm8.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %82 = load <8 x float>, <8 x float>* %ymm8.i, align 32, !tbaa !24
  %blend9.i = shufflevector <8 x float> %82, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %blend9.i, <8 x float>* %ymm8.i, align 32, !tbaa !24
  %_M_finish.i.i214362 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %83 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214362, align 8, !tbaa !47
  %b.i216364 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %84 = load float, float* %b.i216364, align 4, !tbaa !52
  %85 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %83, i64 -1, i32 0, i64 2
  store float %84, float* %85, align 8, !tbaa !24
  %_M_finish.i.i245467 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %86 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245467, align 8, !tbaa !47
  %c.i247469 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %87 = load float, float* %c.i247469, align 8, !tbaa !53
  %88 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %86, i64 -1, i32 0, i64 2
  store float %87, float* %88, align 8, !tbaa !24
  %89 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48556 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %90 = load float, float* %radius48556, align 4, !tbaa !33
  %91 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %89, i64 -1, i32 0, i64 2
  store float %90, float* %91, align 8, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread371:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm12.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %92 = load <8 x float>, <8 x float>* %ymm12.i, align 32, !tbaa !24
  %blend13.i = shufflevector <8 x float> %92, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %blend13.i, <8 x float>* %ymm12.i, align 32, !tbaa !24
  %_M_finish.i.i214375 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %93 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214375, align 8, !tbaa !47
  %b.i216377 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %94 = load float, float* %b.i216377, align 4, !tbaa !52
  %95 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %93, i64 -1, i32 0, i64 3
  store float %94, float* %95, align 4, !tbaa !24
  %_M_finish.i.i245479 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %96 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245479, align 8, !tbaa !47
  %c.i247481 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %97 = load float, float* %c.i247481, align 8, !tbaa !53
  %98 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %96, i64 -1, i32 0, i64 3
  store float %97, float* %98, align 4, !tbaa !24
  %99 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48564 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %100 = load float, float* %radius48564, align 4, !tbaa !33
  %101 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %99, i64 -1, i32 0, i64 3
  store float %100, float* %101, align 4, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread384:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm16.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %102 = load <8 x float>, <8 x float>* %ymm16.i, align 32, !tbaa !24
  %blend17.i = shufflevector <8 x float> %102, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 5, i32 6, i32 7>
  store <8 x float> %blend17.i, <8 x float>* %ymm16.i, align 32, !tbaa !24
  %_M_finish.i.i214388 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %103 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214388, align 8, !tbaa !47
  %b.i216390 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %104 = load float, float* %b.i216390, align 4, !tbaa !52
  %105 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %103, i64 -1, i32 0, i64 4
  store float %104, float* %105, align 16, !tbaa !24
  %_M_finish.i.i245491 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %106 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245491, align 8, !tbaa !47
  %c.i247493 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %107 = load float, float* %c.i247493, align 8, !tbaa !53
  %108 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %106, i64 -1, i32 0, i64 4
  store float %107, float* %108, align 16, !tbaa !24
  %109 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48572 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %110 = load float, float* %radius48572, align 4, !tbaa !33
  %111 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %109, i64 -1, i32 0, i64 4
  store float %110, float* %111, align 16, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread397:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm20.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %112 = load <8 x float>, <8 x float>* %ymm20.i, align 32, !tbaa !24
  %blend21.i = shufflevector <8 x float> %112, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x float> %blend21.i, <8 x float>* %ymm20.i, align 32, !tbaa !24
  %_M_finish.i.i214401 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %113 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214401, align 8, !tbaa !47
  %b.i216403 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %114 = load float, float* %b.i216403, align 4, !tbaa !52
  %115 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %113, i64 -1, i32 0, i64 5
  store float %114, float* %115, align 4, !tbaa !24
  %_M_finish.i.i245503 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %116 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245503, align 8, !tbaa !47
  %c.i247505 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %117 = load float, float* %c.i247505, align 8, !tbaa !53
  %118 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %116, i64 -1, i32 0, i64 5
  store float %117, float* %118, align 4, !tbaa !24
  %119 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48580 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %120 = load float, float* %radius48580, align 4, !tbaa !33
  %121 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %119, i64 -1, i32 0, i64 5
  store float %120, float* %121, align 4, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit.thread410:               ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm24.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %122 = load <8 x float>, <8 x float>* %ymm24.i, align 32, !tbaa !24
  %blend25.i = shufflevector <8 x float> %122, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 7>
  store <8 x float> %blend25.i, <8 x float>* %ymm24.i, align 32, !tbaa !24
  %_M_finish.i.i214414 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %123 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214414, align 8, !tbaa !47
  %b.i216416 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %124 = load float, float* %b.i216416, align 4, !tbaa !52
  %125 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %123, i64 -1, i32 0, i64 6
  store float %124, float* %125, align 8, !tbaa !24
  %_M_finish.i.i245515 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245515, align 8, !tbaa !47
  %c.i247517 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %127 = load float, float* %c.i247517, align 8, !tbaa !53
  %128 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %126, i64 -1, i32 0, i64 6
  store float %127, float* %128, align 8, !tbaa !24
  %129 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %radius48588 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %130 = load float, float* %radius48588, align 4, !tbaa !33
  %131 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %129, i64 -1, i32 0, i64 6
  store float %130, float* %131, align 8, !tbaa !24
  br label %if.end

_ZN5Vec8f6insertEif.exit:                         ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit
  %ymm27.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %add.ptr.i.i211, i64 0, i32 0
  %132 = load <8 x float>, <8 x float>* %ymm27.i, align 32, !tbaa !24
  %blend28.i = shufflevector <8 x float> %132, <8 x float> %vecinit7.i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  store <8 x float> %blend28.i, <8 x float>* %ymm27.i, align 32, !tbaa !24
  br label %sw.default.i303

sw.default.i303:                                  ; preds = %_ZN5Vec8f6insertEif.exit, %_ZN5Vec8f6insertEif.exit275.thread593
  %_M_finish.i.i214 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %133 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i214, align 8, !tbaa !47
  %b.i216 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 1
  %134 = load float, float* %b.i216, align 4, !tbaa !52
  %135 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %133, i64 -1, i32 0, i64 7
  store float %134, float* %135, align 4, !tbaa !24
  %_M_finish.i.i245 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %136 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i245, align 8, !tbaa !47
  %c.i247 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 0, i32 2
  %137 = load float, float* %c.i247, align 8, !tbaa !53
  %138 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %136, i64 -1, i32 0, i64 7
  store float %137, float* %138, align 4, !tbaa !24
  %radius48 = getelementptr inbounds %class.sphere, %class.sphere* %object, i64 0, i32 1
  %139 = load float, float* %radius48, align 4, !tbaa !33
  %.pn = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %140 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %.pn, i64 -1, i32 0, i64 7
  store float %139, float* %140, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %sw.default.i303, %_ZN5Vec8f6insertEif.exit.thread410, %_ZN5Vec8f6insertEif.exit.thread397, %_ZN5Vec8f6insertEif.exit.thread384, %_ZN5Vec8f6insertEif.exit.thread371, %_ZN5Vec8f6insertEif.exit.thread358, %_ZN5Vec8f6insertEif.exit.thread345, %_ZN5Vec8f6insertEif.exit.thread, %_ZNSt6vectorI5Vec8fSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i205, %if.then.i.i174
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN13hittable_listC2ERKS_(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %this, %class.hittable_list* noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #16 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %1 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !29
  %centreX = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1
  %_M_finish.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %2 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !49
  %_M_start.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %3 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i = ptrtoint %class.Vec8f* %2 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint %class.Vec8f* %3 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 5
  %4 = bitcast %"class.std::vector.0"* %centreX to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false) #36
  %cmp.not.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %entry
  %cmp.i.i.i.i.i.i = icmp ugt i64 %sub.ptr.sub.i.i, 9223372036854775776
  br i1 %cmp.i.i.i.i.i.i, label %if.then3.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i, !prof !55

if.then3.i.i.i.i.i.i:                             ; preds = %cond.true.i.i.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i: ; preds = %cond.true.i.i.i.i
  %call5.i.i.i.i4.i20.i = tail call noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %sub.ptr.sub.i.i, i64 noundef 32) #40
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i4.i20.i, i64 32) ]
  %5 = bitcast i8* %call5.i.i.i.i4.i20.i to %class.Vec8f*
  br label %invoke.cont.i

invoke.cont.i:                                    ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i, %entry
  %cond.i.i.i.i = phi %class.Vec8f* [ %5, %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i ], [ null, %entry ]
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %centreX, i64 0, i32 0, i32 0, i32 0, i32 0
  store %class.Vec8f* %cond.i.i.i.i, %class.Vec8f** %_M_start.i.i.i, align 8, !tbaa !43
  %_M_finish.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  store %class.Vec8f* %cond.i.i.i.i, %class.Vec8f** %_M_finish.i.i.i, align 8, !tbaa !49
  %add.ptr.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i, i64 %sub.ptr.div.i.i
  %_M_end_of_storage.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  store %class.Vec8f* %add.ptr.i.i.i, %class.Vec8f** %_M_end_of_storage.i.i.i, align 8, !tbaa !50
  %6 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i, align 8, !tbaa !47
  %7 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i, align 8, !tbaa !47
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i = ptrtoint %class.Vec8f* %7 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i = ptrtoint %class.Vec8f* %6 to i64
  %sub.ptr.sub.i.i.i.i.i.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit, label %if.then.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %invoke.cont.i
  %8 = bitcast %class.Vec8f* %cond.i.i.i.i to i8*
  %9 = bitcast %class.Vec8f* %6 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %8, i8* align 32 %9, i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i, i1 false) #36
  br label %_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit

_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit:         ; preds = %invoke.cont.i, %if.then.i.i.i.i.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i, 5
  %add.ptr.i.i.i.i.i.i.i.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i, i64 %sub.ptr.div.i.i.i.i.i.i.i.i.i
  store %class.Vec8f* %add.ptr.i.i.i.i.i.i.i.i.i, %class.Vec8f** %_M_finish.i.i.i, align 8, !tbaa !49
  %centreY = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2
  %_M_finish.i.i24 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %10 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i24, align 8, !tbaa !49
  %_M_start.i.i25 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %11 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i25, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i26 = ptrtoint %class.Vec8f* %10 to i64
  %sub.ptr.rhs.cast.i.i27 = ptrtoint %class.Vec8f* %11 to i64
  %sub.ptr.sub.i.i28 = sub i64 %sub.ptr.lhs.cast.i.i26, %sub.ptr.rhs.cast.i.i27
  %sub.ptr.div.i.i29 = ashr exact i64 %sub.ptr.sub.i.i28, 5
  %12 = bitcast %"class.std::vector.0"* %centreY to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false) #36
  %cmp.not.i.i.i.i30 = icmp eq i64 %sub.ptr.sub.i.i28, 0
  br i1 %cmp.not.i.i.i.i30, label %invoke.cont.i45, label %cond.true.i.i.i.i32

cond.true.i.i.i.i32:                              ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit
  %cmp.i.i.i.i.i.i31 = icmp ugt i64 %sub.ptr.sub.i.i28, 9223372036854775776
  br i1 %cmp.i.i.i.i.i.i31, label %if.then3.i.i.i.i.i.i33, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i35, !prof !55

if.then3.i.i.i.i.i.i33:                           ; preds = %cond.true.i.i.i.i32
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %if.then3.i.i.i.i.i.i33
  unreachable

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i35: ; preds = %cond.true.i.i.i.i32
  %call5.i.i.i.i4.i20.i3449 = invoke noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %sub.ptr.sub.i.i28, i64 noundef 32) #40
          to label %call5.i.i.i.i4.i20.i34.noexc unwind label %lpad

call5.i.i.i.i4.i20.i34.noexc:                     ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i35
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i4.i20.i3449, i64 32) ]
  %13 = bitcast i8* %call5.i.i.i.i4.i20.i3449 to %class.Vec8f*
  br label %invoke.cont.i45

invoke.cont.i45:                                  ; preds = %call5.i.i.i.i4.i20.i34.noexc, %_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit
  %cond.i.i.i.i36 = phi %class.Vec8f* [ %13, %call5.i.i.i.i4.i20.i34.noexc ], [ null, %_ZNSt6vectorI5Vec8fSaIS0_EEC2ERKS2_.exit ]
  %_M_start.i.i.i37 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %centreY, i64 0, i32 0, i32 0, i32 0, i32 0
  store %class.Vec8f* %cond.i.i.i.i36, %class.Vec8f** %_M_start.i.i.i37, align 8, !tbaa !43
  %_M_finish.i.i.i38 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  store %class.Vec8f* %cond.i.i.i.i36, %class.Vec8f** %_M_finish.i.i.i38, align 8, !tbaa !49
  %add.ptr.i.i.i39 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i36, i64 %sub.ptr.div.i.i29
  %_M_end_of_storage.i.i.i40 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  store %class.Vec8f* %add.ptr.i.i.i39, %class.Vec8f** %_M_end_of_storage.i.i.i40, align 8, !tbaa !50
  %14 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i25, align 8, !tbaa !47
  %15 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i24, align 8, !tbaa !47
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i41 = ptrtoint %class.Vec8f* %15 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i42 = ptrtoint %class.Vec8f* %14 to i64
  %sub.ptr.sub.i.i.i.i.i.i.i.i.i43 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i41, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i42
  %tobool.not.i.i.i.i.i.i.i.i.i44 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i43, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i44, label %invoke.cont, label %if.then.i.i.i.i.i.i.i.i.i46

if.then.i.i.i.i.i.i.i.i.i46:                      ; preds = %invoke.cont.i45
  %16 = bitcast %class.Vec8f* %cond.i.i.i.i36 to i8*
  %17 = bitcast %class.Vec8f* %14 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %16, i8* align 32 %17, i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i43, i1 false) #36
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.then.i.i.i.i.i.i.i.i.i46, %invoke.cont.i45
  %sub.ptr.div.i.i.i.i.i.i.i.i.i47 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i43, 5
  %add.ptr.i.i.i.i.i.i.i.i.i48 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i36, i64 %sub.ptr.div.i.i.i.i.i.i.i.i.i47
  store %class.Vec8f* %add.ptr.i.i.i.i.i.i.i.i.i48, %class.Vec8f** %_M_finish.i.i.i38, align 8, !tbaa !49
  %centreZ = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3
  %_M_finish.i.i51 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i51, align 8, !tbaa !49
  %_M_start.i.i52 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %19 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i52, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i53 = ptrtoint %class.Vec8f* %18 to i64
  %sub.ptr.rhs.cast.i.i54 = ptrtoint %class.Vec8f* %19 to i64
  %sub.ptr.sub.i.i55 = sub i64 %sub.ptr.lhs.cast.i.i53, %sub.ptr.rhs.cast.i.i54
  %sub.ptr.div.i.i56 = ashr exact i64 %sub.ptr.sub.i.i55, 5
  %20 = bitcast %"class.std::vector.0"* %centreZ to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false) #36
  %cmp.not.i.i.i.i57 = icmp eq i64 %sub.ptr.sub.i.i55, 0
  br i1 %cmp.not.i.i.i.i57, label %invoke.cont.i72, label %cond.true.i.i.i.i59

cond.true.i.i.i.i59:                              ; preds = %invoke.cont
  %cmp.i.i.i.i.i.i58 = icmp ugt i64 %sub.ptr.sub.i.i55, 9223372036854775776
  br i1 %cmp.i.i.i.i.i.i58, label %if.then3.i.i.i.i.i.i60, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i62, !prof !55

if.then3.i.i.i.i.i.i60:                           ; preds = %cond.true.i.i.i.i59
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc76 unwind label %lpad5

.noexc76:                                         ; preds = %if.then3.i.i.i.i.i.i60
  unreachable

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i62: ; preds = %cond.true.i.i.i.i59
  %call5.i.i.i.i4.i20.i6177 = invoke noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %sub.ptr.sub.i.i55, i64 noundef 32) #40
          to label %call5.i.i.i.i4.i20.i61.noexc unwind label %lpad5

call5.i.i.i.i4.i20.i61.noexc:                     ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i62
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i4.i20.i6177, i64 32) ]
  %21 = bitcast i8* %call5.i.i.i.i4.i20.i6177 to %class.Vec8f*
  br label %invoke.cont.i72

invoke.cont.i72:                                  ; preds = %call5.i.i.i.i4.i20.i61.noexc, %invoke.cont
  %cond.i.i.i.i63 = phi %class.Vec8f* [ %21, %call5.i.i.i.i4.i20.i61.noexc ], [ null, %invoke.cont ]
  %_M_start.i.i.i64 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %centreZ, i64 0, i32 0, i32 0, i32 0, i32 0
  store %class.Vec8f* %cond.i.i.i.i63, %class.Vec8f** %_M_start.i.i.i64, align 8, !tbaa !43
  %_M_finish.i.i.i65 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  store %class.Vec8f* %cond.i.i.i.i63, %class.Vec8f** %_M_finish.i.i.i65, align 8, !tbaa !49
  %add.ptr.i.i.i66 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i63, i64 %sub.ptr.div.i.i56
  %_M_end_of_storage.i.i.i67 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store %class.Vec8f* %add.ptr.i.i.i66, %class.Vec8f** %_M_end_of_storage.i.i.i67, align 8, !tbaa !50
  %22 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i52, align 8, !tbaa !47
  %23 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i51, align 8, !tbaa !47
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i68 = ptrtoint %class.Vec8f* %23 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i69 = ptrtoint %class.Vec8f* %22 to i64
  %sub.ptr.sub.i.i.i.i.i.i.i.i.i70 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i68, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i69
  %tobool.not.i.i.i.i.i.i.i.i.i71 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i70, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i71, label %invoke.cont6, label %if.then.i.i.i.i.i.i.i.i.i73

if.then.i.i.i.i.i.i.i.i.i73:                      ; preds = %invoke.cont.i72
  %24 = bitcast %class.Vec8f* %cond.i.i.i.i63 to i8*
  %25 = bitcast %class.Vec8f* %22 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %24, i8* align 32 %25, i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i70, i1 false) #36
  br label %invoke.cont6

invoke.cont6:                                     ; preds = %if.then.i.i.i.i.i.i.i.i.i73, %invoke.cont.i72
  %sub.ptr.div.i.i.i.i.i.i.i.i.i74 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i70, 5
  %add.ptr.i.i.i.i.i.i.i.i.i75 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i63, i64 %sub.ptr.div.i.i.i.i.i.i.i.i.i74
  store %class.Vec8f* %add.ptr.i.i.i.i.i.i.i.i.i75, %class.Vec8f** %_M_finish.i.i.i65, align 8, !tbaa !49
  %radius = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4
  %_M_finish.i.i79 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %26 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i79, align 8, !tbaa !49
  %_M_start.i.i80 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %27 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i80, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i81 = ptrtoint %class.Vec8f* %26 to i64
  %sub.ptr.rhs.cast.i.i82 = ptrtoint %class.Vec8f* %27 to i64
  %sub.ptr.sub.i.i83 = sub i64 %sub.ptr.lhs.cast.i.i81, %sub.ptr.rhs.cast.i.i82
  %sub.ptr.div.i.i84 = ashr exact i64 %sub.ptr.sub.i.i83, 5
  %28 = bitcast %"class.std::vector.0"* %radius to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false) #36
  %cmp.not.i.i.i.i85 = icmp eq i64 %sub.ptr.sub.i.i83, 0
  br i1 %cmp.not.i.i.i.i85, label %invoke.cont.i100, label %cond.true.i.i.i.i87

cond.true.i.i.i.i87:                              ; preds = %invoke.cont6
  %cmp.i.i.i.i.i.i86 = icmp ugt i64 %sub.ptr.sub.i.i83, 9223372036854775776
  br i1 %cmp.i.i.i.i.i.i86, label %if.then3.i.i.i.i.i.i88, label %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i90, !prof !55

if.then3.i.i.i.i.i.i88:                           ; preds = %cond.true.i.i.i.i87
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc104 unwind label %lpad8

.noexc104:                                        ; preds = %if.then3.i.i.i.i.i.i88
  unreachable

_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i90: ; preds = %cond.true.i.i.i.i87
  %call5.i.i.i.i4.i20.i89105 = invoke noalias noundef nonnull align 32 i8* @_ZnwmSt11align_val_t(i64 noundef %sub.ptr.sub.i.i83, i64 noundef 32) #40
          to label %call5.i.i.i.i4.i20.i89.noexc unwind label %lpad8

call5.i.i.i.i4.i20.i89.noexc:                     ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i90
  call void @llvm.assume(i1 true) [ "align"(i8* %call5.i.i.i.i4.i20.i89105, i64 32) ]
  %29 = bitcast i8* %call5.i.i.i.i4.i20.i89105 to %class.Vec8f*
  br label %invoke.cont.i100

invoke.cont.i100:                                 ; preds = %call5.i.i.i.i4.i20.i89.noexc, %invoke.cont6
  %cond.i.i.i.i91 = phi %class.Vec8f* [ %29, %call5.i.i.i.i4.i20.i89.noexc ], [ null, %invoke.cont6 ]
  %_M_start.i.i.i92 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %radius, i64 0, i32 0, i32 0, i32 0, i32 0
  store %class.Vec8f* %cond.i.i.i.i91, %class.Vec8f** %_M_start.i.i.i92, align 8, !tbaa !43
  %_M_finish.i.i.i93 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store %class.Vec8f* %cond.i.i.i.i91, %class.Vec8f** %_M_finish.i.i.i93, align 8, !tbaa !49
  %add.ptr.i.i.i94 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i91, i64 %sub.ptr.div.i.i84
  %_M_end_of_storage.i.i.i95 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  store %class.Vec8f* %add.ptr.i.i.i94, %class.Vec8f** %_M_end_of_storage.i.i.i95, align 8, !tbaa !50
  %30 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i80, align 8, !tbaa !47
  %31 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i79, align 8, !tbaa !47
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i96 = ptrtoint %class.Vec8f* %31 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i97 = ptrtoint %class.Vec8f* %30 to i64
  %sub.ptr.sub.i.i.i.i.i.i.i.i.i98 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i96, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i97
  %tobool.not.i.i.i.i.i.i.i.i.i99 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i98, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i99, label %invoke.cont9, label %if.then.i.i.i.i.i.i.i.i.i101

if.then.i.i.i.i.i.i.i.i.i101:                     ; preds = %invoke.cont.i100
  %32 = bitcast %class.Vec8f* %cond.i.i.i.i91 to i8*
  %33 = bitcast %class.Vec8f* %30 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 32 %32, i8* align 32 %33, i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i98, i1 false) #36
  br label %invoke.cont9

invoke.cont9:                                     ; preds = %if.then.i.i.i.i.i.i.i.i.i101, %invoke.cont.i100
  %sub.ptr.div.i.i.i.i.i.i.i.i.i102 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i98, 5
  %add.ptr.i.i.i.i.i.i.i.i.i103 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %cond.i.i.i.i91, i64 %sub.ptr.div.i.i.i.i.i.i.i.i.i102
  store %class.Vec8f* %add.ptr.i.i.i.i.i.i.i.i.i103, %class.Vec8f** %_M_finish.i.i.i93, align 8, !tbaa !49
  %mat_ptr = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5
  %_M_finish.i.i107 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %34 = load %class.material**, %class.material*** %_M_finish.i.i107, align 8, !tbaa !45
  %_M_start.i.i108 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %35 = load %class.material**, %class.material*** %_M_start.i.i108, align 8, !tbaa !41
  %sub.ptr.lhs.cast.i.i109 = ptrtoint %class.material** %34 to i64
  %sub.ptr.rhs.cast.i.i110 = ptrtoint %class.material** %35 to i64
  %sub.ptr.sub.i.i111 = sub i64 %sub.ptr.lhs.cast.i.i109, %sub.ptr.rhs.cast.i.i110
  %sub.ptr.div.i.i112 = ashr exact i64 %sub.ptr.sub.i.i111, 3
  %36 = bitcast %"class.std::vector.5"* %mat_ptr to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false) #36
  %cmp.not.i.i.i.i113 = icmp eq i64 %sub.ptr.sub.i.i111, 0
  br i1 %cmp.not.i.i.i.i113, label %invoke.cont.i127, label %cond.true.i.i.i.i115

cond.true.i.i.i.i115:                             ; preds = %invoke.cont9
  %cmp.i.i.i.i.i.i114 = icmp ugt i64 %sub.ptr.sub.i.i111, 9223372036854775800
  br i1 %cmp.i.i.i.i.i.i114, label %if.then3.i.i.i.i.i.i116, label %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i.i, !prof !55

if.then3.i.i.i.i.i.i116:                          ; preds = %cond.true.i.i.i.i115
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc131 unwind label %lpad11

.noexc131:                                        ; preds = %if.then3.i.i.i.i.i.i116
  unreachable

_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i.i: ; preds = %cond.true.i.i.i.i115
  %call5.i.i.i.i4.i20.i117132 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %sub.ptr.sub.i.i111) #40
          to label %call5.i.i.i.i4.i20.i117.noexc unwind label %lpad11

call5.i.i.i.i4.i20.i117.noexc:                    ; preds = %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i.i
  %37 = bitcast i8* %call5.i.i.i.i4.i20.i117132 to %class.material**
  br label %invoke.cont.i127

invoke.cont.i127:                                 ; preds = %call5.i.i.i.i4.i20.i117.noexc, %invoke.cont9
  %cond.i.i.i.i118 = phi %class.material** [ %37, %call5.i.i.i.i4.i20.i117.noexc ], [ null, %invoke.cont9 ]
  %_M_start.i.i.i119 = getelementptr inbounds %"class.std::vector.5", %"class.std::vector.5"* %mat_ptr, i64 0, i32 0, i32 0, i32 0, i32 0
  store %class.material** %cond.i.i.i.i118, %class.material*** %_M_start.i.i.i119, align 8, !tbaa !41
  %_M_finish.i.i.i120 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  store %class.material** %cond.i.i.i.i118, %class.material*** %_M_finish.i.i.i120, align 8, !tbaa !45
  %add.ptr.i.i.i121 = getelementptr inbounds %class.material*, %class.material** %cond.i.i.i.i118, i64 %sub.ptr.div.i.i112
  %_M_end_of_storage.i.i.i122 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  store %class.material** %add.ptr.i.i.i121, %class.material*** %_M_end_of_storage.i.i.i122, align 8, !tbaa !46
  %38 = load %class.material**, %class.material*** %_M_start.i.i108, align 8, !tbaa !47
  %39 = load %class.material**, %class.material*** %_M_finish.i.i107, align 8, !tbaa !47
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i123 = ptrtoint %class.material** %39 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i124 = ptrtoint %class.material** %38 to i64
  %sub.ptr.sub.i.i.i.i.i.i.i.i.i125 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i.i123, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i.i124
  %tobool.not.i.i.i.i.i.i.i.i.i126 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i125, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i126, label %invoke.cont12, label %if.then.i.i.i.i.i.i.i.i.i128

if.then.i.i.i.i.i.i.i.i.i128:                     ; preds = %invoke.cont.i127
  %40 = bitcast %class.material** %cond.i.i.i.i118 to i8*
  %41 = bitcast %class.material** %38 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i125, i1 false) #36
  br label %invoke.cont12

invoke.cont12:                                    ; preds = %if.then.i.i.i.i.i.i.i.i.i128, %invoke.cont.i127
  %sub.ptr.div.i.i.i.i.i.i.i.i.i129 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i.i.i.i125, 3
  %add.ptr.i.i.i.i.i.i.i.i.i130 = getelementptr inbounds %class.material*, %class.material** %cond.i.i.i.i118, i64 %sub.ptr.div.i.i.i.i.i.i.i.i.i129
  store %class.material** %add.ptr.i.i.i.i.i.i.i.i.i130, %class.material*** %_M_finish.i.i.i120, align 8, !tbaa !45
  ret void

lpad:                                             ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i35, %if.then3.i.i.i.i.i.i33
  %42 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14

lpad5:                                            ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i62, %if.then3.i.i.i.i.i.i60
  %43 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup13

lpad8:                                            ; preds = %_ZNSt16allocator_traitsISaI5Vec8fEE8allocateERS1_m.exit.i.i.i.i90, %if.then3.i.i.i.i.i.i88
  %44 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad11:                                           ; preds = %_ZNSt16allocator_traitsISaIP8materialEE8allocateERS2_m.exit.i.i.i.i, %if.then3.i.i.i.i.i.i116
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i92, align 8, !tbaa !43
  %tobool.not.i.i.i = icmp eq %class.Vec8f* %46, null
  br i1 %tobool.not.i.i.i, label %ehcleanup, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad11
  %47 = bitcast %class.Vec8f* %46 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %47, i64 noundef 32) #39
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i.i, %lpad11, %lpad8
  %.pn = phi { i8*, i32 } [ %44, %lpad8 ], [ %45, %lpad11 ], [ %45, %if.then.i.i.i ]
  %48 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i64, align 8, !tbaa !43
  %tobool.not.i.i.i136 = icmp eq %class.Vec8f* %48, null
  br i1 %tobool.not.i.i.i136, label %ehcleanup13, label %if.then.i.i.i138

if.then.i.i.i138:                                 ; preds = %ehcleanup
  %49 = bitcast %class.Vec8f* %48 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %49, i64 noundef 32) #39
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %if.then.i.i.i138, %ehcleanup, %lpad5
  %.pn.pn = phi { i8*, i32 } [ %43, %lpad5 ], [ %.pn, %ehcleanup ], [ %.pn, %if.then.i.i.i138 ]
  %50 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i37, align 8, !tbaa !43
  %tobool.not.i.i.i141 = icmp eq %class.Vec8f* %50, null
  br i1 %tobool.not.i.i.i141, label %ehcleanup14, label %if.then.i.i.i143

if.then.i.i.i143:                                 ; preds = %ehcleanup13
  %51 = bitcast %class.Vec8f* %50 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %51, i64 noundef 32) #39
  br label %ehcleanup14

ehcleanup14:                                      ; preds = %if.then.i.i.i143, %ehcleanup13, %lpad
  %.pn.pn.pn = phi { i8*, i32 } [ %42, %lpad ], [ %.pn.pn, %ehcleanup13 ], [ %.pn.pn, %if.then.i.i.i143 ]
  %52 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i146 = icmp eq %class.Vec8f* %52, null
  br i1 %tobool.not.i.i.i146, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit149, label %if.then.i.i.i148

if.then.i.i.i148:                                 ; preds = %ehcleanup14
  %53 = bitcast %class.Vec8f* %52 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %53, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit149

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit149:          ; preds = %ehcleanup14, %if.then.i.i.i148
  resume { i8*, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN13hittable_listD2Ev(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %this) unnamed_addr #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !29
  %_M_start.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %1 = load %class.material**, %class.material*** %_M_start.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i = icmp eq %class.material** %1, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %2 = bitcast %class.material** %1 to i8*
  tail call void @_ZdlPv(i8* noundef %2) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit:         ; preds = %entry, %if.then.i.i.i
  %_M_start.i.i2 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %3 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2, align 8, !tbaa !43
  %tobool.not.i.i.i3 = icmp eq %class.Vec8f* %3, null
  br i1 %tobool.not.i.i.i3, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit, label %if.then.i.i.i4

if.then.i.i.i4:                                   ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit
  %4 = bitcast %class.Vec8f* %3 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %4, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit:             ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit, %if.then.i.i.i4
  %_M_start.i.i5 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %5 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5, align 8, !tbaa !43
  %tobool.not.i.i.i6 = icmp eq %class.Vec8f* %5, null
  br i1 %tobool.not.i.i.i6, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8, label %if.then.i.i.i7

if.then.i.i.i7:                                   ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit
  %6 = bitcast %class.Vec8f* %5 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %6, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8:            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit, %if.then.i.i.i7
  %_M_start.i.i9 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %7 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9, align 8, !tbaa !43
  %tobool.not.i.i.i10 = icmp eq %class.Vec8f* %7, null
  br i1 %tobool.not.i.i.i10, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12, label %if.then.i.i.i11

if.then.i.i.i11:                                  ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8
  %8 = bitcast %class.Vec8f* %7 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %8, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12:           ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8, %if.then.i.i.i11
  %_M_start.i.i13 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %9 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13, align 8, !tbaa !43
  %tobool.not.i.i.i14 = icmp eq %class.Vec8f* %9, null
  br i1 %tobool.not.i.i.i14, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit16, label %if.then.i.i.i15

if.then.i.i.i15:                                  ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12
  %10 = bitcast %class.Vec8f* %9 to i8*
  tail call void @_ZdlPvSt11align_val_t(i8* noundef %10, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit16

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit16:           ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12, %if.then.i.i.i15
  ret void
}

declare noundef %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"* noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #18

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #19 {
entry:
  %argc.addr = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !56
  call void @_ZN9benchmark10InitializeEPiPPc(i32* noundef nonnull %argc.addr, i8** noundef %argv)
  %0 = load i32, i32* %argc.addr, align 4, !tbaa !56
  %call = call noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef %0, i8** noundef %argv)
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv()
  call void @_ZN9benchmark8ShutdownEv()
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @_ZN9benchmark10InitializeEPiPPc(i32* noundef, i8** noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef, i8** noundef) local_unnamed_addr #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark8ShutdownEv() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #20 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
invoke.cont:
  %_M_start.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i, align 8, !tbaa !12
  %tobool.not.i.i = icmp eq %"class.boost::stacktrace::frame"* %0, null
  br i1 %tobool.not.i.i, label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %1 = bitcast %"class.boost::stacktrace::frame"* %0 to i8*
  tail call void @_ZdlPv(i8* noundef %1) #39
  br label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EED2Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #21 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #36
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #13

declare i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13hittable_list3hitERK3rayffR10hit_record(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %this, %class.ray* noundef nonnull align 4 dereferenceable(24) %r, float noundef %t_min, float noundef %t_max, %struct.hit_record* noundef nonnull align 8 dereferenceable(36) %rec) unnamed_addr #15 comdat align 2 {
entry:
  %x.i.i486 = alloca <8 x float>, align 16
  %x.i.i474 = alloca <8 x float>, align 16
  %x.i.i468 = alloca <8 x float>, align 16
  %x.i.i462 = alloca <8 x float>, align 16
  %x.i.i = alloca <8 x float>, align 16
  %x.i.i.i455 = alloca <4 x i64>, align 16
  %x.i.i.i = alloca <8 x float>, align 16
  %vecinit.i.i.i = insertelement <8 x float> undef, float %t_max, i64 0
  %vecinit7.i.i.i = shufflevector <8 x float> %vecinit.i.i.i, <8 x float> poison, <8 x i32> zeroinitializer
  %retval.sroa.0.0..sroa_cast.i = bitcast %class.ray* %r to <2 x float>*
  %retval.sroa.0.0.copyload.i = load <2 x float>, <2 x float>* %retval.sroa.0.0..sroa_cast.i, align 4, !tbaa.struct !31
  %retval.sroa.2.0..sroa_idx3.i = getelementptr inbounds %class.ray, %class.ray* %r, i64 0, i32 0, i32 2
  %0 = bitcast float* %retval.sroa.2.0..sroa_idx3.i to <4 x float>*
  %1 = load <4 x float>, <4 x float>* %0, align 4
  %vecinit7.i.i.i365 = shufflevector <2 x float> %retval.sroa.0.0.copyload.i, <2 x float> undef, <8 x i32> zeroinitializer
  %vecinit7.i.i.i374 = shufflevector <2 x float> %retval.sroa.0.0.copyload.i, <2 x float> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %vecinit7.i.i.i383 = shufflevector <4 x float> %1, <4 x float> poison, <8 x i32> zeroinitializer
  %retval.sroa.0.0..sroa_idx.i = getelementptr inbounds %class.ray, %class.ray* %r, i64 0, i32 1
  %retval.sroa.0.0..sroa_cast.i385 = bitcast %class.vec3* %retval.sroa.0.0..sroa_idx.i to <2 x float>*
  %retval.sroa.0.0.copyload.i386 = load <2 x float>, <2 x float>* %retval.sroa.0.0..sroa_cast.i385, align 4, !tbaa.struct !31
  %retval.sroa.2.0..sroa_idx3.i387 = getelementptr inbounds %class.ray, %class.ray* %r, i64 0, i32 1, i32 2
  %retval.sroa.2.0.copyload.i388 = load float, float* %retval.sroa.2.0..sroa_idx3.i387, align 4, !tbaa.struct !32
  %vecinit7.i.i.i393 = shufflevector <2 x float> %retval.sroa.0.0.copyload.i386, <2 x float> undef, <8 x i32> zeroinitializer
  %vecinit7.i.i.i404 = shufflevector <2 x float> %retval.sroa.0.0.copyload.i386, <2 x float> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %vecinit.i.i.i414 = insertelement <8 x float> undef, float %retval.sroa.2.0.copyload.i388, i64 0
  %vecinit7.i.i.i415 = shufflevector <8 x float> %vecinit.i.i.i414, <8 x float> poison, <8 x i32> zeroinitializer
  %vecinit.i.i.i417 = insertelement <8 x float> undef, float %t_min, i64 0
  %vecinit7.i.i.i418 = shufflevector <8 x float> %vecinit.i.i.i417, <8 x float> poison, <8 x i32> zeroinitializer
  %_M_finish.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %2 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i, align 8, !tbaa !49
  %_M_start.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %3 = load %class.Vec8f*, %class.Vec8f** %_M_start.i, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i = ptrtoint %class.Vec8f* %2 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %class.Vec8f* %3 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %4 = lshr exact i64 %sub.ptr.sub.i, 5
  %conv = trunc i64 %4 to i32
  %cmp536 = icmp sgt i32 %conv, 0
  br i1 %cmp536, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %_M_start.i420 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %5 = load %class.Vec8f*, %class.Vec8f** %_M_start.i420, align 8, !tbaa !43
  %_M_start.i421 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %6 = load %class.Vec8f*, %class.Vec8f** %_M_start.i421, align 8, !tbaa !43
  %_M_start.i424 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %7 = load %class.Vec8f*, %class.Vec8f** %_M_start.i424, align 8, !tbaa !43
  %wide.trip.count = and i64 %4, 4294967295
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %.lcssa = phi <8 x i32> [ undef, %entry ], [ %39, %if.end ]
  %hitT.sroa.0.0.lcssa = phi <8 x float> [ %vecinit7.i.i.i, %entry ], [ %hitT.sroa.0.1, %if.end ]
  %8 = tail call fast <8 x float> asm sideeffect "vcmpps $$3, $1, $1, $0", "=v,v,~{dirflag},~{fpsr},~{flags}"(<8 x float> %hitT.sroa.0.0.lcssa) #36, !srcloc !57
  %9 = tail call i32 @llvm.x86.avx.vtestz.ps.256(<8 x float> %8, <8 x float> %8) #36
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond.cleanup
  %10 = tail call fast <8 x float> asm sideeffect "vcmpps $$3, $1, $1, $0", "=v,v,~{dirflag},~{fpsr},~{flags}"(<8 x float> %hitT.sroa.0.0.lcssa) #36, !srcloc !57
  %11 = bitcast <8 x float> %10 to <4 x i64>
  %shuffle.i.i.i.i.i.i.i = shufflevector <4 x i64> %11, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %12 = bitcast <8 x float> %10 to <8 x i32>
  %extract.i.i.i.i.i.i = shufflevector <8 x i32> %12, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %13 = bitcast <2 x i64> %shuffle.i.i.i.i.i.i.i to <4 x i32>
  %14 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %13, <4 x i32> %extract.i.i.i.i.i.i) #36
  %15 = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %14, <8 x i16> %14) #36
  %16 = icmp slt <16 x i8> %15, zeroinitializer
  %bc.i.i.i.i = bitcast <16 x i1> %16 to <2 x i8>
  %conv.i.i.i.i = extractelement <2 x i8> %bc.i.i.i.i, i64 0
  %cmp.i.i = icmp eq i8 %conv.i.i.i.i, 0
  br i1 %cmp.i.i, label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %conv.i.i = zext i8 %conv.i.i.i.i to i32
  %17 = tail call i32 asm "bsfl $1, $0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %conv.i.i) #41, !srcloc !54
  %phi.bo.i = and i32 %17, 7
  %phi.cast.i = zext i32 %phi.bo.i to i64
  br label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i

_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i:    ; preds = %if.end.i.i, %if.then.i
  %retval.0.i.i = phi i64 [ %phi.cast.i, %if.end.i.i ], [ 7, %if.then.i ]
  %18 = bitcast <8 x float>* %x.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #36
  store <8 x float> %hitT.sroa.0.0.lcssa, <8 x float>* %x.i.i.i, align 16, !tbaa !24
  %arrayidx.i.i.i = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i.i, i64 0, i64 %retval.0.i.i
  %19 = load float, float* %arrayidx.i.i.i, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #36
  br label %_Z14horizontal_minI5Vec8fEDaT_.exit

if.end.i:                                         ; preds = %for.cond.cleanup
  %shuffle.i.i.i.i = shufflevector <8 x float> %hitT.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %extract.i.i.i = shufflevector <8 x float> %hitT.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %20 = tail call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %shuffle.i.i.i.i, <4 x float> %extract.i.i.i) #36
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %22 = tail call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %21, <4 x float> %20) #36
  %cast.i.i.i.i = bitcast <4 x float> %22 to <16 x i8>
  %psrldq.i.i.i.i = shufflevector <16 x i8> %cast.i.i.i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %23 = bitcast <16 x i8> %psrldq.i.i.i.i to <4 x float>
  %24 = tail call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %23, <4 x float> %22) #36
  %x.i.i.0.vec.extract.i.i.i = extractelement <4 x float> %24, i64 0
  br label %_Z14horizontal_minI5Vec8fEDaT_.exit

_Z14horizontal_minI5Vec8fEDaT_.exit:              ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i, %if.end.i
  %retval.0.i = phi float [ %19, %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i ], [ %x.i.i.0.vec.extract.i.i.i, %if.end.i ]
  %cmp235 = fcmp fast olt float %retval.0.i, %t_max
  br i1 %cmp235, label %if.then236, label %if.end282

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %hitT.sroa.0.0537 = phi <8 x float> [ %vecinit7.i.i.i, %for.body.lr.ph ], [ %hitT.sroa.0.1, %if.end ]
  %25 = phi <8 x i32> [ undef, %for.body.lr.ph ], [ %39, %if.end ]
  %26 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %for.body.lr.ph ], [ %add.i.i.i, %if.end ]
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %5, i64 %indvars.iv, i32 0
  %agg.tmp.sroa.0.0.copyload = load <8 x float>, <8 x float>* %agg.tmp.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %sub.i.i = fsub fast <8 x float> %agg.tmp.sroa.0.0.copyload, %vecinit7.i.i.i365
  %agg.tmp30.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %6, i64 %indvars.iv, i32 0
  %agg.tmp30.sroa.0.0.copyload = load <8 x float>, <8 x float>* %agg.tmp30.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %sub.i.i423 = fsub fast <8 x float> %agg.tmp30.sroa.0.0.copyload, %vecinit7.i.i.i374
  %agg.tmp38.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %7, i64 %indvars.iv, i32 0
  %agg.tmp38.sroa.0.0.copyload = load <8 x float>, <8 x float>* %agg.tmp38.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %sub.i.i426 = fsub fast <8 x float> %agg.tmp38.sroa.0.0.copyload, %vecinit7.i.i.i383
  %mul.i.i = fmul fast <8 x float> %sub.i.i, %vecinit7.i.i.i393
  %mul.i.i427 = fmul fast <8 x float> %sub.i.i423, %vecinit7.i.i.i404
  %add.i.i = fadd fast <8 x float> %mul.i.i427, %mul.i.i
  %mul.i.i428 = fmul fast <8 x float> %sub.i.i426, %vecinit7.i.i.i415
  %add.i.i429 = fadd fast <8 x float> %add.i.i, %mul.i.i428
  %agg.tmp108.sroa.0.0..sroa_idx = getelementptr inbounds %class.Vec8f, %class.Vec8f* %3, i64 %indvars.iv, i32 0
  %agg.tmp108.sroa.0.0.copyload = load <8 x float>, <8 x float>* %agg.tmp108.sroa.0.0..sroa_idx, align 32, !tbaa.struct !51
  %mul.i.i439 = fmul fast <8 x float> %agg.tmp108.sroa.0.0.copyload, %agg.tmp108.sroa.0.0.copyload
  %mul.i.i441 = fmul fast <8 x float> %add.i.i429, %add.i.i429
  %mul.i.i430.neg = fmul fast <8 x float> %sub.i.i, %sub.i.i
  %mul.i.i431.neg = fmul fast <8 x float> %sub.i.i423, %sub.i.i423
  %mul.i.i433.neg = fmul fast <8 x float> %sub.i.i426, %sub.i.i426
  %reass.add = fadd fast <8 x float> %mul.i.i431.neg, %mul.i.i430.neg
  %reass.add535 = fadd fast <8 x float> %reass.add, %mul.i.i433.neg
  %27 = fadd fast <8 x float> %mul.i.i441, %mul.i.i439
  %sub.i.i442 = fsub fast <8 x float> %27, %reass.add535
  %28 = fcmp fast ogt <8 x float> %sub.i.i442, zeroinitializer
  %29 = sext <8 x i1> %28 to <8 x i32>
  %30 = bitcast <8 x i32> %29 to <8 x float>
  %31 = tail call i32 @llvm.x86.avx.vtestz.ps.256(<8 x float> %30, <8 x float> %30) #36
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %32 = tail call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %sub.i.i442) #36
  %sub.i.i444 = fsub fast <8 x float> %add.i.i429, %32
  %add.i.i445 = fadd fast <8 x float> %32, %add.i.i429
  %33 = fcmp fast olt <8 x float> %vecinit7.i.i.i418, %sub.i.i444
  %34 = select <8 x i1> %33, <8 x float> %sub.i.i444, <8 x float> %add.i.i445
  %35 = fcmp fast olt <8 x float> %vecinit7.i.i.i418, %34
  %and.i.i533 = and <8 x i1> %35, %28
  %36 = fcmp fast olt <8 x float> %34, %hitT.sroa.0.0537
  %and.i.i446534 = and <8 x i1> %and.i.i533, %36
  %37 = select <8 x i1> %and.i.i446534, <8 x i32> %26, <8 x i32> %25
  %38 = select <8 x i1> %and.i.i446534, <8 x float> %34, <8 x float> %hitT.sroa.0.0537
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %39 = phi <8 x i32> [ %37, %if.then ], [ %25, %for.body ]
  %hitT.sroa.0.1 = phi <8 x float> [ %38, %if.then ], [ %hitT.sroa.0.0537, %for.body ]
  %add.i.i.i = add <8 x i32> %26, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !58

if.then236:                                       ; preds = %_Z14horizontal_minI5Vec8fEDaT_.exit
  %vecinit.i.i.i449 = insertelement <8 x float> undef, float %retval.0.i, i64 0
  %vecinit7.i.i.i450 = shufflevector <8 x float> %vecinit.i.i.i449, <8 x float> poison, <8 x i32> zeroinitializer
  %40 = fcmp fast oeq <8 x float> %hitT.sroa.0.0.lcssa, %vecinit7.i.i.i450
  %41 = sext <8 x i1> %40 to <8 x i32>
  %42 = bitcast <8 x i32> %41 to <4 x i64>
  %shuffle.i.i.i.i.i.i452 = shufflevector <4 x i64> %42, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %extract.i.i.i.i.i = shufflevector <8 x i32> %41, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %43 = bitcast <2 x i64> %shuffle.i.i.i.i.i.i452 to <4 x i32>
  %44 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %43, <4 x i32> %extract.i.i.i.i.i) #36
  %45 = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %44, <8 x i16> %44) #36
  %46 = icmp slt <16 x i8> %45, zeroinitializer
  %bc.i.i.i = bitcast <16 x i1> %46 to <2 x i8>
  %conv.i.i.i = extractelement <2 x i8> %bc.i.i.i, i64 0
  %cmp.i = icmp eq i8 %conv.i.i.i, 0
  br i1 %cmp.i, label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit, label %if.end.i453

if.end.i453:                                      ; preds = %if.then236
  %conv.i = zext i8 %conv.i.i.i to i32
  %47 = tail call i32 asm "bsfl $1, $0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %conv.i) #41, !srcloc !54
  %phi.bo = and i32 %47, 7
  %phi.cast = zext i32 %phi.bo to i64
  br label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit

_ZL21horizontal_find_firstI6Vec8fbEiT_.exit:      ; preds = %if.then236, %if.end.i453
  %retval.0.i454 = phi i64 [ %phi.cast, %if.end.i453 ], [ 7, %if.then236 ]
  %tmpcast.i.i.i = bitcast <4 x i64>* %x.i.i.i455 to [8 x i32]*
  %48 = bitcast <4 x i64>* %x.i.i.i455 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %48) #36
  %49 = bitcast <4 x i64>* %x.i.i.i455 to <8 x i32>*
  store <8 x i32> %.lcssa, <8 x i32>* %49, align 16, !tbaa !24
  %arrayidx.i.i.i456 = getelementptr inbounds [8 x i32], [8 x i32]* %tmpcast.i.i.i, i64 0, i64 %retval.0.i454
  %50 = load i32, i32* %arrayidx.i.i.i456, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %48) #36
  %51 = bitcast <8 x float>* %x.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %51) #36
  store <8 x float> %hitT.sroa.0.0.lcssa, <8 x float>* %x.i.i, align 16, !tbaa !24
  %arrayidx.i.i = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i, i64 0, i64 %retval.0.i454
  %52 = load float, float* %arrayidx.i.i, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %51) #36
  %div = sdiv i32 %50, 8
  %t250 = getelementptr inbounds %struct.hit_record, %struct.hit_record* %rec, i64 0, i32 3
  store float %52, float* %t250, align 8, !tbaa !59
  %a.i.i.i = getelementptr inbounds %class.ray, %class.ray* %r, i64 0, i32 1, i32 0
  %53 = bitcast float* %a.i.i.i to <2 x float>*
  %54 = load <2 x float>, <2 x float>* %53, align 4, !tbaa !27
  %55 = insertelement <2 x float> poison, float %52, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul fast <2 x float> %54, %56
  %retval.0.i11.i.i = load float, float* %retval.sroa.2.0..sroa_idx3.i387, align 4, !tbaa !27
  %mul4.i.i = fmul fast float %retval.0.i11.i.i, %52
  %58 = bitcast %class.ray* %r to <2 x float>*
  %59 = load <2 x float>, <2 x float>* %58, align 4, !tbaa !27
  %60 = fadd fast <2 x float> %59, %57
  %retval.0.i18.i.i = load float, float* %retval.sroa.2.0..sroa_idx3.i, align 4, !tbaa !27
  %add7.i.i = fadd fast float %retval.0.i18.i.i, %mul4.i.i
  %ref.tmp251.sroa.0.0..sroa_cast = bitcast %struct.hit_record* %rec to <2 x float>*
  store <2 x float> %60, <2 x float>* %ref.tmp251.sroa.0.0..sroa_cast, align 8, !tbaa.struct !31
  %ref.tmp251.sroa.4.0..sroa_idx292 = getelementptr inbounds %struct.hit_record, %struct.hit_record* %rec, i64 0, i32 0, i32 2
  store float %add7.i.i, float* %ref.tmp251.sroa.4.0..sroa_idx292, align 8, !tbaa.struct !32
  %conv260 = sext i32 %div to i64
  %_M_start.i460 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %61 = load %class.Vec8f*, %class.Vec8f** %_M_start.i460, align 8, !tbaa !43
  %62 = bitcast <8 x float>* %x.i.i462 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %62) #36
  %ymm.i.i.i463 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %61, i64 %conv260, i32 0
  %63 = load <8 x float>, <8 x float>* %ymm.i.i.i463, align 32, !tbaa !24
  store <8 x float> %63, <8 x float>* %x.i.i462, align 16, !tbaa !24
  %arrayidx.i.i465 = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i462, i64 0, i64 %retval.0.i454
  %64 = load float, float* %arrayidx.i.i465, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %62) #36
  %_M_start.i466 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %65 = load %class.Vec8f*, %class.Vec8f** %_M_start.i466, align 8, !tbaa !43
  %66 = bitcast <8 x float>* %x.i.i468 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %66) #36
  %ymm.i.i.i469 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %65, i64 %conv260, i32 0
  %67 = load <8 x float>, <8 x float>* %ymm.i.i.i469, align 32, !tbaa !24
  store <8 x float> %67, <8 x float>* %x.i.i468, align 16, !tbaa !24
  %arrayidx.i.i471 = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i468, i64 0, i64 %retval.0.i454
  %68 = load float, float* %arrayidx.i.i471, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %66) #36
  %_M_start.i472 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %69 = load %class.Vec8f*, %class.Vec8f** %_M_start.i472, align 8, !tbaa !43
  %70 = bitcast <8 x float>* %x.i.i474 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %70) #36
  %ymm.i.i.i475 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %69, i64 %conv260, i32 0
  %71 = load <8 x float>, <8 x float>* %ymm.i.i.i475, align 32, !tbaa !24
  store <8 x float> %71, <8 x float>* %x.i.i474, align 16, !tbaa !24
  %arrayidx.i.i477 = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i474, i64 0, i64 %retval.0.i454
  %72 = load float, float* %arrayidx.i.i477, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %70) #36
  %73 = insertelement <2 x float> poison, float %64, i64 0
  %74 = insertelement <2 x float> %73, float %68, i64 1
  %75 = fsub fast <2 x float> %60, %74
  %sub7.i = fsub fast float %add7.i.i, %72
  %76 = load %class.Vec8f*, %class.Vec8f** %_M_start.i, align 8, !tbaa !43
  %77 = bitcast <8 x float>* %x.i.i486 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %77) #36
  %ymm.i.i.i487 = getelementptr inbounds %class.Vec8f, %class.Vec8f* %76, i64 %conv260, i32 0
  %78 = load <8 x float>, <8 x float>* %ymm.i.i.i487, align 32, !tbaa !24
  store <8 x float> %78, <8 x float>* %x.i.i486, align 16, !tbaa !24
  %arrayidx.i.i489 = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i486, i64 0, i64 %retval.0.i454
  %79 = load float, float* %arrayidx.i.i489, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %77) #36
  %div.i = fdiv fast float 1.000000e+00, %79
  %80 = insertelement <2 x float> poison, float %div.i, i64 0
  %81 = shufflevector <2 x float> %80, <2 x float> poison, <2 x i32> zeroinitializer
  %82 = fmul fast <2 x float> %81, %75
  %mul4.i.i492 = fmul fast float %div.i, %sub7.i
  %ref.tmp255.sroa.0.0..sroa_idx = getelementptr inbounds %struct.hit_record, %struct.hit_record* %rec, i64 0, i32 1
  %ref.tmp255.sroa.0.0..sroa_cast = bitcast %class.vec3* %ref.tmp255.sroa.0.0..sroa_idx to <2 x float>*
  store <2 x float> %82, <2 x float>* %ref.tmp255.sroa.0.0..sroa_cast, align 4, !tbaa.struct !31
  %ref.tmp255.sroa.4.0..sroa_idx288 = getelementptr inbounds %struct.hit_record, %struct.hit_record* %rec, i64 0, i32 1, i32 2
  store float %mul4.i.i492, float* %ref.tmp255.sroa.4.0..sroa_idx288, align 4, !tbaa.struct !32
  %conv279 = sext i32 %50 to i64
  %_M_start.i493 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %83 = load %class.material**, %class.material*** %_M_start.i493, align 8, !tbaa !41
  %add.ptr.i494 = getelementptr inbounds %class.material*, %class.material** %83, i64 %conv279
  %84 = load %class.material*, %class.material** %add.ptr.i494, align 8, !tbaa !47
  %mat_ptr281 = getelementptr inbounds %struct.hit_record, %struct.hit_record* %rec, i64 0, i32 2
  store %class.material* %84, %class.material** %mat_ptr281, align 8, !tbaa !61
  br label %if.end282

if.end282:                                        ; preds = %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit, %_Z14horizontal_minI5Vec8fEDaT_.exit
  ret i1 %cmp235
}

; Function Attrs: nofree nosync nounwind readnone
declare i32 @llvm.x86.avx.vtestz.ps.256(<8 x float>, <8 x float>) #23

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #13

; Function Attrs: nofree nosync nounwind readnone
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #23

; Function Attrs: nofree nosync nounwind readnone
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #23

; Function Attrs: nofree nosync nounwind readnone
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #23

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #24

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull i8* @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(i8* noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3$_08__invokeERN9benchmark5StateE"(%"class.benchmark::State"* noundef nonnull align 8 dereferenceable(144) %st) #26 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %x.i.i.i.i.i = alloca <8 x float>, align 16
  %args_tuple.i.i = alloca %"class.std::tuple", align 8
  %d.i.i = alloca %struct.data, align 8
  %scene.i.i = alloca %class.hittable_list, align 8
  %ref.tmp.i = alloca %struct.data, align 8
  %0 = bitcast %struct.data* %ref.tmp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #36
  call void @_Z5setupv(%struct.data* nonnull sret(%struct.data) align 8 %ref.tmp.i)
  %1 = bitcast %"class.std::tuple"* %args_tuple.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %1) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %2 = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !29, !alias.scope !62
  %centreX2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 1
  %_M_start.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast %"class.std::vector.0"* %centreX2.i.i.i.i.i.i.i.i to <2 x %class.Vec8f*>*
  %4 = load <2 x %class.Vec8f*>, <2 x %class.Vec8f*>* %3, align 8, !tbaa !47, !noalias !62
  %_M_end_of_storage4.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %5 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !noalias !62
  %6 = bitcast %"class.std::vector.0"* %centreX2.i.i.i.i.i.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false) #36, !noalias !62
  %centreY3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 2
  %_M_start.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_start2.i.i.i.i13.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %centreY3.i.i.i.i.i.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %class.Vec8f*, %class.Vec8f** %_M_start2.i.i.i.i13.i.i.i.i.i.i.i.i, align 8, !tbaa !43, !noalias !62
  %8 = shufflevector <2 x %class.Vec8f*> %4, <2 x %class.Vec8f*> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %9 = insertelement <4 x %class.Vec8f*> %8, %class.Vec8f* %5, i64 2
  %10 = insertelement <4 x %class.Vec8f*> %9, %class.Vec8f* %7, i64 3
  %11 = bitcast %class.Vec8f** %_M_start.i.i.i.i.i.i.i.i.i.i.i.i to <4 x %class.Vec8f*>*
  store <4 x %class.Vec8f*> %10, <4 x %class.Vec8f*>* %11, align 8, !tbaa !47, !alias.scope !62
  %_M_finish.i.i.i.i14.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %_M_finish3.i.i.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %12 = bitcast %class.Vec8f** %_M_finish3.i.i.i.i15.i.i.i.i.i.i.i.i to <2 x %class.Vec8f*>*
  %13 = load <2 x %class.Vec8f*>, <2 x %class.Vec8f*>* %12, align 8, !tbaa !47, !noalias !62
  %14 = bitcast %"class.std::vector.0"* %centreY3.i.i.i.i.i.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false) #36, !noalias !62
  %centreZ4.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 3
  %_M_start.i.i.i.i18.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %15 = bitcast %"class.std::vector.0"* %centreZ4.i.i.i.i.i.i.i.i to <2 x %class.Vec8f*>*
  %16 = load <2 x %class.Vec8f*>, <2 x %class.Vec8f*>* %15, align 8, !tbaa !47, !noalias !62
  %17 = shufflevector <2 x %class.Vec8f*> %13, <2 x %class.Vec8f*> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %18 = bitcast %class.Vec8f** %_M_finish.i.i.i.i14.i.i.i.i.i.i.i.i to <4 x %class.Vec8f*>*
  store <4 x %class.Vec8f*> %17, <4 x %class.Vec8f*>* %18, align 8, !tbaa !47, !alias.scope !62
  %_M_end_of_storage.i.i.i.i22.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %_M_end_of_storage4.i.i.i.i23.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %19 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage4.i.i.i.i23.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !noalias !62
  %20 = bitcast %"class.std::vector.0"* %centreZ4.i.i.i.i.i.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false) #36, !noalias !62
  %radius5.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 4
  %_M_start.i.i.i.i24.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %21 = bitcast %"class.std::vector.0"* %radius5.i.i.i.i.i.i.i.i to <2 x %class.Vec8f*>*
  %22 = load <2 x %class.Vec8f*>, <2 x %class.Vec8f*>* %21, align 8, !tbaa !47, !noalias !62
  %_M_end_of_storage4.i.i.i.i29.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %23 = load %class.Vec8f*, %class.Vec8f** %_M_end_of_storage4.i.i.i.i29.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !noalias !62
  %24 = insertelement <4 x %class.Vec8f*> poison, %class.Vec8f* %19, i64 0
  %25 = shufflevector <2 x %class.Vec8f*> %22, <2 x %class.Vec8f*> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %26 = shufflevector <4 x %class.Vec8f*> %24, <4 x %class.Vec8f*> %25, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %27 = insertelement <4 x %class.Vec8f*> %26, %class.Vec8f* %23, i64 3
  %28 = bitcast %class.Vec8f** %_M_end_of_storage.i.i.i.i22.i.i.i.i.i.i.i.i to <4 x %class.Vec8f*>*
  store <4 x %class.Vec8f*> %27, <4 x %class.Vec8f*>* %28, align 8, !tbaa !47, !alias.scope !62
  %29 = bitcast %"class.std::vector.0"* %radius5.i.i.i.i.i.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false) #36, !noalias !62
  %mat_ptr6.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 5
  %_M_start.i.i.i.i30.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %30 = bitcast %"class.std::vector.5"* %mat_ptr6.i.i.i.i.i.i.i.i to <2 x %class.material**>*
  %31 = load <2 x %class.material**>, <2 x %class.material**>* %30, align 8, !tbaa !47, !noalias !62
  %32 = bitcast %class.material*** %_M_start.i.i.i.i30.i.i.i.i.i.i.i.i to <2 x %class.material**>*
  store <2 x %class.material**> %31, <2 x %class.material**>* %32, align 8, !tbaa !47, !alias.scope !62
  %_M_end_of_storage.i.i.i.i34.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %_M_end_of_storage4.i.i.i.i35.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %33 = load %class.material**, %class.material*** %_M_end_of_storage4.i.i.i.i35.i.i.i.i.i.i.i.i, align 8, !tbaa !46, !noalias !62
  store %class.material** %33, %class.material*** %_M_end_of_storage.i.i.i.i34.i.i.i.i.i.i.i.i, align 8, !tbaa !46, !alias.scope !62
  %34 = bitcast %"class.std::vector.5"* %mat_ptr6.i.i.i.i.i.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false) #36, !noalias !62
  %rec.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 1
  %rec3.i.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 1
  %35 = bitcast %struct.hit_record* %rec.i.i.i.i.i.i.i to i8*
  %36 = bitcast %struct.hit_record* %rec3.i.i.i.i.i.i.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %35, i8* noundef nonnull align 8 dereferenceable(64) %36, i64 64, i1 false) #36
  %37 = bitcast %struct.data* %d.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %37) #36
  %scene.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0
  %scene2.i.i.i = getelementptr inbounds %"class.std::tuple", %"class.std::tuple"* %args_tuple.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  invoke void @_ZN13hittable_listC2ERKS_(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene.i.i.i, %class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene2.i.i.i)
          to label %invoke.cont.i.i unwind label %lpad.i.i

invoke.cont.i.i:                                  ; preds = %entry
  %rec.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 1
  %38 = bitcast %struct.hit_record* %rec.i.i.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %38, i8* noundef nonnull align 8 dereferenceable(64) %35, i64 64, i1 false)
  %39 = bitcast %class.hittable_list* %scene.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %39) #36
  invoke void @_ZN13hittable_listC2ERKS_(%class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene.i.i, %class.hittable_list* noundef nonnull align 8 dereferenceable(128) %scene.i.i.i)
          to label %invoke.cont8.i.i unwind label %lpad3.i.i

invoke.cont8.i.i:                                 ; preds = %invoke.cont.i.i
  %r.i.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 2
  %r.i.sroa.0.0..sroa_cast.i = bitcast %class.ray* %r.i.sroa.0.0..sroa_idx.i to <2 x float>*
  %r.i.sroa.0.0.copyload.i = load <2 x float>, <2 x float>* %r.i.sroa.0.0..sroa_cast.i, align 8, !tbaa.struct !38
  %r.i.sroa.7.0..sroa_idx31.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 2, i32 0, i32 2
  %40 = bitcast float* %r.i.sroa.7.0..sroa_idx31.i to <4 x float>*
  %41 = load <4 x float>, <4 x float>* %40, align 8
  %r.i.sroa.9.0..sroa_idx34.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 2, i32 1
  %r.i.sroa.9.0..sroa_cast.i = bitcast %class.vec3* %r.i.sroa.9.0..sroa_idx34.i to <2 x float>*
  %r.i.sroa.9.0.copyload.i = load <2 x float>, <2 x float>* %r.i.sroa.9.0..sroa_cast.i, align 4, !tbaa.struct !31
  %r.i.sroa.12.0..sroa_idx38.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 2, i32 1, i32 2
  %r.i.sroa.12.0.copyload.i = load float, float* %r.i.sroa.12.0..sroa_idx38.i, align 4, !tbaa.struct !32
  %error_occurred_.i.i.i.i = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %st, i64 0, i32 5
  %42 = load i8, i8* %error_occurred_.i.i.i.i, align 2, !tbaa !65, !range !72
  %max_iterations.i.i.i.i = getelementptr inbounds %"class.benchmark::State", %"class.benchmark::State"* %st, i64 0, i32 2
  %43 = load i64, i64* %max_iterations.i.i.i.i, align 8
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* noundef nonnull align 8 dereferenceable(144) %st)
          to label %for.cond.preheader.i.i unwind label %lpad10.i.i

for.cond.preheader.i.i:                           ; preds = %invoke.cont8.i.i
  %tobool.not.i.i.i.i = icmp ne i8 %42, 0
  %cmp.not.i6372.i.i = icmp eq i64 %43, 0
  %cmp.not.i63.i.i = select i1 %tobool.not.i.i.i.i, i1 true, i1 %cmp.not.i6372.i.i
  br i1 %cmp.not.i63.i.i, label %if.end.i.i.i, label %for.body.i.preheader.i, !prof !55

for.body.i.preheader.i:                           ; preds = %for.cond.preheader.i.i
  %vecinit7.i.i.i365.i.i = shufflevector <2 x float> %r.i.sroa.0.0.copyload.i, <2 x float> undef, <8 x i32> zeroinitializer
  %vecinit7.i.i.i374.i.i = shufflevector <2 x float> %r.i.sroa.0.0.copyload.i, <2 x float> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %vecinit7.i.i.i383.i.i = shufflevector <4 x float> %41, <4 x float> poison, <8 x i32> zeroinitializer
  %vecinit7.i.i.i393.i.i = shufflevector <2 x float> %r.i.sroa.9.0.copyload.i, <2 x float> undef, <8 x i32> zeroinitializer
  %vecinit7.i.i.i404.i.i = shufflevector <2 x float> %r.i.sroa.9.0.copyload.i, <2 x float> undef, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %vecinit.i.i.i414.i.i = insertelement <8 x float> undef, float %r.i.sroa.12.0.copyload.i, i64 0
  %vecinit7.i.i.i415.i.i = shufflevector <8 x float> %vecinit.i.i.i414.i.i, <8 x float> poison, <8 x i32> zeroinitializer
  %_M_finish.i.i20.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i21.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %_M_start.i420.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %_M_start.i421.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_start.i424.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %44 = bitcast <8 x float>* %x.i.i.i.i.i to i8*
  br label %for.body.i.i

if.end.i.i.i:                                     ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.i.i, %for.cond.preheader.i.i
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* noundef nonnull align 8 dereferenceable(144) %st)
          to label %for.cond23.preheader.i.i unwind label %lpad10.i.i

for.cond23.preheader.i.i:                         ; preds = %if.end.i.i.i
  %_M_finish.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %45 = load %class.material**, %class.material*** %_M_finish.i.i.i, align 8, !tbaa !45
  %46 = load %class.material**, %class.material*** %_M_start.i.i.i, align 8, !tbaa !41
  %cmp69.not.i.i = icmp eq %class.material** %45, %46
  br i1 %cmp69.not.i.i, label %for.cond.cleanup25.i.i, label %for.body26.i.i

lpad.i.i:                                         ; preds = %entry
  %47 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup36.i.i

lpad3.i.i:                                        ; preds = %invoke.cont.i.i
  %48 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup34.i.i

lpad10.i.i:                                       ; preds = %if.end.i.i.i, %invoke.cont8.i.i
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %50, align 8, !tbaa !29
  %_M_start.i.i.i40 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %51 = load %class.material**, %class.material*** %_M_start.i.i.i40, align 8, !tbaa !41
  %tobool.not.i.i.i.i41 = icmp eq %class.material** %51, null
  br i1 %tobool.not.i.i.i.i41, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad10.i.i
  %52 = bitcast %class.material** %51 to i8*
  call void @_ZdlPv(i8* noundef %52) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i:       ; preds = %if.then.i.i.i.i, %lpad10.i.i
  %_M_start.i.i2.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %53 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i = icmp eq %class.Vec8f* %53, null
  br i1 %tobool.not.i.i.i3.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i, label %if.then.i.i.i4.i

if.then.i.i.i4.i:                                 ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i
  %54 = bitcast %class.Vec8f* %53 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %54, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i:           ; preds = %if.then.i.i.i4.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i
  %_M_start.i.i5.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %55 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i = icmp eq %class.Vec8f* %55, null
  br i1 %tobool.not.i.i.i6.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i, label %if.then.i.i.i7.i

if.then.i.i.i7.i:                                 ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i
  %56 = bitcast %class.Vec8f* %55 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %56, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i:          ; preds = %if.then.i.i.i7.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i
  %_M_start.i.i9.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %57 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i = icmp eq %class.Vec8f* %57, null
  br i1 %tobool.not.i.i.i10.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i, label %if.then.i.i.i11.i

if.then.i.i.i11.i:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i
  %58 = bitcast %class.Vec8f* %57 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %58, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i:         ; preds = %if.then.i.i.i11.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i
  %_M_start.i.i13.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %59 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i = icmp eq %class.Vec8f* %59, null
  br i1 %tobool.not.i.i.i14.i, label %ehcleanup34.i.i, label %if.then.i.i.i15.i

if.then.i.i.i15.i:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i
  %60 = bitcast %class.Vec8f* %59 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %60, i64 noundef 32) #39
  br label %ehcleanup34.i.i

for.body.i.i:                                     ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit.i.i, %for.body.i.preheader.i
  %__begin1.sroa.0.064.i.i = phi i64 [ %dec.i.i.i, %_ZN9benchmark5State13StateIteratorppEv.exit.i.i ], [ %43, %for.body.i.preheader.i ]
  %61 = load %class.Vec8f*, %class.Vec8f** %_M_finish.i.i20.i, align 8, !tbaa !49
  %62 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i21.i, align 8, !tbaa !43
  %sub.ptr.lhs.cast.i.i22.i = ptrtoint %class.Vec8f* %61 to i64
  %sub.ptr.rhs.cast.i.i23.i = ptrtoint %class.Vec8f* %62 to i64
  %sub.ptr.sub.i.i24.i = sub i64 %sub.ptr.lhs.cast.i.i22.i, %sub.ptr.rhs.cast.i.i23.i
  %63 = lshr exact i64 %sub.ptr.sub.i.i24.i, 5
  %conv.i.i = trunc i64 %63 to i32
  %cmp536.i.i = icmp sgt i32 %conv.i.i, 0
  br i1 %cmp536.i.i, label %for.body.lr.ph.i.i, label %for.cond.cleanup.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i.i
  %64 = load %class.Vec8f*, %class.Vec8f** %_M_start.i420.i.i, align 8, !tbaa !43
  %65 = load %class.Vec8f*, %class.Vec8f** %_M_start.i421.i.i, align 8, !tbaa !43
  %66 = load %class.Vec8f*, %class.Vec8f** %_M_start.i424.i.i, align 8, !tbaa !43
  %wide.trip.count.i.i = and i64 %63, 4294967295
  br label %for.body.i27.i

for.cond.cleanup.i.i:                             ; preds = %if.end.i.i, %for.body.i.i
  %hitT.sroa.0.0.lcssa.i.i = phi <8 x float> [ <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, %for.body.i.i ], [ %hitT.sroa.0.1.i.i, %if.end.i.i ]
  %67 = call fast <8 x float> asm sideeffect "vcmpps $$3, $1, $1, $0", "=v,v,~{dirflag},~{fpsr},~{flags}"(<8 x float> %hitT.sroa.0.0.lcssa.i.i) #36, !srcloc !57
  %68 = call i32 @llvm.x86.avx.vtestz.ps.256(<8 x float> %67, <8 x float> %67) #36
  %tobool.not.i.i.i25.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i.i25.i, label %if.then.i.i.i, label %if.end.i.i26.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup.i.i
  %69 = call fast <8 x float> asm sideeffect "vcmpps $$3, $1, $1, $0", "=v,v,~{dirflag},~{fpsr},~{flags}"(<8 x float> %hitT.sroa.0.0.lcssa.i.i) #36, !srcloc !57
  %70 = bitcast <8 x float> %69 to <4 x i64>
  %shuffle.i.i.i.i.i.i.i.i.i = shufflevector <4 x i64> %70, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %71 = bitcast <8 x float> %69 to <8 x i32>
  %extract.i.i.i.i.i.i.i.i = shufflevector <8 x i32> %71, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %72 = bitcast <2 x i64> %shuffle.i.i.i.i.i.i.i.i.i to <4 x i32>
  %73 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %72, <4 x i32> %extract.i.i.i.i.i.i.i.i) #36
  %74 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %73, <8 x i16> %73) #36
  %75 = icmp slt <16 x i8> %74, zeroinitializer
  %bc.i.i.i.i.i.i = bitcast <16 x i1> %75 to <2 x i8>
  %conv.i.i.i.i.i.i = extractelement <2 x i8> %bc.i.i.i.i.i.i, i64 0
  %cmp.i.i.i.i = icmp eq i8 %conv.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  %conv.i.i.i.i = zext i8 %conv.i.i.i.i.i.i to i32
  %76 = call i32 asm "bsfl $1, $0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %conv.i.i.i.i) #41, !srcloc !54
  %phi.bo.i.i.i = and i32 %76, 7
  %phi.cast.i.i.i = zext i32 %phi.bo.i.i.i to i64
  br label %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i.i.i

_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i.i.i: ; preds = %if.end.i.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i.i = phi i64 [ %phi.cast.i.i.i, %if.end.i.i.i.i ], [ 7, %if.then.i.i.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %44) #36
  store <8 x float> %hitT.sroa.0.0.lcssa.i.i, <8 x float>* %x.i.i.i.i.i, align 16, !tbaa !24
  %arrayidx.i.i.i.i.i = getelementptr inbounds <8 x float>, <8 x float>* %x.i.i.i.i.i, i64 0, i64 %retval.0.i.i.i.i
  %77 = load float, float* %arrayidx.i.i.i.i.i, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #36
  br label %_Z14horizontal_minI5Vec8fEDaT_.exit.i.i

if.end.i.i26.i:                                   ; preds = %for.cond.cleanup.i.i
  %shuffle.i.i.i.i.i.i = shufflevector <8 x float> %hitT.sroa.0.0.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %extract.i.i.i.i.i = shufflevector <8 x float> %hitT.sroa.0.0.lcssa.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %78 = call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %shuffle.i.i.i.i.i.i, <4 x float> %extract.i.i.i.i.i) #36
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %80 = call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %79, <4 x float> %78) #36
  %cast.i.i.i.i.i.i = bitcast <4 x float> %80 to <16 x i8>
  %psrldq.i.i.i.i.i.i = shufflevector <16 x i8> %cast.i.i.i.i.i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %81 = bitcast <16 x i8> %psrldq.i.i.i.i.i.i to <4 x float>
  %82 = call fast <4 x float> @llvm.x86.sse.min.ps(<4 x float> %81, <4 x float> %80) #36
  %x.i.i.0.vec.extract.i.i.i.i.i = extractelement <4 x float> %82, i64 0
  br label %_Z14horizontal_minI5Vec8fEDaT_.exit.i.i

_Z14horizontal_minI5Vec8fEDaT_.exit.i.i:          ; preds = %if.end.i.i26.i, %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i.i.i
  %retval.0.i.i.i = phi float [ %77, %_ZL21horizontal_find_firstI6Vec8fbEiT_.exit.i.i.i ], [ %x.i.i.0.vec.extract.i.i.i.i.i, %if.end.i.i26.i ]
  %cmp235.i.i = fcmp fast olt float %retval.0.i.i.i, 0x47EFFFFFE0000000
  br i1 %cmp235.i.i, label %if.then236.i.i, label %_ZN9benchmark5State13StateIteratorppEv.exit.i.i

for.body.i27.i:                                   ; preds = %if.end.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end.i.i ]
  %hitT.sroa.0.0537.i.i = phi <8 x float> [ <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, %for.body.lr.ph.i.i ], [ %hitT.sroa.0.1.i.i, %if.end.i.i ]
  %agg.tmp.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %64, i64 %indvars.iv.i.i, i32 0
  %agg.tmp.sroa.0.0.copyload.i.i = load <8 x float>, <8 x float>* %agg.tmp.sroa.0.0..sroa_idx.i.i, align 32, !tbaa.struct !51
  %sub.i.i.i.i = fsub fast <8 x float> %agg.tmp.sroa.0.0.copyload.i.i, %vecinit7.i.i.i365.i.i
  %agg.tmp30.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %65, i64 %indvars.iv.i.i, i32 0
  %agg.tmp30.sroa.0.0.copyload.i.i = load <8 x float>, <8 x float>* %agg.tmp30.sroa.0.0..sroa_idx.i.i, align 32, !tbaa.struct !51
  %sub.i.i423.i.i = fsub fast <8 x float> %agg.tmp30.sroa.0.0.copyload.i.i, %vecinit7.i.i.i374.i.i
  %agg.tmp38.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %66, i64 %indvars.iv.i.i, i32 0
  %agg.tmp38.sroa.0.0.copyload.i.i = load <8 x float>, <8 x float>* %agg.tmp38.sroa.0.0..sroa_idx.i.i, align 32, !tbaa.struct !51
  %sub.i.i426.i.i = fsub fast <8 x float> %agg.tmp38.sroa.0.0.copyload.i.i, %vecinit7.i.i.i383.i.i
  %mul.i.i.i.i = fmul fast <8 x float> %sub.i.i.i.i, %vecinit7.i.i.i393.i.i
  %mul.i.i427.i.i = fmul fast <8 x float> %sub.i.i423.i.i, %vecinit7.i.i.i404.i.i
  %add.i.i.i.i = fadd fast <8 x float> %mul.i.i427.i.i, %mul.i.i.i.i
  %mul.i.i428.i.i = fmul fast <8 x float> %sub.i.i426.i.i, %vecinit7.i.i.i415.i.i
  %add.i.i429.i.i = fadd fast <8 x float> %add.i.i.i.i, %mul.i.i428.i.i
  %agg.tmp108.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %class.Vec8f, %class.Vec8f* %62, i64 %indvars.iv.i.i, i32 0
  %agg.tmp108.sroa.0.0.copyload.i.i = load <8 x float>, <8 x float>* %agg.tmp108.sroa.0.0..sroa_idx.i.i, align 32, !tbaa.struct !51
  %mul.i.i439.i.i = fmul fast <8 x float> %agg.tmp108.sroa.0.0.copyload.i.i, %agg.tmp108.sroa.0.0.copyload.i.i
  %mul.i.i441.i.i = fmul fast <8 x float> %add.i.i429.i.i, %add.i.i429.i.i
  %mul.i.i430.neg.i.neg.i.neg = fmul fast <8 x float> %sub.i.i.i.i, %sub.i.i.i.i
  %mul.i.i431.neg.i.neg.i.neg = fmul fast <8 x float> %sub.i.i423.i.i, %sub.i.i423.i.i
  %mul.i.i433.neg.i.neg.i.neg = fmul fast <8 x float> %sub.i.i426.i.i, %sub.i.i426.i.i
  %reass.add = fadd fast <8 x float> %mul.i.i431.neg.i.neg.i.neg, %mul.i.i430.neg.i.neg.i.neg
  %reass.add42 = fadd fast <8 x float> %reass.add, %mul.i.i433.neg.i.neg.i.neg
  %83 = fadd fast <8 x float> %mul.i.i441.i.i, %mul.i.i439.i.i
  %sub.i.i442.i.i = fsub fast <8 x float> %83, %reass.add42
  %84 = fcmp fast ogt <8 x float> %sub.i.i442.i.i, zeroinitializer
  %85 = sext <8 x i1> %84 to <8 x i32>
  %86 = bitcast <8 x i32> %85 to <8 x float>
  %87 = call i32 @llvm.x86.avx.vtestz.ps.256(<8 x float> %86, <8 x float> %86) #36
  %tobool.not.i.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i27.i
  %88 = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %sub.i.i442.i.i) #36
  %sub.i.i444.i.i = fsub fast <8 x float> %add.i.i429.i.i, %88
  %add.i.i445.i.i = fadd fast <8 x float> %88, %add.i.i429.i.i
  %89 = fcmp fast ogt <8 x float> %sub.i.i444.i.i, <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>
  %90 = select <8 x i1> %89, <8 x float> %sub.i.i444.i.i, <8 x float> %add.i.i445.i.i
  %91 = fcmp fast ogt <8 x float> %90, <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>
  %and.i.i533.i.i = and <8 x i1> %91, %84
  %92 = fcmp fast olt <8 x float> %90, %hitT.sroa.0.0537.i.i
  %and.i.i446534.i.i = and <8 x i1> %and.i.i533.i.i, %92
  %93 = select <8 x i1> %and.i.i446534.i.i, <8 x float> %90, <8 x float> %hitT.sroa.0.0537.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i27.i
  %hitT.sroa.0.1.i.i = phi <8 x float> [ %93, %if.then.i.i ], [ %hitT.sroa.0.0537.i.i, %for.body.i27.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.cleanup.i.i, label %for.body.i27.i, !llvm.loop !58

if.then236.i.i:                                   ; preds = %_Z14horizontal_minI5Vec8fEDaT_.exit.i.i
  %vecinit.i.i.i449.i.i = insertelement <8 x float> undef, float %retval.0.i.i.i, i64 0
  %vecinit7.i.i.i450.i.i = shufflevector <8 x float> %vecinit.i.i.i449.i.i, <8 x float> poison, <8 x i32> zeroinitializer
  %94 = fcmp fast oeq <8 x float> %hitT.sroa.0.0.lcssa.i.i, %vecinit7.i.i.i450.i.i
  %95 = sext <8 x i1> %94 to <8 x i32>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %shuffle.i.i.i.i.i.i452.i.i = shufflevector <4 x i64> %96, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %extract.i.i.i.i.i.i.i = shufflevector <8 x i32> %95, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %97 = bitcast <2 x i64> %shuffle.i.i.i.i.i.i452.i.i to <4 x i32>
  %98 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %97, <4 x i32> %extract.i.i.i.i.i.i.i) #36
  %99 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %98, <8 x i16> %98) #36
  %100 = icmp slt <16 x i8> %99, zeroinitializer
  %bc.i.i.i.i.i = bitcast <16 x i1> %100 to <2 x i8>
  %conv.i.i.i.i.i = extractelement <2 x i8> %bc.i.i.i.i.i, i64 0
  %cmp.i.i.i = icmp eq i8 %conv.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %_ZN9benchmark5State13StateIteratorppEv.exit.i.i, label %if.end.i453.i.i

if.end.i453.i.i:                                  ; preds = %if.then236.i.i
  %conv.i.i.i = zext i8 %conv.i.i.i.i.i to i32
  %101 = call i32 asm "bsfl $1, $0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %conv.i.i.i) #41, !srcloc !54
  br label %_ZN9benchmark5State13StateIteratorppEv.exit.i.i

_ZN9benchmark5State13StateIteratorppEv.exit.i.i:  ; preds = %if.end.i453.i.i, %if.then236.i.i, %_Z14horizontal_minI5Vec8fEDaT_.exit.i.i
  %dec.i.i.i = add i64 %__begin1.sroa.0.064.i.i, -1
  %cmp.not.i.i.i = icmp eq i64 %dec.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i, !prof !55

for.cond.cleanup25.i.i:                           ; preds = %for.inc29.i.i, %for.cond23.preheader.i.i
  %102 = phi %class.material** [ %45, %for.cond23.preheader.i.i ], [ %139, %for.inc29.i.i ]
  %103 = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %103, align 8, !tbaa !29
  %tobool.not.i.i.i.i.i.i = icmp eq %class.material** %102, null
  br i1 %tobool.not.i.i.i.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %for.cond.cleanup25.i.i
  %104 = bitcast %class.material** %102 to i8*
  call void @_ZdlPv(i8* noundef %104) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i:   ; preds = %if.then.i.i.i.i.i.i, %for.cond.cleanup25.i.i
  %_M_start.i.i2.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %105 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i.i = icmp eq %class.Vec8f* %105, null
  br i1 %tobool.not.i.i.i3.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i, label %if.then.i.i.i4.i.i.i

if.then.i.i.i4.i.i.i:                             ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i
  %106 = bitcast %class.Vec8f* %105 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %106, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i:       ; preds = %if.then.i.i.i4.i.i.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i
  %_M_start.i.i5.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %107 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i.i = icmp eq %class.Vec8f* %107, null
  br i1 %tobool.not.i.i.i6.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i, label %if.then.i.i.i7.i.i.i

if.then.i.i.i7.i.i.i:                             ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i
  %108 = bitcast %class.Vec8f* %107 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %108, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i:      ; preds = %if.then.i.i.i7.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i
  %_M_start.i.i9.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %109 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i.i = icmp eq %class.Vec8f* %109, null
  br i1 %tobool.not.i.i.i10.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i, label %if.then.i.i.i11.i.i.i

if.then.i.i.i11.i.i.i:                            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i
  %110 = bitcast %class.Vec8f* %109 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %110, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i:     ; preds = %if.then.i.i.i11.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i
  %_M_start.i.i13.i.i.i = getelementptr inbounds %class.hittable_list, %class.hittable_list* %scene.i.i, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %111 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i.i = icmp eq %class.Vec8f* %111, null
  br i1 %tobool.not.i.i.i14.i.i.i, label %_ZN13hittable_listD2Ev.exit.i.i, label %if.then.i.i.i15.i.i.i

if.then.i.i.i15.i.i.i:                            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i
  %112 = bitcast %class.Vec8f* %111 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %112, i64 noundef 32) #39
  br label %_ZN13hittable_listD2Ev.exit.i.i

_ZN13hittable_listD2Ev.exit.i.i:                  ; preds = %if.then.i.i.i15.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %39) #36
  %113 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %113, align 8, !tbaa !29
  %_M_start.i.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %114 = load %class.material**, %class.material*** %_M_start.i.i.i.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i.i.i = icmp eq %class.material** %114, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %_ZN13hittable_listD2Ev.exit.i.i
  %115 = bitcast %class.material** %114 to i8*
  call void @_ZdlPv(i8* noundef %115) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i: ; preds = %if.then.i.i.i.i.i.i.i, %_ZN13hittable_listD2Ev.exit.i.i
  %_M_start.i.i2.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %116 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i.i.i = icmp eq %class.Vec8f* %116, null
  br i1 %tobool.not.i.i.i3.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i, label %if.then.i.i.i4.i.i.i.i

if.then.i.i.i4.i.i.i.i:                           ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i
  %117 = bitcast %class.Vec8f* %116 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %117, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i:     ; preds = %if.then.i.i.i4.i.i.i.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i
  %_M_start.i.i5.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %118 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i.i.i = icmp eq %class.Vec8f* %118, null
  br i1 %tobool.not.i.i.i6.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i, label %if.then.i.i.i7.i.i.i.i

if.then.i.i.i7.i.i.i.i:                           ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i
  %119 = bitcast %class.Vec8f* %118 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %119, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i:    ; preds = %if.then.i.i.i7.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i
  %_M_start.i.i9.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %120 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i.i.i = icmp eq %class.Vec8f* %120, null
  br i1 %tobool.not.i.i.i10.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i, label %if.then.i.i.i11.i.i.i.i

if.then.i.i.i11.i.i.i.i:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i
  %121 = bitcast %class.Vec8f* %120 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %121, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i:   ; preds = %if.then.i.i.i11.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i
  %_M_start.i.i13.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %122 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i.i.i = icmp eq %class.Vec8f* %122, null
  br i1 %tobool.not.i.i.i14.i.i.i.i, label %_ZN4dataD2Ev.exit.i.i, label %if.then.i.i.i15.i.i.i.i

if.then.i.i.i15.i.i.i.i:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i
  %123 = bitcast %class.Vec8f* %122 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %123, i64 noundef 32) #39
  br label %_ZN4dataD2Ev.exit.i.i

_ZN4dataD2Ev.exit.i.i:                            ; preds = %if.then.i.i.i15.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %37) #36
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !29
  %124 = load %class.material**, %class.material*** %_M_start.i.i.i.i30.i.i.i.i.i.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq %class.material** %124, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4dataD2Ev.exit.i.i
  %125 = bitcast %class.material** %124 to i8*
  call void @_ZdlPv(i8* noundef %125) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %if.then.i.i.i.i.i.i.i.i, %_ZN4dataD2Ev.exit.i.i
  %126 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i24.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i.i.i.i = icmp eq %class.Vec8f* %126, null
  br i1 %tobool.not.i.i.i3.i.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i.i, label %if.then.i.i.i4.i.i.i.i.i

if.then.i.i.i4.i.i.i.i.i:                         ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i.i
  %127 = bitcast %class.Vec8f* %126 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %127, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i.i:   ; preds = %if.then.i.i.i4.i.i.i.i.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i.i.i
  %128 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i18.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i.i.i.i = icmp eq %class.Vec8f* %128, null
  br i1 %tobool.not.i.i.i6.i.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i.i, label %if.then.i.i.i7.i.i.i.i.i

if.then.i.i.i7.i.i.i.i.i:                         ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i.i
  %129 = bitcast %class.Vec8f* %128 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %129, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i.i:  ; preds = %if.then.i.i.i7.i.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i.i.i
  %130 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i.i.i.i = icmp eq %class.Vec8f* %130, null
  br i1 %tobool.not.i.i.i10.i.i.i.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i.i, label %if.then.i.i.i11.i.i.i.i.i

if.then.i.i.i11.i.i.i.i.i:                        ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i.i
  %131 = bitcast %class.Vec8f* %130 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %131, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i.i: ; preds = %if.then.i.i.i11.i.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i.i.i
  %132 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i.i.i.i = icmp eq %class.Vec8f* %132, null
  br i1 %tobool.not.i.i.i14.i.i.i.i.i, label %invoke.cont.i, label %if.then.i.i.i15.i.i.i.i.i

if.then.i.i.i15.i.i.i.i.i:                        ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i.i
  %133 = bitcast %class.Vec8f* %132 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %133, i64 noundef 32) #39
  br label %invoke.cont.i

for.body26.i.i:                                   ; preds = %for.cond23.preheader.i.i, %for.inc29.i.i
  %134 = phi %class.material** [ %139, %for.inc29.i.i ], [ %46, %for.cond23.preheader.i.i ]
  %135 = phi %class.material** [ %140, %for.inc29.i.i ], [ %45, %for.cond23.preheader.i.i ]
  %i.070.i.i = phi i64 [ %inc.i.i, %for.inc29.i.i ], [ 0, %for.cond23.preheader.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %class.material*, %class.material** %134, i64 %i.070.i.i
  %136 = load %class.material*, %class.material** %add.ptr.i.i.i, align 8, !tbaa !47
  %isnull.i.i = icmp eq %class.material* %136, null
  br i1 %isnull.i.i, label %for.inc29.i.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %for.body26.i.i
  %137 = bitcast %class.material* %136 to void (%class.material*)***
  %vtable.i.i = load void (%class.material*)**, void (%class.material*)*** %137, align 8, !tbaa !29
  %vfn.i.i = getelementptr inbounds void (%class.material*)*, void (%class.material*)** %vtable.i.i, i64 2
  %138 = load void (%class.material*)*, void (%class.material*)** %vfn.i.i, align 8
  call void %138(%class.material* noundef nonnull align 8 dereferenceable(8) %136) #36
  %.pre.i.i = load %class.material**, %class.material*** %_M_finish.i.i.i, align 8, !tbaa !45
  %.pre71.i.i = load %class.material**, %class.material*** %_M_start.i.i.i, align 8, !tbaa !41
  br label %for.inc29.i.i

for.inc29.i.i:                                    ; preds = %delete.notnull.i.i, %for.body26.i.i
  %139 = phi %class.material** [ %134, %for.body26.i.i ], [ %.pre71.i.i, %delete.notnull.i.i ]
  %140 = phi %class.material** [ %135, %for.body26.i.i ], [ %.pre.i.i, %delete.notnull.i.i ]
  %inc.i.i = add nuw i64 %i.070.i.i, 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint %class.material** %140 to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint %class.material** %139 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 3
  %cmp.i.i = icmp ult i64 %inc.i.i, %sub.ptr.div.i.i.i
  br i1 %cmp.i.i, label %for.body26.i.i, label %for.cond.cleanup25.i.i, !llvm.loop !73

ehcleanup34.i.i:                                  ; preds = %if.then.i.i.i15.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i, %lpad3.i.i
  %.pn.pn.pn.i.i = phi { i8*, i32 } [ %48, %lpad3.i.i ], [ %49, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i ], [ %49, %if.then.i.i.i15.i ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %39) #36
  %141 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %141, align 8, !tbaa !29
  %_M_start.i.i.i.i20 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %142 = load %class.material**, %class.material*** %_M_start.i.i.i.i20, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i21 = icmp eq %class.material** %142, null
  br i1 %tobool.not.i.i.i.i.i21, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i25, label %if.then.i.i.i.i.i22

if.then.i.i.i.i.i22:                              ; preds = %ehcleanup34.i.i
  %143 = bitcast %class.material** %142 to i8*
  call void @_ZdlPv(i8* noundef %143) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i25

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i25:   ; preds = %if.then.i.i.i.i.i22, %ehcleanup34.i.i
  %_M_start.i.i2.i.i23 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %144 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i.i23, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i24 = icmp eq %class.Vec8f* %144, null
  br i1 %tobool.not.i.i.i3.i.i24, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i29, label %if.then.i.i.i4.i.i26

if.then.i.i.i4.i.i26:                             ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i25
  %145 = bitcast %class.Vec8f* %144 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %145, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i29

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i29:       ; preds = %if.then.i.i.i4.i.i26, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i25
  %_M_start.i.i5.i.i27 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %146 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i.i27, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i28 = icmp eq %class.Vec8f* %146, null
  br i1 %tobool.not.i.i.i6.i.i28, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i33, label %if.then.i.i.i7.i.i30

if.then.i.i.i7.i.i30:                             ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i29
  %147 = bitcast %class.Vec8f* %146 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %147, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i33

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i33:      ; preds = %if.then.i.i.i7.i.i30, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i29
  %_M_start.i.i9.i.i31 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %148 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i.i31, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i32 = icmp eq %class.Vec8f* %148, null
  br i1 %tobool.not.i.i.i10.i.i32, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37, label %if.then.i.i.i11.i.i34

if.then.i.i.i11.i.i34:                            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i33
  %149 = bitcast %class.Vec8f* %148 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %149, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37:     ; preds = %if.then.i.i.i11.i.i34, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i33
  %_M_start.i.i13.i.i35 = getelementptr inbounds %struct.data, %struct.data* %d.i.i, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %150 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i.i35, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i36 = icmp eq %class.Vec8f* %150, null
  br i1 %tobool.not.i.i.i14.i.i36, label %ehcleanup36.i.i, label %if.then.i.i.i15.i.i38

if.then.i.i.i15.i.i38:                            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37
  %151 = bitcast %class.Vec8f* %150 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %151, i64 noundef 32) #39
  br label %ehcleanup36.i.i

ehcleanup36.i.i:                                  ; preds = %if.then.i.i.i15.i.i38, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37, %lpad.i.i
  %.pn.pn.pn.pn.i.i = phi { i8*, i32 } [ %47, %lpad.i.i ], [ %.pn.pn.pn.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i37 ], [ %.pn.pn.pn.i.i, %if.then.i.i.i15.i.i38 ]
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %37) #36
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !29
  %152 = load %class.material**, %class.material*** %_M_start.i.i.i.i30.i.i.i.i.i.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i.i2 = icmp eq %class.material** %152, null
  br i1 %tobool.not.i.i.i.i.i.i2, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i6, label %if.then.i.i.i.i.i.i3

if.then.i.i.i.i.i.i3:                             ; preds = %ehcleanup36.i.i
  %153 = bitcast %class.material** %152 to i8*
  call void @_ZdlPv(i8* noundef %153) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i6

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i6:  ; preds = %if.then.i.i.i.i.i.i3, %ehcleanup36.i.i
  %154 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i24.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i.i5 = icmp eq %class.Vec8f* %154, null
  br i1 %tobool.not.i.i.i3.i.i.i5, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i10, label %if.then.i.i.i4.i.i.i7

if.then.i.i.i4.i.i.i7:                            ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i6
  %155 = bitcast %class.Vec8f* %154 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %155, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i10

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i10:     ; preds = %if.then.i.i.i4.i.i.i7, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i.i6
  %156 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i18.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i.i9 = icmp eq %class.Vec8f* %156, null
  br i1 %tobool.not.i.i.i6.i.i.i9, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i14, label %if.then.i.i.i7.i.i.i11

if.then.i.i.i7.i.i.i11:                           ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i10
  %157 = bitcast %class.Vec8f* %156 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %157, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i14

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i14:    ; preds = %if.then.i.i.i7.i.i.i11, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i.i10
  %158 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i.i13 = icmp eq %class.Vec8f* %158, null
  br i1 %tobool.not.i.i.i10.i.i.i13, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i18, label %if.then.i.i.i11.i.i.i15

if.then.i.i.i11.i.i.i15:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i14
  %159 = bitcast %class.Vec8f* %158 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %159, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i18

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i18:   ; preds = %if.then.i.i.i11.i.i.i15, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i.i14
  %160 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i.i17 = icmp eq %class.Vec8f* %160, null
  br i1 %tobool.not.i.i.i14.i.i.i17, label %_ZNSt10_Head_baseILm0E4dataLb0EED2Ev.exit, label %if.then.i.i.i15.i.i.i19

if.then.i.i.i15.i.i.i19:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i18
  %161 = bitcast %class.Vec8f* %160 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %161, i64 noundef 32) #39
  br label %_ZNSt10_Head_baseILm0E4dataLb0EED2Ev.exit

_ZNSt10_Head_baseILm0E4dataLb0EED2Ev.exit:        ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i18, %if.then.i.i.i15.i.i.i19
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #36
  %162 = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %162, align 8, !tbaa !29
  %_M_start.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %163 = load %class.material**, %class.material*** %_M_start.i.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i = icmp eq %class.material** %163, null
  br i1 %tobool.not.i.i.i.i.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt10_Head_baseILm0E4dataLb0EED2Ev.exit
  %164 = bitcast %class.material** %163 to i8*
  call void @_ZdlPv(i8* noundef %164) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i:     ; preds = %if.then.i.i.i.i.i, %_ZNSt10_Head_baseILm0E4dataLb0EED2Ev.exit
  %_M_start.i.i2.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %165 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i = icmp eq %class.Vec8f* %165, null
  br i1 %tobool.not.i.i.i3.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i, label %if.then.i.i.i4.i.i

if.then.i.i.i4.i.i:                               ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i
  %166 = bitcast %class.Vec8f* %165 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %166, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i:         ; preds = %if.then.i.i.i4.i.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i
  %_M_start.i.i5.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %167 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i = icmp eq %class.Vec8f* %167, null
  br i1 %tobool.not.i.i.i6.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i, label %if.then.i.i.i7.i.i

if.then.i.i.i7.i.i:                               ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i
  %168 = bitcast %class.Vec8f* %167 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %168, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i:        ; preds = %if.then.i.i.i7.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i
  %_M_start.i.i9.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %169 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i = icmp eq %class.Vec8f* %169, null
  br i1 %tobool.not.i.i.i10.i.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i, label %if.then.i.i.i11.i.i

if.then.i.i.i11.i.i:                              ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i
  %170 = bitcast %class.Vec8f* %169 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %170, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i:       ; preds = %if.then.i.i.i11.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i
  %_M_start.i.i13.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %171 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i = icmp eq %class.Vec8f* %171, null
  br i1 %tobool.not.i.i.i14.i.i, label %_ZN4dataD2Ev.exit, label %if.then.i.i.i15.i.i

if.then.i.i.i15.i.i:                              ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i
  %172 = bitcast %class.Vec8f* %171 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %172, i64 noundef 32) #39
  br label %_ZN4dataD2Ev.exit

_ZN4dataD2Ev.exit:                                ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i, %if.then.i.i.i15.i.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #36
  resume { i8*, i32 } %.pn.pn.pn.pn.i.i

invoke.cont.i:                                    ; preds = %if.then.i.i.i15.i.i.i.i.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %1) #36
  %173 = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13hittable_list, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %173, align 8, !tbaa !29
  %_M_start.i.i.i.i.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0
  %174 = load %class.material**, %class.material*** %_M_start.i.i.i.i.i, align 8, !tbaa !41
  %tobool.not.i.i.i.i.i1.i = icmp eq %class.material** %174, null
  br i1 %tobool.not.i.i.i.i.i1.i, label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i5.i, label %if.then.i.i.i.i.i2.i

if.then.i.i.i.i.i2.i:                             ; preds = %invoke.cont.i
  %175 = bitcast %class.material** %174 to i8*
  call void @_ZdlPv(i8* noundef %175) #39
  br label %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i5.i

_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i5.i:  ; preds = %if.then.i.i.i.i.i2.i, %invoke.cont.i
  %_M_start.i.i2.i.i3.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0
  %176 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i2.i.i3.i, align 8, !tbaa !43
  %tobool.not.i.i.i3.i.i4.i = icmp eq %class.Vec8f* %176, null
  br i1 %tobool.not.i.i.i3.i.i4.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i9.i, label %if.then.i.i.i4.i.i6.i

if.then.i.i.i4.i.i6.i:                            ; preds = %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i5.i
  %177 = bitcast %class.Vec8f* %176 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %177, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i9.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i9.i:      ; preds = %if.then.i.i.i4.i.i6.i, %_ZNSt6vectorIP8materialSaIS1_EED2Ev.exit.i.i5.i
  %_M_start.i.i5.i.i7.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %178 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i5.i.i7.i, align 8, !tbaa !43
  %tobool.not.i.i.i6.i.i8.i = icmp eq %class.Vec8f* %178, null
  br i1 %tobool.not.i.i.i6.i.i8.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i13.i, label %if.then.i.i.i7.i.i10.i

if.then.i.i.i7.i.i10.i:                           ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i9.i
  %179 = bitcast %class.Vec8f* %178 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %179, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i13.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i13.i:    ; preds = %if.then.i.i.i7.i.i10.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit.i.i9.i
  %_M_start.i.i9.i.i11.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %180 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i9.i.i11.i, align 8, !tbaa !43
  %tobool.not.i.i.i10.i.i12.i = icmp eq %class.Vec8f* %180, null
  br i1 %tobool.not.i.i.i10.i.i12.i, label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i17.i, label %if.then.i.i.i11.i.i14.i

if.then.i.i.i11.i.i14.i:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i13.i
  %181 = bitcast %class.Vec8f* %180 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %181, i64 noundef 32) #39
  br label %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i17.i

_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i17.i:   ; preds = %if.then.i.i.i11.i.i14.i, %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit8.i.i13.i
  %_M_start.i.i13.i.i15.i = getelementptr inbounds %struct.data, %struct.data* %ref.tmp.i, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %182 = load %class.Vec8f*, %class.Vec8f** %_M_start.i.i13.i.i15.i, align 8, !tbaa !43
  %tobool.not.i.i.i14.i.i16.i = icmp eq %class.Vec8f* %182, null
  br i1 %tobool.not.i.i.i14.i.i16.i, label %"_ZNK3$_0clERN9benchmark5StateE.exit", label %if.then.i.i.i15.i.i18.i

if.then.i.i.i15.i.i18.i:                          ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i17.i
  %183 = bitcast %class.Vec8f* %182 to i8*
  call void @_ZdlPvSt11align_val_t(i8* noundef %183, i64 noundef 32) #39
  br label %"_ZNK3$_0clERN9benchmark5StateE.exit"

"_ZNK3$_0clERN9benchmark5StateE.exit":            ; preds = %_ZNSt6vectorI5Vec8fSaIS0_EED2Ev.exit12.i.i17.i, %if.then.i.i.i15.i.i18.i
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #36
  ret void
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(%"class.benchmark::State"* noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(%"class.benchmark::State"* noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #27

declare void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"* noundef nonnull align 8 dereferenceable(208), i8* noundef) unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %frames_to_skip, i64 noundef %max_depth) local_unnamed_addr #29 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %buffer = alloca [128 x i8*], align 16
  %buf = alloca %"class.std::vector.51", align 8
  %tobool.not = icmp eq i64 %max_depth, 0
  br i1 %tobool.not, label %cleanup44, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast [128 x i8*]* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #36
  %arraydecay = getelementptr inbounds [128 x i8*], [128 x i8*]* %buffer, i64 0, i64 0
  %1 = icmp ult i64 %max_depth, 128
  %cond = select i1 %1, i64 %max_depth, i64 128
  %add = add i64 %frames_to_skip, 1
  %call = call noundef i64 @_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm(i8** noundef nonnull %arraydecay, i64 noundef %cond, i64 noundef %add) #36
  %cmp2 = icmp ult i64 %call, 128
  %cmp3 = icmp eq i64 %call, %max_depth
  %or.cond = or i1 %cmp2, %cmp3
  br i1 %or.cond, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %this, i8** noundef nonnull %arraydecay, i64 noundef %call)
          to label %cleanup44.critedge unwind label %lpad

lpad:                                             ; preds = %if.then4
  %2 = landingpad { i8*, i32 }
          catch i8* null
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #36
  br label %catch

cleanup:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #36
  %3 = bitcast %"class.std::vector.51"* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #36
  %call5.i.i.i.i4.i.i70 = invoke noalias noundef nonnull dereferenceable(2048) i8* @_Znwm(i64 noundef 2048) #40
          to label %call5.i.i.i.i4.i.i.noexc unwind label %lpad10

call5.i.i.i.i4.i.i.noexc:                         ; preds = %cleanup
  %4 = bitcast i8* %call5.i.i.i.i4.i.i70 to i8**
  %5 = bitcast %"class.std::vector.51"* %buf to i8**
  store i8* %call5.i.i.i.i4.i.i70, i8** %5, align 8, !tbaa !74
  %_M_finish.i.i.i = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %buf, i64 0, i32 0, i32 0, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr inbounds i8*, i8** %4, i64 256
  %_M_end_of_storage.i.i.i = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %buf, i64 0, i32 0, i32 0, i32 0, i32 2
  store i8** %add.ptr.i.i.i, i8*** %_M_end_of_storage.i.i.i, align 8, !tbaa !76
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(2048) %call5.i.i.i.i4.i.i70, i8 0, i64 2048, i1 false), !tbaa !47
  store i8** %add.ptr.i.i.i, i8*** %_M_finish.i.i.i, align 8, !tbaa !77
  %_M_start.i = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %buf, i64 0, i32 0, i32 0, i32 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %call5.i.i.i.i4.i.i.noexc
  %6 = phi i8** [ %14, %do.cond ], [ %add.ptr.i.i.i, %call5.i.i.i.i4.i.i.noexc ]
  %7 = phi i8** [ %13, %do.cond ], [ %4, %call5.i.i.i.i4.i.i.noexc ]
  %sub.ptr.lhs.cast.i = ptrtoint i8** %6 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8** %7 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %cmp15 = icmp ult i64 %sub.ptr.div.i, %max_depth
  %spec.select = select i1 %cmp15, i64 %sub.ptr.div.i, i64 %max_depth
  %call22 = call noundef i64 @_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm(i8** noundef nonnull %7, i64 noundef %spec.select, i64 noundef %add) #36
  %8 = load i8**, i8*** %_M_finish.i.i.i, align 8, !tbaa !77
  %9 = load i8**, i8*** %_M_start.i, align 8, !tbaa !74
  %sub.ptr.lhs.cast.i80 = ptrtoint i8** %8 to i64
  %sub.ptr.rhs.cast.i81 = ptrtoint i8** %9 to i64
  %sub.ptr.sub.i82 = sub i64 %sub.ptr.lhs.cast.i80, %sub.ptr.rhs.cast.i81
  %sub.ptr.div.i83 = ashr exact i64 %sub.ptr.sub.i82, 3
  %cmp24 = icmp ugt i64 %sub.ptr.div.i83, %call22
  %cmp26 = icmp eq i64 %call22, %max_depth
  %or.cond68 = or i1 %cmp26, %cmp24
  br i1 %or.cond68, label %if.then27, label %if.end31

if.then27:                                        ; preds = %do.body
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %this, i8** noundef nonnull %9, i64 noundef %call22)
          to label %cleanup44.critedge69 unwind label %lpad29.loopexit.split-lp

lpad10:                                           ; preds = %cleanup
  %10 = landingpad { i8*, i32 }
          catch i8* null
  br label %ehcleanup

lpad29.loopexit:                                  ; preds = %if.then.i
  %lpad.loopexit = landingpad { i8*, i32 }
          catch i8* null
  br label %lpad29

lpad29.loopexit.split-lp:                         ; preds = %if.then27
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          catch i8* null
  br label %lpad29

lpad29:                                           ; preds = %lpad29.loopexit.split-lp, %lpad29.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %lpad29.loopexit ], [ %lpad.loopexit.split-lp, %lpad29.loopexit.split-lp ]
  %11 = load i8**, i8*** %_M_start.i, align 8, !tbaa !74
  %tobool.not.i.i.i = icmp eq i8** %11, null
  br i1 %tobool.not.i.i.i, label %ehcleanup, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad29
  %12 = bitcast i8** %11 to i8*
  call void @_ZdlPv(i8* noundef %12) #39
  br label %ehcleanup

if.end31:                                         ; preds = %do.body
  %mul = ashr exact i64 %sub.ptr.sub.i82, 2
  %cmp.i = icmp ugt i64 %mul, %sub.ptr.div.i83
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end31
  %sub.i = sub nsw i64 %mul, %sub.ptr.div.i83
  invoke void @_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm(%"class.std::vector.51"* noundef nonnull align 8 dereferenceable(24) %buf, i64 noundef %sub.i)
          to label %if.then.i.do.cond_crit_edge unwind label %lpad29.loopexit

if.then.i.do.cond_crit_edge:                      ; preds = %if.then.i
  %.pre = load i8**, i8*** %_M_finish.i.i.i, align 8, !tbaa !77
  %.pre122 = load i8**, i8*** %_M_start.i, align 8, !tbaa !74
  %.pre123 = ptrtoint i8** %.pre122 to i64
  br label %do.cond

if.else.i:                                        ; preds = %if.end31
  %cmp4.i = icmp ult i64 %mul, %sub.ptr.div.i83
  br i1 %cmp4.i, label %if.then5.i, label %do.cond

if.then5.i:                                       ; preds = %if.else.i
  %add.ptr.i = getelementptr inbounds i8*, i8** %9, i64 %mul
  %tobool.not.i.i = icmp eq i8** %8, %add.ptr.i
  br i1 %tobool.not.i.i, label %do.cond, label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.then5.i
  store i8** %add.ptr.i, i8*** %_M_finish.i.i.i, align 8, !tbaa !77
  br label %do.cond

do.cond:                                          ; preds = %if.then.i.do.cond_crit_edge, %invoke.cont.i.i, %if.then5.i, %if.else.i
  %sub.ptr.rhs.cast.i96.pre-phi = phi i64 [ %.pre123, %if.then.i.do.cond_crit_edge ], [ %sub.ptr.rhs.cast.i81, %invoke.cont.i.i ], [ %sub.ptr.rhs.cast.i81, %if.then5.i ], [ %sub.ptr.rhs.cast.i81, %if.else.i ]
  %13 = phi i8** [ %.pre122, %if.then.i.do.cond_crit_edge ], [ %9, %invoke.cont.i.i ], [ %9, %if.then5.i ], [ %9, %if.else.i ]
  %14 = phi i8** [ %.pre, %if.then.i.do.cond_crit_edge ], [ %add.ptr.i, %invoke.cont.i.i ], [ %8, %if.then5.i ], [ %8, %if.else.i ]
  %sub.ptr.lhs.cast.i95 = ptrtoint i8** %14 to i64
  %sub.ptr.sub.i97 = sub i64 %sub.ptr.lhs.cast.i95, %sub.ptr.rhs.cast.i96.pre-phi
  %cmp39 = icmp ult i64 %sub.ptr.sub.i97, 9223372036854775800
  br i1 %cmp39, label %do.body, label %cleanup40, !llvm.loop !78

cleanup40:                                        ; preds = %do.cond
  %tobool.not.i.i.i100 = icmp eq i8** %13, null
  br i1 %tobool.not.i.i.i100, label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit102, label %if.then.i.i.i101

if.then.i.i.i101:                                 ; preds = %cleanup40
  %15 = bitcast i8** %13 to i8*
  call void @_ZdlPv(i8* noundef %15) #39
  br label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit102

_ZNSt6vectorIPKvSaIS1_EED2Ev.exit102:             ; preds = %cleanup40, %if.then.i.i.i101
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #36
  br label %cleanup44

ehcleanup:                                        ; preds = %if.then.i.i.i, %lpad29, %lpad10
  %.pn = phi { i8*, i32 } [ %10, %lpad10 ], [ %lpad.phi, %lpad29 ], [ %lpad.phi, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #36
  br label %catch

catch:                                            ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %2, %lpad ]
  %exn.slot.1 = extractvalue { i8*, i32 } %.pn.pn, 0
  %16 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #36
  call void @__cxa_end_catch()
  br label %cleanup44

cleanup44.critedge:                               ; preds = %if.then4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #36
  br label %cleanup44

cleanup44.critedge69:                             ; preds = %if.then27
  %17 = load i8**, i8*** %_M_start.i, align 8, !tbaa !74
  %tobool.not.i.i.i104 = icmp eq i8** %17, null
  br i1 %tobool.not.i.i.i104, label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit106, label %if.then.i.i.i105

if.then.i.i.i105:                                 ; preds = %cleanup44.critedge69
  %18 = bitcast i8** %17 to i8*
  call void @_ZdlPv(i8* noundef %18) #39
  br label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit106

_ZNSt6vectorIPKvSaIS1_EED2Ev.exit106:             ; preds = %cleanup44.critedge69, %if.then.i.i.i105
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #36
  br label %cleanup44

cleanup44:                                        ; preds = %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit102, %catch, %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit106, %cleanup44.critedge, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost10stacktrace6detail18this_thread_frames7collectEPPKvmm(i8** noundef %out_frames, i64 noundef %max_frames_count, i64 noundef %skip) local_unnamed_addr #30 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %state = alloca %"struct.boost::stacktrace::detail::unwind_state", align 8
  %tobool.not = icmp eq i64 %max_frames_count, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %skip, 1
  %0 = bitcast %"struct.boost::stacktrace::detail::unwind_state"* %state to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #36
  %frames_to_skip = getelementptr inbounds %"struct.boost::stacktrace::detail::unwind_state", %"struct.boost::stacktrace::detail::unwind_state"* %state, i64 0, i32 0
  store i64 %add, i64* %frames_to_skip, align 8, !tbaa !79
  %current = getelementptr inbounds %"struct.boost::stacktrace::detail::unwind_state", %"struct.boost::stacktrace::detail::unwind_state"* %state, i64 0, i32 1
  store i8** %out_frames, i8*** %current, align 8, !tbaa !81
  %end = getelementptr inbounds %"struct.boost::stacktrace::detail::unwind_state", %"struct.boost::stacktrace::detail::unwind_state"* %state, i64 0, i32 2
  %add.ptr = getelementptr inbounds i8*, i8** %out_frames, i64 %max_frames_count
  store i8** %add.ptr, i8*** %end, align 8, !tbaa !82
  %call = invoke i32 @_Unwind_Backtrace(i32 (%struct._Unwind_Context*, i8*)* noundef nonnull @_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv, i8* noundef nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %1 = load i8**, i8*** %current, align 8, !tbaa !81
  %sub.ptr.lhs.cast = ptrtoint i8** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %out_frames to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %tobool2.not = icmp eq i64 %sub.ptr.sub, 0
  br i1 %tobool2.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %invoke.cont
  %sub = add nsw i64 %sub.ptr.div, -1
  %arrayidx = getelementptr inbounds i8*, i8** %out_frames, i64 %sub
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !47
  %cmp = icmp eq i8* %2, null
  %spec.select = select i1 %cmp, i64 %sub, i64 %sub.ptr.div
  br label %if.end4

lpad:                                             ; preds = %if.end
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  call void @__clang_call_terminate(i8* %4) #37
  unreachable

if.end4:                                          ; preds = %land.lhs.true, %invoke.cont
  %frames_count.0 = phi i64 [ 0, %invoke.cont ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #36
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i64 [ %frames_count.0, %if.end4 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm(%"class.boost::stacktrace::basic_stacktrace"* noundef nonnull align 8 dereferenceable(24) %this, i8** noundef %begin, i64 noundef %size) local_unnamed_addr #5 comdat align 2 {
entry:
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt i64 %size, 1152921504606846975
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #38
  unreachable

if.end.i:                                         ; preds = %if.end
  %_M_end_of_storage.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %this, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %0 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_end_of_storage.i.i, align 8, !tbaa !83
  %_M_start.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %this, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %1 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i, align 8, !tbaa !12
  %2 = ptrtoint %"class.boost::stacktrace::frame"* %1 to i64
  %sub.ptr.lhs.cast.i.i = ptrtoint %"class.boost::stacktrace::frame"* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint %"class.boost::stacktrace::frame"* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 3
  %cmp3.i = icmp ult i64 %sub.ptr.div.i.i, %size
  br i1 %cmp3.i, label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i, label %for.body.lr.ph

_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i: ; preds = %if.end.i
  %_M_finish.i.i = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %this, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %3 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_finish.i.i, align 8, !tbaa !18
  %sub.ptr.lhs.cast.i33.i = ptrtoint %"class.boost::stacktrace::frame"* %3 to i64
  %sub.ptr.sub.i35.i = sub i64 %sub.ptr.lhs.cast.i33.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i36.i = ashr exact i64 %sub.ptr.sub.i35.i, 3
  %mul.i.i.i.i = shl nuw nsw i64 %size, 3
  %call5.i.i.i.i = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i) #40
  %4 = bitcast i8* %call5.i.i.i.i to %"class.boost::stacktrace::frame"*
  %cmp.not8.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %1, %3
  br i1 %cmp.not8.i.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %for.body.i.i.i.i.preheader

for.body.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i
  %5 = add i64 %sub.ptr.lhs.cast.i33.i, -8
  %6 = sub i64 %5, %2
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %min.iters.check = icmp ult i64 %6, 120
  br i1 %min.iters.check, label %for.body.i.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.i.i.i.preheader
  %n.vec = and i64 %8, 4611686018427387888
  %ind.end = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %4, i64 %n.vec
  %ind.end24 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %4, i64 %index
  %next.gep28 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %1, i64 %index
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87) #36
  %9 = bitcast %"class.boost::stacktrace::frame"* %next.gep28 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %9, align 8, !tbaa !47, !alias.scope !87, !noalias !84
  %10 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep28, i64 4
  %11 = bitcast %"class.boost::stacktrace::frame"* %10 to <4 x i64>*
  %wide.load32 = load <4 x i64>, <4 x i64>* %11, align 8, !tbaa !47, !alias.scope !87, !noalias !84
  %12 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep28, i64 8
  %13 = bitcast %"class.boost::stacktrace::frame"* %12 to <4 x i64>*
  %wide.load33 = load <4 x i64>, <4 x i64>* %13, align 8, !tbaa !47, !alias.scope !87, !noalias !84
  %14 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep28, i64 12
  %15 = bitcast %"class.boost::stacktrace::frame"* %14 to <4 x i64>*
  %wide.load34 = load <4 x i64>, <4 x i64>* %15, align 8, !tbaa !47, !alias.scope !87, !noalias !84
  %16 = bitcast %"class.boost::stacktrace::frame"* %next.gep to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %16, align 8, !tbaa !47, !alias.scope !84, !noalias !87
  %17 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep, i64 4
  %18 = bitcast %"class.boost::stacktrace::frame"* %17 to <4 x i64>*
  store <4 x i64> %wide.load32, <4 x i64>* %18, align 8, !tbaa !47, !alias.scope !84, !noalias !87
  %19 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep, i64 8
  %20 = bitcast %"class.boost::stacktrace::frame"* %19 to <4 x i64>*
  store <4 x i64> %wide.load33, <4 x i64>* %20, align 8, !tbaa !47, !alias.scope !84, !noalias !87
  %21 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep, i64 12
  %22 = bitcast %"class.boost::stacktrace::frame"* %21 to <4 x i64>*
  store <4 x i64> %wide.load34, <4 x i64>* %22, align 8, !tbaa !47, !alias.scope !84, !noalias !87
  %index.next = add nuw i64 %index, 16
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %for.body.i.i.i.i.preheader62

for.body.i.i.i.i.preheader62:                     ; preds = %for.body.i.i.i.i.preheader, %middle.block
  %__cur.010.i.i.i.i.ph = phi %"class.boost::stacktrace::frame"* [ %4, %for.body.i.i.i.i.preheader ], [ %ind.end, %middle.block ]
  %__first.addr.09.i.i.i.i.ph = phi %"class.boost::stacktrace::frame"* [ %1, %for.body.i.i.i.i.preheader ], [ %ind.end24, %middle.block ]
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.preheader62, %for.body.i.i.i.i
  %__cur.010.i.i.i.i = phi %"class.boost::stacktrace::frame"* [ %incdec.ptr2.i.i.i.i, %for.body.i.i.i.i ], [ %__cur.010.i.i.i.i.ph, %for.body.i.i.i.i.preheader62 ]
  %__first.addr.09.i.i.i.i = phi %"class.boost::stacktrace::frame"* [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i ], [ %__first.addr.09.i.i.i.i.ph, %for.body.i.i.i.i.preheader62 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87) #36
  %24 = bitcast %"class.boost::stacktrace::frame"* %__first.addr.09.i.i.i.i to i64*
  %25 = bitcast %"class.boost::stacktrace::frame"* %__cur.010.i.i.i.i to i64*
  %26 = load i64, i64* %24, align 8, !tbaa !47, !alias.scope !87, !noalias !84
  store i64 %26, i64* %25, align 8, !tbaa !47, !alias.scope !84, !noalias !87
  %incdec.ptr.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %__first.addr.09.i.i.i.i, i64 1
  %incdec.ptr2.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %__cur.010.i.i.i.i, i64 1
  %cmp.not.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %incdec.ptr.i.i.i.i, %3
  br i1 %cmp.not.i.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %for.body.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %for.body.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i
  %tobool.not.i.i = icmp eq %"class.boost::stacktrace::frame"* %1, null
  br i1 %tobool.not.i.i, label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %27 = bitcast %"class.boost::stacktrace::frame"* %1 to i8*
  tail call void @_ZdlPv(i8* noundef %27) #39
  br label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %if.then.i.i, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %28 = bitcast %"class.boost::stacktrace::basic_stacktrace"* %this to i8**
  store i8* %call5.i.i.i.i, i8** %28, align 8, !tbaa !12
  %add.ptr.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %4, i64 %sub.ptr.div.i36.i
  store %"class.boost::stacktrace::frame"* %add.ptr.i, %"class.boost::stacktrace::frame"** %_M_finish.i.i, align 8, !tbaa !18
  %add.ptr21.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %4, i64 %size
  store %"class.boost::stacktrace::frame"* %add.ptr21.i, %"class.boost::stacktrace::frame"** %_M_end_of_storage.i.i, align 8, !tbaa !83
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE13_M_deallocateEPS2_m.exit.i, %if.end.i
  %_M_finish.i.i14 = getelementptr inbounds %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace"* %this, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %umax = call i64 @llvm.umax.i64(i64 %size, i64 1)
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit
  %i.021 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit ]
  %arrayidx = getelementptr inbounds i8*, i8** %begin, i64 %i.021
  %29 = load i8*, i8** %arrayidx, align 8, !tbaa !47
  %tobool2.not = icmp eq i8* %29, null
  br i1 %tobool2.not, label %for.end, label %if.end4

if.end4:                                          ; preds = %for.body
  %30 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_finish.i.i14, align 8, !tbaa !18
  %31 = ptrtoint %"class.boost::stacktrace::frame"* %30 to i64
  %32 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_end_of_storage.i.i, align 8, !tbaa !83
  %cmp.not.i.i = icmp eq %"class.boost::stacktrace::frame"* %30, %32
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %if.end4
  %33 = bitcast %"class.boost::stacktrace::frame"* %30 to i64*
  %34 = ptrtoint i8* %29 to i64
  store i64 %34, i64* %33, align 8, !tbaa !47
  %35 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_finish.i.i14, align 8, !tbaa !18
  %incdec.ptr.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %35, i64 1
  store %"class.boost::stacktrace::frame"* %incdec.ptr.i.i, %"class.boost::stacktrace::frame"** %_M_finish.i.i14, align 8, !tbaa !18
  br label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit

if.else.i.i:                                      ; preds = %if.end4
  %36 = load %"class.boost::stacktrace::frame"*, %"class.boost::stacktrace::frame"** %_M_start.i.i, align 8, !tbaa !12
  %37 = ptrtoint %"class.boost::stacktrace::frame"* %36 to i64
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint %"class.boost::stacktrace::frame"* %30 to i64
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint %"class.boost::stacktrace::frame"* %36 to i64
  %sub.ptr.sub.i.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i.i, 9223372036854775800
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.else.i.i
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %if.else.i.i
  %cmp.i.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i.i, 0
  %.sroa.speculated.i.i.i.i = select i1 %cmp.i.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i.i
  %add.i.i.i.i = add nsw i64 %.sroa.speculated.i.i.i.i, %sub.ptr.div.i.i.i.i.i
  %cmp7.i.i.i.i = icmp ult i64 %add.i.i.i.i, %sub.ptr.div.i.i.i.i.i
  %cmp9.i.i.i.i = icmp ugt i64 %add.i.i.i.i, 1152921504606846975
  %or.cond.i.i.i.i = or i1 %cmp7.i.i.i.i, %cmp9.i.i.i.i
  %cond.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 1152921504606846975, i64 %add.i.i.i.i
  %cmp.not.i.i.i.i17 = icmp eq i64 %cond.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i17, label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m.exit.i.i.i.i

_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m.exit.i.i.i.i: ; preds = %_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %cond.i.i.i.i, 3
  %call5.i.i.i.i.i.i = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i.i) #40
  %38 = bitcast i8* %call5.i.i.i.i.i.i to %"class.boost::stacktrace::frame"*
  br label %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m.exit.i.i.i.i, %_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %cond.i38.i.i.i = phi %"class.boost::stacktrace::frame"* [ %38, %_ZNSt16allocator_traitsISaIN5boost10stacktrace5frameEEE8allocateERS3_m.exit.i.i.i.i ], [ null, %_ZNKSt6vectorIN5boost10stacktrace5frameESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %cond.i38.i.i.i, i64 %sub.ptr.div.i.i.i.i.i
  %39 = bitcast %"class.boost::stacktrace::frame"* %add.ptr.i.i.i to i64*
  %40 = ptrtoint i8* %29 to i64
  store i64 %40, i64* %39, align 8, !tbaa !47
  %cmp.not8.i.i.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %36, %30
  br i1 %cmp.not8.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i, label %for.body.i.i.i.i.i.i.preheader

for.body.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i
  %41 = add i64 %31, -8
  %42 = sub i64 %41, %37
  %43 = lshr i64 %42, 3
  %44 = add nuw nsw i64 %43, 1
  %min.iters.check38 = icmp ult i64 %42, 120
  br i1 %min.iters.check38, label %for.body.i.i.i.i.i.i.preheader61, label %vector.ph39

vector.ph39:                                      ; preds = %for.body.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %44, 4611686018427387888
  %ind.end43 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %cond.i38.i.i.i, i64 %n.vec41
  %ind.end45 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %36, i64 %n.vec41
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph39
  %index47 = phi i64 [ 0, %vector.ph39 ], [ %index.next60, %vector.body37 ]
  %next.gep48 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %cond.i38.i.i.i, i64 %index47
  %next.gep52 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %36, i64 %index47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96) #36
  %45 = bitcast %"class.boost::stacktrace::frame"* %next.gep52 to <4 x i64>*
  %wide.load56 = load <4 x i64>, <4 x i64>* %45, align 8, !tbaa !47, !alias.scope !96, !noalias !93
  %46 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep52, i64 4
  %47 = bitcast %"class.boost::stacktrace::frame"* %46 to <4 x i64>*
  %wide.load57 = load <4 x i64>, <4 x i64>* %47, align 8, !tbaa !47, !alias.scope !96, !noalias !93
  %48 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep52, i64 8
  %49 = bitcast %"class.boost::stacktrace::frame"* %48 to <4 x i64>*
  %wide.load58 = load <4 x i64>, <4 x i64>* %49, align 8, !tbaa !47, !alias.scope !96, !noalias !93
  %50 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep52, i64 12
  %51 = bitcast %"class.boost::stacktrace::frame"* %50 to <4 x i64>*
  %wide.load59 = load <4 x i64>, <4 x i64>* %51, align 8, !tbaa !47, !alias.scope !96, !noalias !93
  %52 = bitcast %"class.boost::stacktrace::frame"* %next.gep48 to <4 x i64>*
  store <4 x i64> %wide.load56, <4 x i64>* %52, align 8, !tbaa !47, !alias.scope !93, !noalias !96
  %53 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep48, i64 4
  %54 = bitcast %"class.boost::stacktrace::frame"* %53 to <4 x i64>*
  store <4 x i64> %wide.load57, <4 x i64>* %54, align 8, !tbaa !47, !alias.scope !93, !noalias !96
  %55 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep48, i64 8
  %56 = bitcast %"class.boost::stacktrace::frame"* %55 to <4 x i64>*
  store <4 x i64> %wide.load58, <4 x i64>* %56, align 8, !tbaa !47, !alias.scope !93, !noalias !96
  %57 = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %next.gep48, i64 12
  %58 = bitcast %"class.boost::stacktrace::frame"* %57 to <4 x i64>*
  store <4 x i64> %wide.load59, <4 x i64>* %58, align 8, !tbaa !47, !alias.scope !93, !noalias !96
  %index.next60 = add nuw i64 %index47, 16
  %59 = icmp eq i64 %index.next60, %n.vec41
  br i1 %59, label %middle.block35, label %vector.body37, !llvm.loop !98

middle.block35:                                   ; preds = %vector.body37
  %cmp.n46 = icmp eq i64 %44, %n.vec41
  br i1 %cmp.n46, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i, label %for.body.i.i.i.i.i.i.preheader61

for.body.i.i.i.i.i.i.preheader61:                 ; preds = %for.body.i.i.i.i.i.i.preheader, %middle.block35
  %__cur.010.i.i.i.i.i.i.ph = phi %"class.boost::stacktrace::frame"* [ %cond.i38.i.i.i, %for.body.i.i.i.i.i.i.preheader ], [ %ind.end43, %middle.block35 ]
  %__first.addr.09.i.i.i.i.i.i.ph = phi %"class.boost::stacktrace::frame"* [ %36, %for.body.i.i.i.i.i.i.preheader ], [ %ind.end45, %middle.block35 ]
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %for.body.i.i.i.i.i.i.preheader61, %for.body.i.i.i.i.i.i
  %__cur.010.i.i.i.i.i.i = phi %"class.boost::stacktrace::frame"* [ %incdec.ptr2.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %__cur.010.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.preheader61 ]
  %__first.addr.09.i.i.i.i.i.i = phi %"class.boost::stacktrace::frame"* [ %incdec.ptr.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %__first.addr.09.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.preheader61 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96) #36
  %60 = bitcast %"class.boost::stacktrace::frame"* %__first.addr.09.i.i.i.i.i.i to i64*
  %61 = bitcast %"class.boost::stacktrace::frame"* %__cur.010.i.i.i.i.i.i to i64*
  %62 = load i64, i64* %60, align 8, !tbaa !47, !alias.scope !96, !noalias !93
  store i64 %62, i64* %61, align 8, !tbaa !47, !alias.scope !93, !noalias !96
  %incdec.ptr.i.i.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %__first.addr.09.i.i.i.i.i.i, i64 1
  %incdec.ptr2.i.i.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %__cur.010.i.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %incdec.ptr.i.i.i.i.i.i, %30
  br i1 %cmp.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i, label %for.body.i.i.i.i.i.i, !llvm.loop !99

_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i: ; preds = %for.body.i.i.i.i.i.i, %middle.block35, %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i
  %__cur.0.lcssa.i.i.i.i.i.i = phi %"class.boost::stacktrace::frame"* [ %cond.i38.i.i.i, %_ZNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE11_M_allocateEm.exit.i.i.i ], [ %ind.end43, %middle.block35 ], [ %incdec.ptr2.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ]
  %incdec.ptr.i.i.i = getelementptr %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %__cur.0.lcssa.i.i.i.i.i.i, i64 1
  %tobool.not.i.i.i.i = icmp eq %"class.boost::stacktrace::frame"* %36, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %if.then.i49.i.i.i

if.then.i49.i.i.i:                                ; preds = %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i
  %63 = bitcast %"class.boost::stacktrace::frame"* %36 to i8*
  tail call void @_ZdlPv(i8* noundef %63) #39
  br label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %if.then.i49.i.i.i, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48.i.i.i
  store %"class.boost::stacktrace::frame"* %cond.i38.i.i.i, %"class.boost::stacktrace::frame"** %_M_start.i.i, align 8, !tbaa !12
  store %"class.boost::stacktrace::frame"* %incdec.ptr.i.i.i, %"class.boost::stacktrace::frame"** %_M_finish.i.i14, align 8, !tbaa !18
  %add.ptr20.i.i.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %cond.i38.i.i.i, i64 %cond.i.i.i.i
  store %"class.boost::stacktrace::frame"* %add.ptr20.i.i.i, %"class.boost::stacktrace::frame"** %_M_end_of_storage.i.i, align 8, !tbaa !83
  br label %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit: ; preds = %if.then.i.i16, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %inc = add nuw i64 %i.021, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !100

for.end:                                          ; preds = %for.body, %_ZNSt6vectorIN5boost10stacktrace5frameESaIS2_EE9push_backEOS2_.exit, %entry
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

declare i32 @_Unwind_Backtrace(i32 (%struct._Unwind_Context*, i8*)* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5boost10stacktrace6detail15unwind_callbackEP15_Unwind_ContextPv(%struct._Unwind_Context* noundef %context, i8* noundef %arg) #31 comdat {
entry:
  %frames_to_skip = bitcast i8* %arg to i64*
  %0 = load i64, i64* %frames_to_skip, align 8, !tbaa !79
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dec = add i64 %0, -1
  store i64 %dec, i64* %frames_to_skip, align 8, !tbaa !79
  %call = tail call i64 @_Unwind_GetIP(%struct._Unwind_Context* noundef %context)
  %tobool2.not = icmp eq i64 %call, 0
  %cond = select i1 %tobool2.not, i32 5, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @_Unwind_GetIP(%struct._Unwind_Context* noundef %context)
  %1 = inttoptr i64 %call3 to i8*
  %current = getelementptr inbounds i8, i8* %arg, i64 8
  %2 = bitcast i8* %current to i8***
  %3 = load i8**, i8*** %2, align 8, !tbaa !81
  store i8* %1, i8** %3, align 8, !tbaa !47
  %4 = load i8**, i8*** %2, align 8, !tbaa !81
  %incdec.ptr = getelementptr inbounds i8*, i8** %4, i64 1
  store i8** %incdec.ptr, i8*** %2, align 8, !tbaa !81
  %5 = load i8*, i8** %4, align 8, !tbaa !47
  %tobool6.not = icmp eq i8* %5, null
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %end = getelementptr inbounds i8, i8* %arg, i64 16
  %6 = bitcast i8* %end to i8***
  %7 = load i8**, i8*** %6, align 8, !tbaa !82
  %cmp = icmp eq i8** %incdec.ptr, %7
  %spec.select = select i1 %cmp, i32 5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 5, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i64 @_Unwind_GetIP(%struct._Unwind_Context* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKvSaIS1_EE17_M_default_appendEm(%"class.std::vector.51"* noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) local_unnamed_addr #32 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %cmp.not = icmp eq i64 %__n, 0
  br i1 %cmp.not, label %if.end48, label %if.then

if.then:                                          ; preds = %entry
  %_M_finish.i = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %this, i64 0, i32 0, i32 0, i32 0, i32 1
  %0 = load i8**, i8*** %_M_finish.i, align 8, !tbaa !77
  %_M_start.i = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = load i8**, i8*** %_M_start.i, align 8, !tbaa !74
  %sub.ptr.lhs.cast.i = ptrtoint i8** %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8** %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %2 = lshr exact i64 %sub.ptr.sub.i, 3
  %_M_end_of_storage = getelementptr inbounds %"class.std::vector.51", %"class.std::vector.51"* %this, i64 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8**, i8*** %_M_end_of_storage, align 8, !tbaa !76
  %sub.ptr.lhs.cast = ptrtoint i8** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast.i
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp4 = icmp sgt i64 %sub.ptr.sub.i, -1
  tail call void @llvm.assume(i1 %cmp4)
  %sub = xor i64 %2, 1152921504606846975
  %cmp6 = icmp ule i64 %sub.ptr.div, %sub
  tail call void @llvm.assume(i1 %cmp6)
  %cmp8.not = icmp ult i64 %sub.ptr.div, %__n
  br i1 %cmp8.not, label %if.else, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  store i8* null, i8** %0, align 8, !tbaa !47
  %incdec.ptr.i.i.i = getelementptr i8*, i8** %0, i64 1
  %cmp.i.i.i.i.i = icmp eq i64 %__n, 1
  br i1 %cmp.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E.exit, label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %incdec.ptr8.i.i.i = bitcast i8** %incdec.ptr.i.i.i to i8*
  %4 = shl i64 %__n, 3
  %5 = add i64 %4, -8
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %incdec.ptr8.i.i.i, i8 0, i64 %5, i1 false), !tbaa !47
  %add.ptr.i.i.i.i.i = getelementptr inbounds i8*, i8** %0, i64 %__n
  br label %_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %if.then.i.i.i, %if.end.i.i.i.i.i
  %__first.addr.0.i.i.i = phi i8** [ %incdec.ptr.i.i.i, %if.then.i.i.i ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.i ]
  store i8** %__first.addr.0.i.i.i, i8*** %_M_finish.i, align 8, !tbaa !77
  br label %if.end48

if.else:                                          ; preds = %if.then
  %cmp.i = icmp ult i64 %sub, %__n
  br i1 %cmp.i, label %if.then.i, label %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit

if.then.i:                                        ; preds = %if.else
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #38
  unreachable

_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %if.else
  %cmp.i.i = icmp ult i64 %2, %__n
  %.sroa.speculated.i = select i1 %cmp.i.i, i64 %__n, i64 %2
  %add.i = add i64 %.sroa.speculated.i, %2
  %cmp7.i = icmp ult i64 %add.i, %2
  %cmp9.i = icmp ugt i64 %add.i, 1152921504606846975
  %or.cond.i = or i1 %cmp7.i, %cmp9.i
  %cond.i = select i1 %or.cond.i, i64 1152921504606846975, i64 %add.i
  %cmp.not.i = icmp eq i64 %cond.i, 0
  br i1 %cmp.not.i, label %if.then.i.i.i80, label %_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m.exit.i

_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m.exit.i: ; preds = %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit
  %mul.i.i.i = shl nuw nsw i64 %cond.i, 3
  %call5.i.i.i = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i) #40
  %6 = bitcast i8* %call5.i.i.i to i8**
  br label %if.then.i.i.i80

if.then.i.i.i80:                                  ; preds = %_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m.exit.i, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit
  %cond.i76 = phi i8** [ %6, %_ZNSt16allocator_traitsISaIPKvEE8allocateERS2_m.exit.i ], [ null, %_ZNKSt6vectorIPKvSaIS1_EE12_M_check_lenEmPKc.exit ]
  %add.ptr = getelementptr inbounds i8*, i8** %cond.i76, i64 %2
  store i8* null, i8** %add.ptr, align 8, !tbaa !47
  %cmp.i.i.i.i.i79 = icmp eq i64 %__n, 1
  br i1 %cmp.i.i.i.i.i79, label %try.cont, label %if.end.i.i.i.i.i83

if.end.i.i.i.i.i83:                               ; preds = %if.then.i.i.i80
  %incdec.ptr.i.i.i78 = getelementptr i8*, i8** %add.ptr, i64 1
  %incdec.ptr8.i.i.i81 = bitcast i8** %incdec.ptr.i.i.i78 to i8*
  %7 = shl i64 %__n, 3
  %8 = add i64 %7, -8
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %incdec.ptr8.i.i.i81, i8 0, i64 %8, i1 false), !tbaa !47
  br label %try.cont

try.cont:                                         ; preds = %if.end.i.i.i.i.i83, %if.then.i.i.i80
  %cmp.i.i.i87.not = icmp eq i64 %sub.ptr.sub.i, 0
  br i1 %cmp.i.i.i87.not, label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %if.then.i.i.i88

if.then.i.i.i88:                                  ; preds = %try.cont
  %9 = bitcast i8** %cond.i76 to i8*
  %10 = bitcast i8** %1 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 %sub.ptr.sub.i, i1 false) #36
  br label %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %try.cont, %if.then.i.i.i88
  %tobool.not.i89 = icmp eq i8** %1, null
  br i1 %tobool.not.i89, label %_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m.exit91, label %if.then.i90

if.then.i90:                                      ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %11 = bitcast i8** %1 to i8*
  tail call void @_ZdlPv(i8* noundef %11) #39
  br label %_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m.exit91

_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m.exit91: ; preds = %_ZNSt6vectorIPKvSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %if.then.i90
  store i8** %cond.i76, i8*** %_M_start.i, align 8, !tbaa !74
  %add.ptr41 = getelementptr inbounds i8*, i8** %add.ptr, i64 %__n
  store i8** %add.ptr41, i8*** %_M_finish.i, align 8, !tbaa !77
  %add.ptr44 = getelementptr inbounds i8*, i8** %cond.i76, i64 %cond.i
  store i8** %add.ptr44, i8*** %_M_end_of_storage, align 8, !tbaa !76
  br label %if.end48

if.end48:                                         ; preds = %_ZSt27__uninitialized_default_n_aIPPKvmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPKvSaIS1_EE13_M_deallocateEPS1_m.exit91, %entry
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.boost::stacktrace::frame"* noundef %frames, i64 noundef %size) local_unnamed_addr #16 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %impl = alloca %"class.boost::stacktrace::detail::to_string_impl_base", align 8
  %ref.tmp = alloca %"class.boost::array", align 1
  %ref.tmp16 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon.13**
  store %union.anon.13* %0, %union.anon.13** %1, align 8, !tbaa !19
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %.cast.i = bitcast %union.anon.13* %0 to i8*
  store i8 0, i8* %.cast.i, align 8, !tbaa !24
  %cmp = icmp eq i64 %size, 0
  br i1 %cmp, label %nrvo.skipdtor, label %if.end

if.end:                                           ; preds = %entry
  %mul = shl i64 %size, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64 noundef %mul)
          to label %for.body.lr.ph unwind label %lpad

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast %"class.boost::stacktrace::detail::to_string_impl_base"* %impl to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #36
  %3 = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %impl, i64 0, i32 0, i32 0, i32 2
  %4 = bitcast %"class.boost::stacktrace::detail::to_string_impl_base"* %impl to %union.anon.13**
  store %union.anon.13* %3, %union.anon.13** %4, align 8, !tbaa !19
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %impl, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !21
  %.cast.i.i.i = bitcast %union.anon.13* %3 to i8*
  store i8 0, i8* %.cast.i.i.i, align 8, !tbaa !24
  %_M_p.i.i.i.i.i43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, i32 0
  %5 = getelementptr inbounds %"class.boost::array", %"class.boost::array"* %ref.tmp, i64 0, i32 0, i64 0
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp16 to i8*
  %_M_string_length.i.i.i79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp16, i64 0, i32 1
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp16, i64 0, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp16, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon.13* %7 to i8*
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %_M_p.i.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %impl, i64 0, i32 0, i32 0, i32 0, i32 0
  %.pre = load i8*, i8** %_M_p.i.i.i.i.i.phi.trans.insert, align 8, !tbaa !25
  %cmp.i.i.i.i = icmp eq i8* %.pre, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZdlPv(i8* noundef %.pre) #39
  br label %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit

_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit: ; preds = %for.cond.cleanup, %if.then.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #36
  br label %nrvo.skipdtor

lpad:                                             ; preds = %if.end
  %8 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup28

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0129 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %cmp2 = icmp ult i64 %i.0129, 10
  br i1 %cmp2, label %if.then3, label %if.end6.thread

if.end6.thread:                                   ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #36
  br label %for.body.i.preheader

if.then3:                                         ; preds = %for.body
  %9 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %add.i.i = add i64 %9, 1
  %10 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %cmp.i.i.i.i45 = icmp eq i8* %10, %.cast.i
  %11 = load i64, i64* %_M_allocated_capacity.i.i.i, align 8
  %cond.i.i.i = select i1 %cmp.i.i.i.i45, i64 15, i64 %11
  %cmp.i.i = icmp ugt i64 %add.i.i, %cond.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6

if.then.i.i:                                      ; preds = %if.then3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64 noundef %9, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %.noexc unwind label %lpad4

.noexc:                                           ; preds = %if.then.i.i
  %.pre.i.i = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  br label %if.end6

lpad4:                                            ; preds = %if.then.i.i96, %if.then.i.i74, %if.then.i.i60, %if.then.i.i
  %12 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup25

if.end6:                                          ; preds = %.noexc, %if.then3
  %13 = phi i8* [ %.pre.i.i, %.noexc ], [ %10, %if.then3 ]
  %arrayidx.i.i = getelementptr inbounds i8, i8* %13, i64 %9
  store i8 32, i8* %arrayidx.i.i, align 1, !tbaa !24
  store i64 %add.i.i, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %14 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %14, i64 %add.i.i
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %tobool.not.i = icmp eq i64 %i.0129, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end6.thread, %if.end6
  br label %for.body.i

if.then.i:                                        ; preds = %if.end6
  store i8 48, i8* %5, align 1, !tbaa !24, !alias.scope !101
  br label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit

for.cond4.preheader.i:                            ; preds = %for.body.i
  %cmp.not37.i = icmp eq i64 %inc.i, 0
  br i1 %cmp.not37.i, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %for.body6.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %value_copy.036.i = phi i64 [ %div.i, %for.body.i ], [ %i.0129, %for.body.i.preheader ]
  %digits.035.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %inc.i = add i64 %digits.035.i, 1
  %div.i = udiv i64 %value_copy.036.i, 10
  %15 = icmp ult i64 %value_copy.036.i, 10
  br i1 %15, label %for.cond4.preheader.i, label %for.body.i, !llvm.loop !104

for.cond.cleanup5.i:                              ; preds = %_ZN5boost5arrayIcLm40EEixEm.exit33.i
  %cmp.i.i47 = icmp ult i64 %inc.i, 40
  br i1 %cmp.i.i47, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %for.cond.cleanup5.i
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__._ZN5boost5arrayIcLm40EEixEm, i64 0, i64 0)) #37, !noalias !101
  unreachable

for.body6.i:                                      ; preds = %for.cond4.preheader.i, %_ZN5boost5arrayIcLm40EEixEm.exit33.i
  %i.039.i = phi i64 [ %inc11.i, %_ZN5boost5arrayIcLm40EEixEm.exit33.i ], [ 1, %for.cond4.preheader.i ]
  %value.addr.038.i = phi i64 [ %div9.i, %_ZN5boost5arrayIcLm40EEixEm.exit33.i ], [ %i.0129, %for.cond4.preheader.i ]
  %sub.i = sub i64 %inc.i, %i.039.i
  %cmp.i30.i = icmp ult i64 %sub.i, 40
  br i1 %cmp.i30.i, label %_ZN5boost5arrayIcLm40EEixEm.exit33.i, label %cond.false.i31.i

cond.false.i31.i:                                 ; preds = %for.body6.i
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__._ZN5boost5arrayIcLm40EEixEm, i64 0, i64 0)) #37, !noalias !101
  unreachable

_ZN5boost5arrayIcLm40EEixEm.exit33.i:             ; preds = %for.body6.i
  %rem.i = urem i64 %value.addr.038.i, 10
  %16 = trunc i64 %rem.i to i8
  %conv.i = or i8 %16, 48
  %arrayidx.i32.i = getelementptr inbounds %"class.boost::array", %"class.boost::array"* %ref.tmp, i64 0, i32 0, i64 %sub.i
  store i8 %conv.i, i8* %arrayidx.i32.i, align 1, !tbaa !24, !alias.scope !101
  %div9.i = udiv i64 %value.addr.038.i, 10
  %inc11.i = add i64 %i.039.i, 1
  %cmp.not.i = icmp ult i64 %inc.i, %inc11.i
  br i1 %cmp.not.i, label %for.cond.cleanup5.i, label %for.body6.i, !llvm.loop !105

_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit: ; preds = %if.then.i, %for.cond4.preheader.i, %for.cond.cleanup5.i
  %inc.lcssa.sink.i = phi i64 [ 1, %if.then.i ], [ 0, %for.cond4.preheader.i ], [ %inc.i, %for.cond.cleanup5.i ]
  %arrayidx.i29.i = getelementptr inbounds %"class.boost::array", %"class.boost::array"* %ref.tmp, i64 0, i32 0, i64 %inc.lcssa.sink.i
  store i8 0, i8* %arrayidx.i29.i, align 1, !tbaa !24, !alias.scope !101
  %call.i.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #36
  %17 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %sub3.i.i.i = sub i64 4611686018427387903, %17
  %cmp.i.i.i = icmp ult i64 %sub3.i.i.i, %call.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i48, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

if.then.i.i.i48:                                  ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #38
          to label %.noexc49 unwind label %lpad7.loopexit.split-lp

.noexc49:                                         ; preds = %if.then.i.i.i48
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  %call2.i.i50 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i8* noundef nonnull %5, i64 noundef %call.i.i.i)
          to label %invoke.cont10 unwind label %lpad7.loopexit

invoke.cont10:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #36
  %18 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %add.i.i52 = add i64 %18, 1
  %19 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %cmp.i.i.i.i55 = icmp eq i8* %19, %.cast.i
  %20 = load i64, i64* %_M_allocated_capacity.i.i.i, align 8
  %cond.i.i.i57 = select i1 %cmp.i.i.i.i55, i64 15, i64 %20
  %cmp.i.i58 = icmp ugt i64 %add.i.i52, %cond.i.i.i57
  br i1 %cmp.i.i58, label %if.then.i.i60, label %invoke.cont12

if.then.i.i60:                                    ; preds = %invoke.cont10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64 noundef %18, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %.noexc63 unwind label %lpad4

.noexc63:                                         ; preds = %if.then.i.i60
  %.pre.i.i59 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  br label %invoke.cont12

invoke.cont12:                                    ; preds = %.noexc63, %invoke.cont10
  %21 = phi i8* [ %.pre.i.i59, %.noexc63 ], [ %19, %invoke.cont10 ]
  %arrayidx.i.i61 = getelementptr inbounds i8, i8* %21, i64 %18
  store i8 35, i8* %arrayidx.i.i61, align 1, !tbaa !24
  store i64 %add.i.i52, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %22 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %arrayidx.i.i.i62 = getelementptr inbounds i8, i8* %22, i64 %add.i.i52
  store i8 0, i8* %arrayidx.i.i.i62, align 1, !tbaa !24
  %23 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %add.i.i66 = add i64 %23, 1
  %24 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %cmp.i.i.i.i69 = icmp eq i8* %24, %.cast.i
  %25 = load i64, i64* %_M_allocated_capacity.i.i.i, align 8
  %cond.i.i.i71 = select i1 %cmp.i.i.i.i69, i64 15, i64 %25
  %cmp.i.i72 = icmp ugt i64 %add.i.i66, %cond.i.i.i71
  br i1 %cmp.i.i72, label %if.then.i.i74, label %invoke.cont14

if.then.i.i74:                                    ; preds = %invoke.cont12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64 noundef %23, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %.noexc77 unwind label %lpad4

.noexc77:                                         ; preds = %if.then.i.i74
  %.pre.i.i73 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  br label %invoke.cont14

invoke.cont14:                                    ; preds = %.noexc77, %invoke.cont12
  %26 = phi i8* [ %.pre.i.i73, %.noexc77 ], [ %24, %invoke.cont12 ]
  %arrayidx.i.i75 = getelementptr inbounds i8, i8* %26, i64 %23
  store i8 32, i8* %arrayidx.i.i75, align 1, !tbaa !24
  store i64 %add.i.i66, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %27 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %arrayidx.i.i.i76 = getelementptr inbounds i8, i8* %27, i64 %add.i.i66
  store i8 0, i8* %arrayidx.i.i.i76, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #36
  %addr_.i = getelementptr inbounds %"class.boost::stacktrace::frame", %"class.boost::stacktrace::frame"* %frames, i64 %i.0129, i32 0
  %28 = load i8*, i8** %addr_.i, align 8, !tbaa !106
  invoke void @_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp16, %"class.boost::stacktrace::detail::to_string_impl_base"* noundef nonnull align 8 dereferenceable(32) %impl, i8* noundef %28)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont14
  %29 = load i64, i64* %_M_string_length.i.i.i79, align 8, !tbaa !21
  %30 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %sub3.i.i.i.i = sub i64 4611686018427387903, %30
  %cmp.i.i.i.i81 = icmp ult i64 %sub3.i.i.i.i, %29
  br i1 %cmp.i.i.i.i81, label %if.then.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

if.then.i.i.i.i:                                  ; preds = %invoke.cont19
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #38
          to label %.noexc83 unwind label %lpad20.loopexit.split-lp

.noexc83:                                         ; preds = %if.then.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %invoke.cont19
  %31 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %call.i.i.i8284 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i8* noundef %31, i64 noundef %29)
          to label %invoke.cont21 unwind label %lpad20.loopexit

invoke.cont21:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %32 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %cmp.i.i.i85 = icmp eq i8* %32, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i85, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i86

if.then.i.i86:                                    ; preds = %invoke.cont21
  call void @_ZdlPv(i8* noundef %32) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %invoke.cont21, %if.then.i.i86
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #36
  %33 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %add.i.i88 = add i64 %33, 1
  %34 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %cmp.i.i.i.i91 = icmp eq i8* %34, %.cast.i
  %35 = load i64, i64* %_M_allocated_capacity.i.i.i, align 8
  %cond.i.i.i93 = select i1 %cmp.i.i.i.i91, i64 15, i64 %35
  %cmp.i.i94 = icmp ugt i64 %add.i.i88, %cond.i.i.i93
  br i1 %cmp.i.i94, label %if.then.i.i96, label %for.inc

if.then.i.i96:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64 noundef %33, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %.noexc99 unwind label %lpad4

.noexc99:                                         ; preds = %if.then.i.i96
  %.pre.i.i95 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %.noexc99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %36 = phi i8* [ %.pre.i.i95, %.noexc99 ], [ %34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %arrayidx.i.i97 = getelementptr inbounds i8, i8* %36, i64 %33
  store i8 10, i8* %arrayidx.i.i97, align 1, !tbaa !24
  store i64 %add.i.i88, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %37 = load i8*, i8** %_M_p.i.i.i.i.i43, align 8, !tbaa !25
  %arrayidx.i.i.i98 = getelementptr inbounds i8, i8* %37, i64 %add.i.i88
  store i8 0, i8* %arrayidx.i.i.i98, align 1, !tbaa !24
  %inc = add nuw i64 %i.0129, 1
  %exitcond.not = icmp eq i64 %inc, %size
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !108

lpad7.loopexit:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %lpad7

lpad7.loopexit.split-lp:                          ; preds = %if.then.i.i.i48
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %lpad7

lpad7:                                            ; preds = %lpad7.loopexit.split-lp, %lpad7.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %lpad7.loopexit ], [ %lpad.loopexit.split-lp, %lpad7.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #36
  br label %ehcleanup25

lpad18:                                           ; preds = %invoke.cont14
  %38 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad20.loopexit:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit116 = landingpad { i8*, i32 }
          cleanup
  br label %lpad20

lpad20.loopexit.split-lp:                         ; preds = %if.then.i.i.i.i
  %lpad.loopexit.split-lp117 = landingpad { i8*, i32 }
          cleanup
  br label %lpad20

lpad20:                                           ; preds = %lpad20.loopexit.split-lp, %lpad20.loopexit
  %lpad.phi118 = phi { i8*, i32 } [ %lpad.loopexit116, %lpad20.loopexit ], [ %lpad.loopexit.split-lp117, %lpad20.loopexit.split-lp ]
  %39 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %cmp.i.i.i103 = icmp eq i8* %39, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i103, label %ehcleanup, label %if.then.i.i104

if.then.i.i104:                                   ; preds = %lpad20
  call void @_ZdlPv(i8* noundef %39) #39
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i104, %lpad20, %lpad18
  %.pn = phi { i8*, i32 } [ %38, %lpad18 ], [ %lpad.phi118, %lpad20 ], [ %lpad.phi118, %if.then.i.i104 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #36
  br label %ehcleanup25

ehcleanup25:                                      ; preds = %ehcleanup, %lpad7, %lpad4
  %.pn38 = phi { i8*, i32 } [ %12, %lpad4 ], [ %.pn, %ehcleanup ], [ %lpad.phi, %lpad7 ]
  %_M_p.i.i.i.i.i106 = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %impl, i64 0, i32 0, i32 0, i32 0, i32 0
  %40 = load i8*, i8** %_M_p.i.i.i.i.i106, align 8, !tbaa !25
  %cmp.i.i.i.i108 = icmp eq i8* %40, %.cast.i.i.i
  br i1 %cmp.i.i.i.i108, label %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit110, label %if.then.i.i.i109

if.then.i.i.i109:                                 ; preds = %ehcleanup25
  call void @_ZdlPv(i8* noundef %40) #39
  br label %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit110

_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit110: ; preds = %ehcleanup25, %if.then.i.i.i109
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #36
  br label %ehcleanup28

nrvo.skipdtor:                                    ; preds = %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit, %entry
  ret void

ehcleanup28:                                      ; preds = %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit110, %lpad
  %.pn38.pn = phi { i8*, i32 } [ %.pn38, %_ZN5boost10stacktrace6detail23to_string_using_nothingD2Ev.exit110 ], [ %8, %lpad ]
  %_M_p.i.i.i.i111 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %_M_p.i.i.i.i111, align 8, !tbaa !25
  %cmp.i.i.i113 = icmp eq i8* %41, %.cast.i
  br i1 %cmp.i.i.i113, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %if.then.i.i114

if.then.i.i114:                                   ; preds = %ehcleanup28
  call void @_ZdlPv(i8* noundef %41) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %ehcleanup28, %if.then.i.i114
  resume { i8*, i32 } %.pn38.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_23to_string_using_nothingEEclB5cxx11EPKv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.boost::stacktrace::detail::to_string_impl_base"* noundef nonnull align 8 dereferenceable(32) %this, i8* noundef %addr) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__dnew.i.i50 = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp7 = alloca %"class.boost::array.57", align 2
  %loc = alloca %"class.boost::stacktrace::detail::location_from_symbol", align 8
  %0 = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0
  %res = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %_M_p.i.i.i = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  store i8 0, i8* %1, align 1, !tbaa !24
  tail call void @_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv(%"struct.boost::stacktrace::detail::to_string_using_nothing"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %addr)
  %2 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %cmp.i = icmp eq i64 %2, 0
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #36
  %4 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  call void @_ZN5boost4core8demangleB5cxx11EPKc(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp, i8* noundef %4)
  %_M_p.i.i65.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p.i.i65.i, align 8, !tbaa !25
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i66.i = bitcast %union.anon.13* %6 to i8*
  %cmp.i67.i = icmp eq i8* %5, %arraydecay.i.i66.i
  br i1 %cmp.i67.i, label %if.then15.i, label %invoke.cont29.i

if.then15.i:                                      ; preds = %if.then
  %cmp.not.i = icmp eq %"class.std::__cxx11::basic_string"* %ref.tmp, %res
  br i1 %cmp.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %if.then17.i, !prof !55

if.then17.i:                                      ; preds = %if.then15.i
  %_M_string_length.i.i28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %7 = load i64, i64* %_M_string_length.i.i28, align 8, !tbaa !21
  %tobool19.not.i = icmp eq i64 %7, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then17.i
  %8 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %cond.i = icmp eq i64 %7, 1
  br i1 %cond.i, label %if.then.i.i, label %if.end.i.i.i

if.then.i.i:                                      ; preds = %if.then20.i
  %9 = load i8, i8* %5, align 1, !tbaa !24
  store i8 %9, i8* %8, align 1, !tbaa !24
  br label %if.end25.i

if.end.i.i.i:                                     ; preds = %if.then20.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %5, i64 %7, i1 false) #36
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i, %if.then17.i
  %10 = load i64, i64* %_M_string_length.i.i28, align 8, !tbaa !21
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %11 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %arrayidx.i.i = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !24
  %.pre.i = load i8*, i8** %_M_p.i.i65.i, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

invoke.cont29.i:                                  ; preds = %if.then
  %12 = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0, i32 0, i32 2
  %arraydecay.i.i.i = bitcast %union.anon.13* %12 to i8*
  %13 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %cmp.i76.i = icmp eq i8* %13, %arraydecay.i.i.i
  br i1 %cmp.i76.i, label %if.end34.thread.i, label %if.end34.i

if.end34.thread.i:                                ; preds = %invoke.cont29.i
  store i8* %5, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %_M_string_length.i8087.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %14 = bitcast i64* %_M_string_length.i8087.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !24
  %16 = bitcast i64* %_M_string_length.i.i.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %16, align 8, !tbaa !24
  br label %if.else40.i

if.end34.i:                                       ; preds = %invoke.cont29.i
  %_M_allocated_capacity33.i = getelementptr inbounds %"class.boost::stacktrace::detail::to_string_impl_base", %"class.boost::stacktrace::detail::to_string_impl_base"* %this, i64 0, i32 0, i32 0, i32 2, i32 0
  %17 = load i64, i64* %_M_allocated_capacity33.i, align 8, !tbaa !24
  store i8* %5, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %_M_string_length.i80.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %18 = bitcast i64* %_M_string_length.i80.i to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !tbaa !24
  %20 = bitcast i64* %_M_string_length.i.i.i to <2 x i64>*
  store <2 x i64> %19, <2 x i64>* %20, align 8, !tbaa !24
  %tobool38.not.i = icmp eq i8* %13, null
  br i1 %tobool38.not.i, label %if.else40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end34.i
  store i8* %13, i8** %_M_p.i.i65.i, align 8, !tbaa !25
  %_M_allocated_capacity.i83.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %17, i64* %_M_allocated_capacity.i83.i, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

if.else40.i:                                      ; preds = %if.end34.i, %if.end34.thread.i
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon.13**
  store %union.anon.13* %6, %union.anon.13** %21, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %if.then15.i, %if.end25.i, %if.then39.i, %if.else40.i
  %22 = phi i8* [ %.pre.i, %if.end25.i ], [ %13, %if.then39.i ], [ %arraydecay.i.i66.i, %if.else40.i ], [ %5, %if.then15.i ]
  %_M_string_length.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i, align 8, !tbaa !21
  store i8 0, i8* %22, align 1, !tbaa !24
  %23 = load i8*, i8** %_M_p.i.i65.i, align 8, !tbaa !25
  %cmp.i.i.i = icmp eq i8* %23, %arraydecay.i.i66.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(i8* noundef %23) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %if.then.i.i29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #36
  br label %if.end14

if.else:                                          ; preds = %entry
  %24 = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %24) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %25 = ptrtoint i8* %addr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112) #36
  %26 = bitcast %"class.boost::array.57"* %ref.tmp7 to i16*
  store i16 30768, i16* %26, align 2, !alias.scope !115
  %arrayidx.i.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 18
  store i8 0, i8* %arrayidx.i.i.i, align 2, !tbaa !24, !alias.scope !115
  %add.ptr3.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 17
  %and5.i.i = and i64 %25, 15
  %arrayidx.i.i30 = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.i.i
  %27 = load i8, i8* %arrayidx.i.i30, align 1, !tbaa !24, !noalias !115
  store i8 %27, i8* %add.ptr3.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 16
  %conv4.i.i = lshr i64 %25, 4
  %28 = and i64 %conv4.i.i, 15
  %arrayidx8.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %28
  %29 = load i8, i8* %arrayidx8.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %29, i8* %incdec.ptr.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 15
  %shr10.i.i = lshr i64 %25, 8
  %and5.1.i.i = and i64 %shr10.i.i, 15
  %arrayidx.1.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.1.i.i
  %30 = load i8, i8* %arrayidx.1.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %30, i8* %incdec.ptr9.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.1.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 14
  %conv4.1.i.i = lshr i64 %25, 12
  %31 = and i64 %conv4.1.i.i, 15
  %arrayidx8.1.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %31
  %32 = load i8, i8* %arrayidx8.1.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %32, i8* %incdec.ptr.1.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.1.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 13
  %shr10.1.i.i = lshr i64 %25, 16
  %and5.2.i.i = and i64 %shr10.1.i.i, 15
  %arrayidx.2.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.2.i.i
  %33 = load i8, i8* %arrayidx.2.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %33, i8* %incdec.ptr9.1.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.2.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 12
  %conv4.2.i.i = lshr i64 %25, 20
  %34 = and i64 %conv4.2.i.i, 15
  %arrayidx8.2.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %34
  %35 = load i8, i8* %arrayidx8.2.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %35, i8* %incdec.ptr.2.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.2.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 11
  %shr10.2.i.i = lshr i64 %25, 24
  %and5.3.i.i = and i64 %shr10.2.i.i, 15
  %arrayidx.3.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.3.i.i
  %36 = load i8, i8* %arrayidx.3.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %36, i8* %incdec.ptr9.2.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.3.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 10
  %conv4.3.i.i = lshr i64 %25, 28
  %37 = and i64 %conv4.3.i.i, 15
  %arrayidx8.3.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %37
  %38 = load i8, i8* %arrayidx8.3.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %38, i8* %incdec.ptr.3.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.3.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 9
  %shr10.3.i.i = lshr i64 %25, 32
  %and5.4.i.i = and i64 %shr10.3.i.i, 15
  %arrayidx.4.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.4.i.i
  %39 = load i8, i8* %arrayidx.4.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %39, i8* %incdec.ptr9.3.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.4.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 8
  %conv4.4.i.i = lshr i64 %25, 36
  %40 = and i64 %conv4.4.i.i, 15
  %arrayidx8.4.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %40
  %41 = load i8, i8* %arrayidx8.4.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %41, i8* %incdec.ptr.4.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.4.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 7
  %shr10.4.i.i = lshr i64 %25, 40
  %and5.5.i.i = and i64 %shr10.4.i.i, 15
  %arrayidx.5.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.5.i.i
  %42 = load i8, i8* %arrayidx.5.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %42, i8* %incdec.ptr9.4.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.5.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 6
  %conv4.5.i.i = lshr i64 %25, 44
  %43 = and i64 %conv4.5.i.i, 15
  %arrayidx8.5.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %43
  %44 = load i8, i8* %arrayidx8.5.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %44, i8* %incdec.ptr.5.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.5.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 5
  %shr10.5.i.i = lshr i64 %25, 48
  %and5.6.i.i = and i64 %shr10.5.i.i, 15
  %arrayidx.6.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.6.i.i
  %45 = load i8, i8* %arrayidx.6.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %45, i8* %incdec.ptr9.5.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.6.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 4
  %conv4.6.i.i = lshr i64 %25, 52
  %46 = and i64 %conv4.6.i.i, 15
  %arrayidx8.6.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx8.6.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %47, i8* %incdec.ptr.6.i.i, align 2, !tbaa !24, !alias.scope !115
  %incdec.ptr9.6.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 3
  %shr10.6.i.i = lshr i64 %25, 56
  %and5.7.i.i = and i64 %shr10.6.i.i, 15
  %arrayidx.7.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %and5.7.i.i
  %48 = load i8, i8* %arrayidx.7.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %48, i8* %incdec.ptr9.6.i.i, align 1, !tbaa !24, !alias.scope !115
  %incdec.ptr.7.i.i = getelementptr inbounds %"class.boost::array.57", %"class.boost::array.57"* %ref.tmp7, i64 0, i32 0, i64 2
  %conv4.7.i.i = lshr i64 %25, 60
  %arrayidx8.7.i.i = getelementptr inbounds [17 x i8], [17 x i8]* @_ZN5boost10stacktrace6detailL18to_hex_array_bytesE, i64 0, i64 %conv4.7.i.i
  %49 = load i8, i8* %arrayidx8.7.i.i, align 1, !tbaa !24, !noalias !115
  store i8 %49, i8* %incdec.ptr.7.i.i, align 2, !tbaa !24, !alias.scope !115
  %call.i.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %24) #36
  %call3.i.i = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %res, i64 noundef 0, i64 noundef 0, i8* noundef nonnull %24, i64 noundef %call.i.i.i)
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %24) #36
  br label %if.end14

if.end14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %if.else
  %50 = bitcast %"class.boost::stacktrace::detail::location_from_symbol"* %loc to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %50) #36
  %dli_.i = getelementptr inbounds %"class.boost::stacktrace::detail::location_from_symbol", %"class.boost::stacktrace::detail::location_from_symbol"* %loc, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %50, i8 0, i64 32, i1 false) #36
  %call.i = call i32 @dladdr(i8* noundef %addr, %struct.Dl_info* noundef nonnull %dli_.i) #36
  %tobool.not.i = icmp eq i32 %call.i, 0
  %dli_fname.i = getelementptr inbounds %"class.boost::stacktrace::detail::location_from_symbol", %"class.boost::stacktrace::detail::location_from_symbol"* %loc, i64 0, i32 0, i32 0
  br i1 %tobool.not.i, label %_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit.thread, label %_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit

_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit.thread: ; preds = %if.end14
  store i8* null, i8** %dli_fname.i, align 8, !tbaa !116
  br label %if.end22

_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit: ; preds = %if.end14
  %.pre = load i8*, i8** %dli_fname.i, align 8, !tbaa !116
  %phi.cmp = icmp eq i8* %.pre, null
  %dli_fname.i37 = getelementptr inbounds %"class.boost::stacktrace::detail::location_from_symbol", %"class.boost::stacktrace::detail::location_from_symbol"* %loc, i64 0, i32 0, i32 0
  br i1 %phi.cmp, label %if.end22, label %if.then16

if.then16:                                        ; preds = %_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit
  %51 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %52 = and i64 %51, -4
  %cmp.i.i.i41 = icmp eq i64 %52, 4611686018427387900
  br i1 %cmp.i.i.i41, label %if.then.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

if.then.i.i.i:                                    ; preds = %if.then16
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %if.then16
  %call2.i.i = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %res, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 noundef 4)
  %53 = load i8*, i8** %dli_fname.i37, align 8, !tbaa !116
  %call.i.i.i43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %53) #36
  %54 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %sub3.i.i.i45 = sub i64 4611686018427387903, %54
  %cmp.i.i.i46 = icmp ult i64 %sub3.i.i.i45, %call.i.i.i43
  br i1 %cmp.i.i.i46, label %if.then.i.i.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49

if.then.i.i.i47:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %call2.i.i48 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %res, i8* noundef %53, i64 noundef %call.i.i.i43)
  br label %if.end22

if.end22:                                         ; preds = %_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49, %_ZN5boost10stacktrace6detail20location_from_symbolC2EPKv.exit
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %56 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon.13**
  store %union.anon.13* %55, %union.anon.13** %56, align 8, !tbaa !19
  %57 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %58 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !21
  %59 = bitcast i64* %__dnew.i.i50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #36
  store i64 %58, i64* %__dnew.i.i50, align 8, !tbaa !119
  %cmp.i.i53 = icmp ugt i64 %58, 15
  br i1 %cmp.i.i53, label %if.then.i.i58, label %entry.if.end_crit_edge.i.i54

entry.if.end_crit_edge.i.i54:                     ; preds = %if.end22
  %60 = bitcast %union.anon.13* %55 to i8*
  br label %if.end.i.i59

if.then.i.i58:                                    ; preds = %if.end22
  %call2.i14.i55 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64* noundef nonnull align 8 dereferenceable(8) %__dnew.i.i50, i64 noundef 0)
  %_M_p.i.i.i56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  store i8* %call2.i14.i55, i8** %_M_p.i.i.i56, align 8, !tbaa !25
  %61 = load i64, i64* %__dnew.i.i50, align 8, !tbaa !119
  %_M_allocated_capacity.i.i.i57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, i32 0
  store i64 %61, i64* %_M_allocated_capacity.i.i.i57, align 8, !tbaa !24
  br label %if.end.i.i59

if.end.i.i59:                                     ; preds = %if.then.i.i58, %entry.if.end_crit_edge.i.i54
  %62 = phi i8* [ %60, %entry.if.end_crit_edge.i.i54 ], [ %call2.i14.i55, %if.then.i.i58 ]
  switch i64 %58, label %if.end.i.i.i.i.i61 [
    i64 1, label %if.then.i.i.i.i60
    i64 0, label %return
  ]

if.then.i.i.i.i60:                                ; preds = %if.end.i.i59
  %63 = load i8, i8* %57, align 1, !tbaa !24
  store i8 %63, i8* %62, align 1, !tbaa !24
  br label %return

if.end.i.i.i.i.i61:                               ; preds = %if.end.i.i59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %57, i64 %58, i1 false) #36
  br label %return

return:                                           ; preds = %if.end.i.i.i.i.i61, %if.then.i.i.i.i60, %if.end.i.i59
  %_M_p.i8.i.i62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %64 = load i64, i64* %__dnew.i.i50, align 8, !tbaa !119
  %_M_string_length.i.i.i.i63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 %64, i64* %_M_string_length.i.i.i.i63, align 8, !tbaa !21
  %65 = load i8*, i8** %_M_p.i8.i.i62, align 8, !tbaa !25
  %arrayidx.i.i.i64 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8 0, i8* %arrayidx.i.i.i64, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #36
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %50) #36
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5boost10stacktrace6detail23to_string_using_nothing21prepare_function_nameEPKv(%"struct.boost::stacktrace::detail::to_string_using_nothing"* noundef nonnull align 8 dereferenceable(32) %this, i8* noundef %addr) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %dli.i = alloca %struct.Dl_info, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %tobool.not.i = icmp eq i8* %addr, null
  br i1 %tobool.not.i, label %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread, label %if.end.i

_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread: ; preds = %entry
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon.13**
  store %union.anon.13* %1, %union.anon.13** %2, align 8, !tbaa !19, !alias.scope !120
  %_M_string_length.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i, align 8, !tbaa !21, !alias.scope !120
  %.cast.i.i = bitcast %union.anon.13* %1 to i8*
  store i8 0, i8* %.cast.i.i, align 8, !tbaa !24, !alias.scope !120
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i66.i10 = bitcast %union.anon.13* %3 to i8*
  br label %if.then15.i

if.end.i:                                         ; preds = %entry
  %4 = bitcast %struct.Dl_info* %dli.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #36, !noalias !120
  %call.i = call i32 @dladdr(i8* noundef nonnull %addr, %struct.Dl_info* noundef nonnull %dli.i) #36, !noalias !120
  %tobool3.i = icmp ne i32 %call.i, 0
  %dli_sname.i = getelementptr inbounds %struct.Dl_info, %struct.Dl_info* %dli.i, i64 0, i32 2
  %5 = load i8*, i8** %dli_sname.i, align 8, !noalias !120
  %tobool6.i = icmp ne i8* %5, null
  %or.cond.i = select i1 %tobool3.i, i1 %tobool6.i, i1 false
  br i1 %or.cond.i, label %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit, label %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread18

_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread18: ; preds = %if.end.i
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon.13**
  store %union.anon.13* %6, %union.anon.13** %7, align 8, !tbaa !19, !alias.scope !123
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !123
  %.cast.i.i.i = bitcast %union.anon.13* %6 to i8*
  store i8 0, i8* %.cast.i.i.i, align 8, !tbaa !24, !alias.scope !123
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #36, !noalias !120
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i66.i22 = bitcast %union.anon.13* %8 to i8*
  br label %if.then15.i

_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit:  ; preds = %if.end.i
  call void @_ZN5boost4core8demangleB5cxx11EPKc(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp, i8* noundef nonnull %5)
  %_M_p.i.i65.i.phi.trans.insert.phi.trans.insert = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre.pre = load i8*, i8** %_M_p.i.i65.i.phi.trans.insert.phi.trans.insert, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #36, !noalias !120
  %_M_p.i.i.i = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 0, i32 0
  %_M_p.i.i65.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %arraydecay.i.i66.i = bitcast %union.anon.13* %9 to i8*
  %cmp.i67.i = icmp eq i8* %.pre.pre, %arraydecay.i.i66.i
  br i1 %cmp.i67.i, label %if.then15.i, label %invoke.cont29.i

if.then15.i:                                      ; preds = %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread18, %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread, %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit
  %arraydecay.i.i66.i17 = phi i8* [ %arraydecay.i.i66.i10, %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread ], [ %arraydecay.i.i66.i, %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit ], [ %arraydecay.i.i66.i22, %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit.thread18 ]
  %_M_p.i.i.i12 = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 0, i32 0
  %_M_p.i.i65.i13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %res = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0
  %cmp.not.i = icmp eq %"class.std::__cxx11::basic_string"* %ref.tmp, %res
  br i1 %cmp.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %if.then17.i, !prof !55

if.then17.i:                                      ; preds = %if.then15.i
  %_M_string_length.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i.i, align 8, !tbaa !21
  %tobool19.not.i = icmp eq i64 %10, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then17.i
  %11 = load i8*, i8** %_M_p.i.i.i12, align 8, !tbaa !25
  %cond.i = icmp eq i64 %10, 1
  br i1 %cond.i, label %if.then.i.i, label %if.end.i.i.i

if.then.i.i:                                      ; preds = %if.then20.i
  %12 = load i8, i8* %arraydecay.i.i66.i17, align 8, !tbaa !24
  store i8 %12, i8* %11, align 1, !tbaa !24
  br label %if.end25.i

if.end.i.i.i:                                     ; preds = %if.then20.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* nonnull align 8 %arraydecay.i.i66.i17, i64 %10, i1 false) #36
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i, %if.then17.i
  %13 = load i64, i64* %_M_string_length.i.i, align 8, !tbaa !21
  %_M_string_length.i.i72.i = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 1
  store i64 %13, i64* %_M_string_length.i.i72.i, align 8, !tbaa !21
  %14 = load i8*, i8** %_M_p.i.i.i12, align 8, !tbaa !25
  %arrayidx.i.i = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !24
  %.pre.i = load i8*, i8** %_M_p.i.i65.i13, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

invoke.cont29.i:                                  ; preds = %_ZNK5boost10stacktrace5frame4nameB5cxx11Ev.exit
  %15 = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 2
  %arraydecay.i.i.i = bitcast %union.anon.13* %15 to i8*
  %16 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %cmp.i76.i = icmp eq i8* %16, %arraydecay.i.i.i
  br i1 %cmp.i76.i, label %if.end34.thread.i, label %if.end34.i

if.end34.thread.i:                                ; preds = %invoke.cont29.i
  store i8* %.pre.pre, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %_M_string_length.i8087.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %_M_string_length.i8188.i = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 1
  %17 = bitcast i64* %_M_string_length.i8087.i to <2 x i64>*
  %18 = load <2 x i64>, <2 x i64>* %17, align 8, !tbaa !24
  %19 = bitcast i64* %_M_string_length.i8188.i to <2 x i64>*
  store <2 x i64> %18, <2 x i64>* %19, align 8, !tbaa !24
  br label %if.else40.i

if.end34.i:                                       ; preds = %invoke.cont29.i
  %_M_allocated_capacity33.i = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 2, i32 0
  %20 = load i64, i64* %_M_allocated_capacity33.i, align 8, !tbaa !24
  store i8* %.pre.pre, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %_M_string_length.i80.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %_M_string_length.i81.i = getelementptr inbounds %"struct.boost::stacktrace::detail::to_string_using_nothing", %"struct.boost::stacktrace::detail::to_string_using_nothing"* %this, i64 0, i32 0, i32 1
  %21 = bitcast i64* %_M_string_length.i80.i to <2 x i64>*
  %22 = load <2 x i64>, <2 x i64>* %21, align 8, !tbaa !24
  %23 = bitcast i64* %_M_string_length.i81.i to <2 x i64>*
  store <2 x i64> %22, <2 x i64>* %23, align 8, !tbaa !24
  %tobool38.not.i = icmp eq i8* %16, null
  br i1 %tobool38.not.i, label %if.else40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end34.i
  store i8* %16, i8** %_M_p.i.i65.i, align 8, !tbaa !25
  %_M_allocated_capacity.i83.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %20, i64* %_M_allocated_capacity.i83.i, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

if.else40.i:                                      ; preds = %if.end34.i, %if.end34.thread.i
  %24 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon.13**
  store %union.anon.13* %9, %union.anon.13** %24, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %if.then15.i, %if.end25.i, %if.then39.i, %if.else40.i
  %arraydecay.i.i66.i16 = phi i8* [ %arraydecay.i.i66.i17, %if.end25.i ], [ %arraydecay.i.i66.i, %if.then39.i ], [ %arraydecay.i.i66.i, %if.else40.i ], [ %arraydecay.i.i66.i17, %if.then15.i ]
  %25 = phi i8* [ %.pre.i, %if.end25.i ], [ %16, %if.then39.i ], [ %arraydecay.i.i66.i, %if.else40.i ], [ %arraydecay.i.i66.i17, %if.then15.i ]
  %_M_p.i.i65.i14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i.i4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i4, align 8, !tbaa !21
  store i8 0, i8* %25, align 1, !tbaa !24
  %26 = load i8*, i8** %_M_p.i.i65.i14, align 8, !tbaa !25
  %cmp.i.i.i = icmp eq i8* %26, %arraydecay.i.i66.i16
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i5

if.then.i.i5:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(i8* noundef %26) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %if.then.i.i5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #36
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5boost4core8demangleB5cxx11EPKc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* noundef %name) local_unnamed_addr #16 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i = alloca i64, align 8
  %status.i.i = alloca i32, align 4
  %size.i.i = alloca i64, align 8
  %0 = bitcast i32* %status.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #36
  store i32 0, i32* %status.i.i, align 4, !tbaa !56
  %1 = bitcast i64* %size.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #36
  store i64 0, i64* %size.i.i, align 8, !tbaa !119
  %call.i.i = invoke i8* @__cxa_demangle(i8* noundef %name, i8* noundef null, i64* noundef nonnull %size.i.i, i32* noundef nonnull %status.i.i)
          to label %_ZN5boost4core21scoped_demangled_nameC2EPKc.exit unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #36
  call void @__clang_call_terminate(i8* %3) #37
  unreachable

_ZN5boost4core21scoped_demangled_nameC2EPKc.exit: ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #36
  %tobool.not = icmp eq i8* %call.i.i, null
  %spec.select = select i1 %tobool.not, i8* %name, i8* %call.i.i
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon.13**
  store %union.anon.13* %4, %union.anon.13** %5, align 8, !tbaa !19
  %cmp.i = icmp eq i8* %spec.select, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %_ZN5boost4core21scoped_demangled_nameC2EPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0)) #38
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %if.then.i
  unreachable

if.end.i:                                         ; preds = %_ZN5boost4core21scoped_demangled_nameC2EPKc.exit
  %6 = bitcast %union.anon.13* %4 to i8*
  %call.i.i7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %spec.select) #36
  %7 = bitcast i64* %__dnew.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #36
  store i64 %call.i.i7, i64* %__dnew.i.i, align 8, !tbaa !119
  %cmp.i.i = icmp ugt i64 %call.i.i7, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call2.i12.i8 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %agg.result, i64* noundef nonnull align 8 dereferenceable(8) %__dnew.i.i, i64 noundef 0)
          to label %call2.i12.i.noexc unwind label %lpad

call2.i12.i.noexc:                                ; preds = %if.then.i.i
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  store i8* %call2.i12.i8, i8** %_M_p.i.i.i, align 8, !tbaa !25
  %8 = load i64, i64* %__dnew.i.i, align 8, !tbaa !119
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !24
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %call2.i12.i.noexc, %if.end.i
  %9 = phi i8* [ %call2.i12.i8, %call2.i12.i.noexc ], [ %6, %if.end.i ]
  switch i64 %call.i.i7, label %if.end.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i
    i64 0, label %invoke.cont
  ]

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  %10 = load i8, i8* %spec.select, align 1, !tbaa !24
  store i8 %10, i8* %9, align 1, !tbaa !24
  br label %invoke.cont

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* nonnull align 1 %spec.select, i64 %call.i.i7, i1 false) #36
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i, %if.end.i.i
  %_M_p.i8.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %11 = load i64, i64* %__dnew.i.i, align 8, !tbaa !119
  %_M_string_length.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 %11, i64* %_M_string_length.i.i.i.i, align 8, !tbaa !21
  %12 = load i8*, i8** %_M_p.i8.i.i, align 8, !tbaa !25
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %12, i64 %11
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #36
  call void @free(i8* noundef %call.i.i) #36
  ret void

lpad:                                             ; preds = %if.then.i.i, %if.then.i
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @free(i8* noundef %call.i.i) #36
  resume { i8*, i32 } %13
}

; Function Attrs: nounwind
declare i32 @dladdr(i8* noundef, %struct.Dl_info* noundef) local_unnamed_addr #3

declare i8* @__cxa_demangle(i8* noundef, i8* noundef, i64* noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8* noundef) local_unnamed_addr #24

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #33

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt24__throw_with_nested_implIRA91_KcEvOT_St17integral_constantIbLb0EE([91 x i8]* noundef nonnull align 1 dereferenceable(91) %__t) local_unnamed_addr #8 comdat {
entry:
  %exception = tail call i8* @__cxa_allocate_exception(i64 8) #36
  %0 = bitcast i8* %exception to i8**
  %arraydecay = getelementptr inbounds [91 x i8], [91 x i8]* %__t, i64 0, i64 0
  store i8* %arraydecay, i8** %0, align 16, !tbaa !47
  tail call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt24__throw_with_nested_implISt11range_errorEvOT_St17integral_constantIbLb1EE(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %__t) local_unnamed_addr #8 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %exception = tail call i8* @__cxa_allocate_exception(i64 32) #36
  %0 = bitcast i8* %exception to %"struct.std::_Nested_exception"*
  tail call void @_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_(%"struct.std::_Nested_exception"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %__t)
  tail call void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTISt17_Nested_exceptionISt11range_errorE to i8*), i8* bitcast (void (%"struct.std::_Nested_exception"*)* @_ZNSt17_Nested_exceptionISt11range_errorED2Ev to i8*)) #38
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Nested_exceptionISt11range_errorEC2EOS0_(%"struct.std::_Nested_exception"* noundef nonnull align 8 dereferenceable(32) %this, %"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %__ex) unnamed_addr #20 comdat align 2 {
entry:
  %0 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %"class.std::range_error", %"class.std::range_error"* %__ex, i64 0, i32 0
  tail call void @_ZNSt13runtime_errorC2EOS_(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %1) #36
  %2 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt11range_error, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !29
  %3 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVSt16nested_exception, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !29
  %_M_ptr.i = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 1, i32 1
  tail call void @_ZSt17current_exceptionv(%"class.std::__exception_ptr::exception_ptr"* nonnull sret(%"class.std::__exception_ptr::exception_ptr") align 8 %_M_ptr.i) #36
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [4 x i8*] }, { [5 x i8*], [4 x i8*] }* @_ZTVSt17_Nested_exceptionISt11range_errorE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !29
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [4 x i8*] }, { [5 x i8*], [4 x i8*] }* @_ZTVSt17_Nested_exceptionISt11range_errorE, i64 0, inrange i32 1, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Nested_exceptionISt11range_errorED2Ev(%"struct.std::_Nested_exception"* noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 1
  tail call void @_ZNSt16nested_exceptionD2Ev(%"class.std::nested_exception"* noundef nonnull align 8 dereferenceable(16) %0) #36
  %1 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 0
  tail call void @_ZNSt11range_errorD2Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %1) #36
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Nested_exceptionISt11range_errorED0Ev(%"struct.std::_Nested_exception"* noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 1
  tail call void @_ZNSt16nested_exceptionD2Ev(%"class.std::nested_exception"* noundef nonnull align 8 dereferenceable(16) %0) #36
  %1 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 0, i32 0
  tail call void @_ZNSt11range_errorD2Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %1) #36
  %2 = bitcast %"struct.std::_Nested_exception"* %this to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %2) #39
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt13runtime_error4whatEv(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_NSt17_Nested_exceptionISt11range_errorED1Ev(%"struct.std::_Nested_exception"* noundef %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 -1, i32 1
  %1 = getelementptr inbounds %"class.std::nested_exception", %"class.std::nested_exception"* %0, i64 1
  tail call void @_ZNSt16nested_exceptionD2Ev(%"class.std::nested_exception"* noundef nonnull align 8 dereferenceable(16) %1) #36
  %2 = bitcast %"class.std::nested_exception"* %0 to %"class.std::range_error"*
  tail call void @_ZNSt11range_errorD2Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %2) #36
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_NSt17_Nested_exceptionISt11range_errorED0Ev(%"struct.std::_Nested_exception"* noundef %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = getelementptr inbounds %"struct.std::_Nested_exception", %"struct.std::_Nested_exception"* %this, i64 -1, i32 1
  %1 = getelementptr inbounds %"class.std::nested_exception", %"class.std::nested_exception"* %0, i64 1
  tail call void @_ZNSt16nested_exceptionD2Ev(%"class.std::nested_exception"* noundef nonnull align 8 dereferenceable(16) %1) #36
  %2 = bitcast %"class.std::nested_exception"* %0 to %"class.std::range_error"*
  tail call void @_ZNSt11range_errorD2Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16) %2) #36
  %3 = bitcast %"class.std::nested_exception"* %0 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %3) #39
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16), %"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(%"class.std::__exception_ptr::exception_ptr"* sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt16nested_exceptionD2Ev(%"class.std::nested_exception"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(%"class.std::range_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_simdBenchmarking.cpp() #5 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %call.i = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv()
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #36
  %call.i1 = tail call noalias noundef nonnull dereferenceable(216) i8* @_Znwm(i64 noundef 216) #40
  %1 = bitcast i8* %call.i1 to %"class.benchmark::internal::FunctionBenchmark"*
  %2 = getelementptr inbounds %"class.benchmark::internal::FunctionBenchmark", %"class.benchmark::internal::FunctionBenchmark"* %1, i64 0, i32 0
  invoke void @_ZN9benchmark8internal9BenchmarkC2EPKc(%"class.benchmark::internal::Benchmark"* noundef nonnull align 8 dereferenceable(208) %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
          to label %__cxx_global_var_init.3.exit unwind label %cleanup.action.i

cleanup.action.i:                                 ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* noundef nonnull %call.i1) #39
  resume { i8*, i32 } %3

__cxx_global_var_init.3.exit:                     ; preds = %entry
  %4 = getelementptr inbounds %"class.benchmark::internal::FunctionBenchmark", %"class.benchmark::internal::FunctionBenchmark"* %1, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !29
  %func_.i.i = getelementptr inbounds %"class.benchmark::internal::FunctionBenchmark", %"class.benchmark::internal::FunctionBenchmark"* %1, i64 0, i32 1
  store void (%"class.benchmark::State"*)* @"_ZN3$_08__invokeERN9benchmark5StateE", void (%"class.benchmark::State"*)** %func_.i.i, align 8, !tbaa !126
  %call3.i = tail call noundef %"class.benchmark::internal::Benchmark"* @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(%"class.benchmark::internal::Benchmark"* noundef nonnull %2)
  store %"class.benchmark::internal::Benchmark"* %call3.i, %"class.benchmark::internal::Benchmark"** @_ZL24benchmark_uniq_2runbench, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.powi.f64.i32(double, i32) #34

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #34

attributes #0 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { inlinehint nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #9 = { mustprogress uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="64" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #12 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="64" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="64" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #15 = { uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="256" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #16 = { inlinehint uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #17 = { nobuiltin allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #18 = { nobuiltin nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #19 = { mustprogress norecurse uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #20 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #21 = { noinline noreturn nounwind }
attributes #22 = { argmemonly mustprogress nofree nounwind readonly willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #23 = { nofree nosync nounwind readnone }
attributes #24 = { noreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #25 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #26 = { inlinehint uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="256" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #27 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #28 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #29 = { noinline uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #30 = { mustprogress noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #31 = { inlinehint mustprogress uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #32 = { mustprogress uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #33 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver1" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #34 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #35 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #36 = { nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { noreturn }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTS13random_series", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN5boost10stacktrace5frameESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE: %agg.result"}
!17 = distinct !{!17, !"_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE"}
!18 = !{!13, !14, i64 8}
!19 = !{!20, !14, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !23, i64 8, !8, i64 16}
!23 = !{!"long", !8, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!22, !14, i64 0}
!26 = distinct !{!26, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !9, i64 0}
!31 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27}
!32 = !{i64 0, i64 4, !27}
!33 = !{!34, !28, i64 12}
!34 = !{!"_ZTS6sphere", !35, i64 0, !28, i64 12, !14, i64 16}
!35 = !{!"_ZTS4vec3", !28, i64 0, !28, i64 4, !28, i64 8}
!36 = !{!34, !14, i64 16}
!37 = distinct !{!37, !11}
!38 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27, i64 20, i64 4, !27}
!39 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27}
!40 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27}
!41 = !{!42, !14, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIP8materialSaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!43 = !{!44, !14, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseI5Vec8fSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!45 = !{!42, !14, i64 8}
!46 = !{!42, !14, i64 16}
!47 = !{!14, !14, i64 0}
!48 = !{!35, !28, i64 0}
!49 = !{!44, !14, i64 8}
!50 = !{!44, !14, i64 16}
!51 = !{i64 0, i64 32, !24}
!52 = !{!35, !28, i64 4}
!53 = !{!35, !28, i64 8}
!54 = !{i64 10524189}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!7, !7, i64 0}
!57 = !{i64 11349964}
!58 = distinct !{!58, !11}
!59 = !{!60, !28, i64 32}
!60 = !{!"_ZTS10hit_record", !35, i64 0, !35, i64 12, !14, i64 24, !28, i64 32}
!61 = !{!60, !14, i64 24}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZSt10make_tupleIJ4dataEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS4_: %agg.result"}
!64 = distinct !{!64, !"_ZSt10make_tupleIJ4dataEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS4_"}
!65 = !{!66, !67, i64 26}
!66 = !{!"_ZTSN9benchmark5StateE", !23, i64 0, !23, i64 8, !23, i64 16, !67, i64 24, !67, i64 25, !67, i64 26, !68, i64 32, !23, i64 56, !69, i64 64, !7, i64 112, !7, i64 116, !14, i64 120, !14, i64 128, !14, i64 136}
!67 = !{!"bool", !8, i64 0}
!68 = !{!"_ZTSSt6vectorIlSaIlEE"}
!69 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !70, i64 0}
!70 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !71, i64 0}
!71 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE"}
!72 = !{i8 0, i8 2}
!73 = distinct !{!73, !11}
!74 = !{!75, !14, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!76 = !{!75, !14, i64 16}
!77 = !{!75, !14, i64 8}
!78 = distinct !{!78, !11}
!79 = !{!80, !23, i64 0}
!80 = !{!"_ZTSN5boost10stacktrace6detail12unwind_stateE", !23, i64 0, !14, i64 8, !14, i64 16}
!81 = !{!80, !14, i64 8}
!82 = !{!80, !14, i64 16}
!83 = !{!13, !14, i64 16}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_: %__dest"}
!86 = distinct !{!86, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_: %__orig"}
!89 = distinct !{!89, !11, !90}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = distinct !{!91, !11, !92, !90}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_: %__dest"}
!95 = distinct !{!95, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZSt19__relocate_object_aIN5boost10stacktrace5frameES2_SaIS2_EEvPT_PT0_RT1_: %__orig"}
!98 = distinct !{!98, !11, !90}
!99 = distinct !{!99, !11, !92, !90}
!100 = distinct !{!100, !11}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN5boost10stacktrace6detail12to_dec_arrayEm: %agg.result"}
!103 = distinct !{!103, !"_ZN5boost10stacktrace6detail12to_dec_arrayEm"}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = !{!107, !14, i64 0}
!107 = !{!"_ZTSN5boost10stacktrace5frameE", !14, i64 0}
!108 = distinct !{!108, !11}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN5boost10stacktrace6detail12to_hex_arrayEPKv: %agg.result"}
!111 = distinct !{!111, !"_ZN5boost10stacktrace6detail12to_hex_arrayEPKv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_: %agg.result"}
!114 = distinct !{!114, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEENS_5arrayIcLm19EEET_"}
!115 = !{!113, !110}
!116 = !{!117, !14, i64 0}
!117 = !{!"_ZTSN5boost10stacktrace6detail20location_from_symbolE", !118, i64 0}
!118 = !{!"_ZTS7Dl_info", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!119 = !{!23, !23, i64 0}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK5boost10stacktrace5frame4nameB5cxx11Ev: %agg.result"}
!122 = distinct !{!122, !"_ZNK5boost10stacktrace5frame4nameB5cxx11Ev"}
!123 = !{!124, !121}
!124 = distinct !{!124, !125, !"_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv: %agg.result"}
!125 = distinct !{!125, !"_ZN5boost10stacktrace6detail9name_implB5cxx11EPKv"}
!126 = !{!127, !14, i64 208}
!127 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !14, i64 208}
