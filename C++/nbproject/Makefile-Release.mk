#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-MacOSX
CND_DLIB_EXT=dylib
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/1472/FileSizePrac.o \
	${OBJECTDIR}/_ext/1472/Letters.Are.numbers.In.ASCII.o \
	${OBJECTDIR}/0_Temperature_Converter.o \
	${OBJECTDIR}/0_Temperature_Converter_Solution.o \
	${OBJECTDIR}/18_BinaryTrees.o \
	${OBJECTDIR}/Algorithm_Redesign_For_Performance.o \
	${OBJECTDIR}/Arrays.o \
	${OBJECTDIR}/ArraysCCPIns.o \
	${OBJECTDIR}/ArraysToFunctions.o \
	${OBJECTDIR}/Arrays_1.o \
	${OBJECTDIR}/Average.o \
	${OBJECTDIR}/BBD_Assessment/main.o \
	${OBJECTDIR}/Big,\ Bigger,\ Biggest.o \
	${OBJECTDIR}/BiggestValue.o \
	${OBJECTDIR}/BinaryTrees.o \
	${OBJECTDIR}/Binary_Tress\(Mine\).o \
	${OBJECTDIR}/BitWiseOperators.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/CardTools.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/main.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.o \
	${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/main.o \
	${OBJECTDIR}/Booleans.o \
	${OBJECTDIR}/Btree.o \
	${OBJECTDIR}/Btree_Main.o \
	${OBJECTDIR}/BubbleSort.o \
	${OBJECTDIR}/Bug2.o \
	${OBJECTDIR}/C++Refreshers/Refresher.o \
	${OBJECTDIR}/C++Refreshers/main.o \
	${OBJECTDIR}/CStringFunctions.o \
	${OBJECTDIR}/CStringFunctions_2.o \
	${OBJECTDIR}/CStrings.o \
	${OBJECTDIR}/Calculator.o \
	${OBJECTDIR}/CircuitBoardPrice.o \
	${OBJECTDIR}/Classes.and.Operators.o \
	${OBJECTDIR}/Classes.o \
	${OBJECTDIR}/Classes_2.o \
	${OBJECTDIR}/Classes_3.o \
	${OBJECTDIR}/CommandLineArguments\(Full\ version\ of\ main\).o \
	${OBJECTDIR}/CommandLineArguments_2.o \
	${OBJECTDIR}/CommaneLineArguments.o \
	${OBJECTDIR}/Constant.Pointers.o \
	${OBJECTDIR}/ContinueStatement.o \
	${OBJECTDIR}/Converging_Pointer.o \
	${OBJECTDIR}/Conversion.o \
	${OBJECTDIR}/Copy_Over.o \
	${OBJECTDIR}/CppApplication_1/main.o \
	${OBJECTDIR}/CyborgDataTypeSizes.o \
	${OBJECTDIR}/DataTypeAllocation.o \
	${OBJECTDIR}/DistancePerGallon.o \
	${OBJECTDIR}/EgoGreeting.o \
	${OBJECTDIR}/EnergyDrinkConsumption.o \
	${OBJECTDIR}/Enums.o \
	${OBJECTDIR}/Evil\ Monkeys/main.o \
	${OBJECTDIR}/Exception_1.o \
	${OBJECTDIR}/Exceptions.o \
	${OBJECTDIR}/Exceptions_2.o \
	${OBJECTDIR}/Exceptions_3.o \
	${OBJECTDIR}/Exceptions_4.o \
	${OBJECTDIR}/Exceptions_BadException.o \
	${OBJECTDIR}/Exceptions_CategorizingExceptions.o \
	${OBJECTDIR}/Exceptions_ComplexThrowsAndCatches.o \
	${OBJECTDIR}/Exceptions_EmptyThrowSpecification.o \
	${OBJECTDIR}/Exceptions_ExceptionObjects.o \
	${OBJECTDIR}/Exceptions_Stack.o \
	${OBJECTDIR}/Exceptions_Stack_Exceptions.o \
	${OBJECTDIR}/Exceptions_Stack_Main.o \
	${OBJECTDIR}/Exceptions_UnreachableExceptions.o \
	${OBJECTDIR}/Fibonacci.o \
	${OBJECTDIR}/FileSize.o \
	${OBJECTDIR}/FileSizePrac.o \
	${OBJECTDIR}/FileSizeSolution.o \
	${OBJECTDIR}/Files.and.C++.o \
	${OBJECTDIR}/Files.o \
	${OBJECTDIR}/FilesSimpler.o \
	${OBJECTDIR}/Fixed_Points.o \
	${OBJECTDIR}/Functions.o \
	${OBJECTDIR}/FunctionsCCIns.o \
	${OBJECTDIR}/Go_Forth_And_Multiply.o \
	${OBJECTDIR}/Guessing_game.o \
	${OBJECTDIR}/Guessing_game_Web.o \
	${OBJECTDIR}/If_Statements.o \
	${OBJECTDIR}/InLine_Functions.o \
	${OBJECTDIR}/Include.Examples/StdLib/accum.o \
	${OBJECTDIR}/Include.Examples/StdLib/adj_diff.o \
	${OBJECTDIR}/Include.Examples/StdLib/advance.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg1.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg2.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg3.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg4.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg5.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg6.o \
	${OBJECTDIR}/Include.Examples/StdLib/alg7.o \
	${OBJECTDIR}/Include.Examples/StdLib/auto_ptr.o \
	${OBJECTDIR}/Include.Examples/StdLib/b_search.o \
	${OBJECTDIR}/Include.Examples/StdLib/binders.o \
	${OBJECTDIR}/Include.Examples/StdLib/bitset.o \
	${OBJECTDIR}/Include.Examples/StdLib/calc.o \
	${OBJECTDIR}/Include.Examples/StdLib/codecvt.o \
	${OBJECTDIR}/Include.Examples/StdLib/collate.o \
	${OBJECTDIR}/Include.Examples/StdLib/complex.o \
	${OBJECTDIR}/Include.Examples/StdLib/complx.o \
	${OBJECTDIR}/Include.Examples/StdLib/concord.o \
	${OBJECTDIR}/Include.Examples/StdLib/copyex.o \
	${OBJECTDIR}/Include.Examples/StdLib/count.o \
	${OBJECTDIR}/Include.Examples/StdLib/ctype.o \
	${OBJECTDIR}/Include.Examples/StdLib/deque.o \
	${OBJECTDIR}/Include.Examples/StdLib/distance.o \
	${OBJECTDIR}/Include.Examples/StdLib/eqlrange.o \
	${OBJECTDIR}/Include.Examples/StdLib/equal.o \
	${OBJECTDIR}/Include.Examples/StdLib/except.o \
	${OBJECTDIR}/Include.Examples/StdLib/exceptn.o \
	${OBJECTDIR}/Include.Examples/StdLib/filebuf.o \
	${OBJECTDIR}/Include.Examples/StdLib/fill.o \
	${OBJECTDIR}/Include.Examples/StdLib/find.o \
	${OBJECTDIR}/Include.Examples/StdLib/find_end.o \
	${OBJECTDIR}/Include.Examples/StdLib/find_f_o.o \
	${OBJECTDIR}/Include.Examples/StdLib/for_each.o \
	${OBJECTDIR}/Include.Examples/StdLib/fstream.o \
	${OBJECTDIR}/Include.Examples/StdLib/funct_ob.o \
	${OBJECTDIR}/Include.Examples/StdLib/generate.o \
	${OBJECTDIR}/Include.Examples/StdLib/graph.o \
	${OBJECTDIR}/Include.Examples/StdLib/gslc_ary.o \
	${OBJECTDIR}/Include.Examples/StdLib/gslice.o \
	${OBJECTDIR}/Include.Examples/StdLib/hasfacet.o \
	${OBJECTDIR}/Include.Examples/StdLib/heap_ops.o \
	${OBJECTDIR}/Include.Examples/StdLib/icecream.o \
	${OBJECTDIR}/Include.Examples/StdLib/ifstream.o \
	${OBJECTDIR}/Include.Examples/StdLib/includes.o \
	${OBJECTDIR}/Include.Examples/StdLib/indr_ary.o \
	${OBJECTDIR}/Include.Examples/StdLib/inr_prod.o \
	${OBJECTDIR}/Include.Examples/StdLib/ins_itr.o \
	${OBJECTDIR}/Include.Examples/StdLib/io_iter.o \
	${OBJECTDIR}/Include.Examples/StdLib/isalnum.o \
	${OBJECTDIR}/Include.Examples/StdLib/istbufit.o \
	${OBJECTDIR}/Include.Examples/StdLib/istngstr.o \
	${OBJECTDIR}/Include.Examples/StdLib/istream1.o \
	${OBJECTDIR}/Include.Examples/StdLib/istrstre.o \
	${OBJECTDIR}/Include.Examples/StdLib/lex_comp.o \
	${OBJECTDIR}/Include.Examples/StdLib/limits.o \
	${OBJECTDIR}/Include.Examples/StdLib/list.o \
	${OBJECTDIR}/Include.Examples/StdLib/locale.o \
	${OBJECTDIR}/Include.Examples/StdLib/map.o \
	${OBJECTDIR}/Include.Examples/StdLib/mask_ary.o \
	${OBJECTDIR}/Include.Examples/StdLib/max.o \
	${OBJECTDIR}/Include.Examples/StdLib/max_elem.o \
	${OBJECTDIR}/Include.Examples/StdLib/memfunc.o \
	${OBJECTDIR}/Include.Examples/StdLib/memfunrf.o \
	${OBJECTDIR}/Include.Examples/StdLib/merge.o \
	${OBJECTDIR}/Include.Examples/StdLib/messages.o \
	${OBJECTDIR}/Include.Examples/StdLib/mismatch.o \
	${OBJECTDIR}/Include.Examples/StdLib/moneyget.o \
	${OBJECTDIR}/Include.Examples/StdLib/moneyput.o \
	${OBJECTDIR}/Include.Examples/StdLib/monpunct.o \
	${OBJECTDIR}/Include.Examples/StdLib/multimap.o \
	${OBJECTDIR}/Include.Examples/StdLib/multiset.o \
	${OBJECTDIR}/Include.Examples/StdLib/mutex.o \
	${OBJECTDIR}/Include.Examples/StdLib/negator.o \
	${OBJECTDIR}/Include.Examples/StdLib/nthelem.o \
	${OBJECTDIR}/Include.Examples/StdLib/numget.o \
	${OBJECTDIR}/Include.Examples/StdLib/numpunct.o \
	${OBJECTDIR}/Include.Examples/StdLib/numput.o \
	${OBJECTDIR}/Include.Examples/StdLib/ostbufit.o \
	${OBJECTDIR}/Include.Examples/StdLib/ostream1.o \
	${OBJECTDIR}/Include.Examples/StdLib/ostream2.o \
	${OBJECTDIR}/Include.Examples/StdLib/p_queue.o \
	${OBJECTDIR}/Include.Examples/StdLib/partsort.o \
	${OBJECTDIR}/Include.Examples/StdLib/partsum.o \
	${OBJECTDIR}/Include.Examples/StdLib/permute.o \
	${OBJECTDIR}/Include.Examples/StdLib/pnt2fnct.o \
	${OBJECTDIR}/Include.Examples/StdLib/prtition.o \
	${OBJECTDIR}/Include.Examples/StdLib/queue.o \
	${OBJECTDIR}/Include.Examples/StdLib/radix.o \
	${OBJECTDIR}/Include.Examples/StdLib/remove.o \
	${OBJECTDIR}/Include.Examples/StdLib/replace.o \
	${OBJECTDIR}/Include.Examples/StdLib/rev_itr.o \
	${OBJECTDIR}/Include.Examples/StdLib/reverse.o \
	${OBJECTDIR}/Include.Examples/StdLib/rndshufl.o \
	${OBJECTDIR}/Include.Examples/StdLib/rotate.o \
	${OBJECTDIR}/Include.Examples/StdLib/rwstdmsg.o \
	${OBJECTDIR}/Include.Examples/StdLib/search.o \
	${OBJECTDIR}/Include.Examples/StdLib/set_diff.o \
	${OBJECTDIR}/Include.Examples/StdLib/set_intr.o \
	${OBJECTDIR}/Include.Examples/StdLib/set_s_di.o \
	${OBJECTDIR}/Include.Examples/StdLib/set_unin.o \
	${OBJECTDIR}/Include.Examples/StdLib/setex.o \
	${OBJECTDIR}/Include.Examples/StdLib/sieve.o \
	${OBJECTDIR}/Include.Examples/StdLib/slc_ary.o \
	${OBJECTDIR}/Include.Examples/StdLib/slice.o \
	${OBJECTDIR}/Include.Examples/StdLib/sort.o \
	${OBJECTDIR}/Include.Examples/StdLib/spell.o \
	${OBJECTDIR}/Include.Examples/StdLib/stack.o \
	${OBJECTDIR}/Include.Examples/StdLib/stngstre.o \
	${OBJECTDIR}/Include.Examples/StdLib/stocks.o \
	${OBJECTDIR}/Include.Examples/StdLib/string.o \
	${OBJECTDIR}/Include.Examples/StdLib/strngbuf.o \
	${OBJECTDIR}/Include.Examples/StdLib/strstrbf.o \
	${OBJECTDIR}/Include.Examples/StdLib/strstrea.o \
	${OBJECTDIR}/Include.Examples/StdLib/swap.o \
	${OBJECTDIR}/Include.Examples/StdLib/tele.o \
	${OBJECTDIR}/Include.Examples/StdLib/timeget.o \
	${OBJECTDIR}/Include.Examples/StdLib/timeput.o \
	${OBJECTDIR}/Include.Examples/StdLib/toupper.o \
	${OBJECTDIR}/Include.Examples/StdLib/trnsform.o \
	${OBJECTDIR}/Include.Examples/StdLib/ul_bound.o \
	${OBJECTDIR}/Include.Examples/StdLib/unique.o \
	${OBJECTDIR}/Include.Examples/StdLib/usefacet.o \
	${OBJECTDIR}/Include.Examples/StdLib/valarray.o \
	${OBJECTDIR}/Include.Examples/StdLib/vector.o \
	${OBJECTDIR}/Include.Examples/StdLib/widwork.o \
	${OBJECTDIR}/Inheritance\ \(2\).o \
	${OBJECTDIR}/Inheritance.o \
	${OBJECTDIR}/InheritanceTest.o \
	${OBJECTDIR}/Initialization_Lists.o \
	${OBJECTDIR}/IntStack.o \
	${OBJECTDIR}/Keylogger.o \
	${OBJECTDIR}/LandCalculation.o \
	${OBJECTDIR}/LargestNumber.o \
	${OBJECTDIR}/LargestOfThree.o \
	${OBJECTDIR}/LargestOfTwo.o \
	${OBJECTDIR}/Largest_value.o \
	${OBJECTDIR}/Letters.Are.numbers.In.ASCII.o \
	${OBJECTDIR}/LineCount.o \
	${OBJECTDIR}/LineCountSolution.o \
	${OBJECTDIR}/Linear.Search.o \
	${OBJECTDIR}/LinkLists.o \
	${OBJECTDIR}/LinkLists_2.o \
	${OBJECTDIR}/LinkLists_Mine.o \
	${OBJECTDIR}/Loops.o \
	${OBJECTDIR}/Manipulating.Keyboard.o \
	${OBJECTDIR}/MathStack.o \
	${OBJECTDIR}/MemoryLeaks.o \
	${OBJECTDIR}/MemoryManagement.o \
	${OBJECTDIR}/MilesPerGallon.o \
	${OBJECTDIR}/NUmbeList_main.o \
	${OBJECTDIR}/Namespaces.o \
	${OBJECTDIR}/NumberList.o \
	${OBJECTDIR}/OOP_CopyingConstructors.o \
	${OBJECTDIR}/OceaLevels.o \
	${OBJECTDIR}/OddsAndEvens.o \
	${OBJECTDIR}/OutPutOfAlgorithm_1.o \
	${OBJECTDIR}/OutPutOfAlgorithm_2.o \
	${OBJECTDIR}/ParenthesisValidatorCodeSchool/main.o \
	${OBJECTDIR}/Pattern_Matching.o \
	${OBJECTDIR}/PermutationSolution.o \
	${OBJECTDIR}/PointerSimpler.o \
	${OBJECTDIR}/PointerToPointers.o \
	${OBJECTDIR}/Pointer_Tests.o \
	${OBJECTDIR}/Pointers.and.Arrays3DPlus.o \
	${OBJECTDIR}/Pointers.and.Dynamic.memory.o \
	${OBJECTDIR}/Pointers.o \
	${OBJECTDIR}/PointersCCIns.o \
	${OBJECTDIR}/Pointers_2.o \
	${OBJECTDIR}/Pointers_3.o \
	${OBJECTDIR}/Pointers_Amorphous.o \
	${OBJECTDIR}/Powers.o \
	${OBJECTDIR}/PowersCCIns.o \
	${OBJECTDIR}/Precision.o \
	${OBJECTDIR}/Print_Even_Numbers.o \
	${OBJECTDIR}/Program10.1.o \
	${OBJECTDIR}/Question\ 6/Rational.o \
	${OBJECTDIR}/Question\ 6/main.o \
	${OBJECTDIR}/Random_Numbers.o \
	${OBJECTDIR}/Random_Numbers_2.o \
	${OBJECTDIR}/Randoms.o \
	${OBJECTDIR}/Recursion\ \(2\).o \
	${OBJECTDIR}/Recursion.o \
	${OBJECTDIR}/RecursionSolution.o \
	${OBJECTDIR}/Recursion_2.o \
	${OBJECTDIR}/Reference.Arguments.With.Pointers.o \
	${OBJECTDIR}/Reference.Arguments.o \
	${OBJECTDIR}/RestuarantBill.o \
	${OBJECTDIR}/Sales.Prediction.o \
	${OBJECTDIR}/Selection.o \
	${OBJECTDIR}/Selection_Sort.o \
	${OBJECTDIR}/ShuffleLeft.o \
	${OBJECTDIR}/Smallest\ _Value.o \
	${OBJECTDIR}/Stack_OOP_Mine.o \
	${OBJECTDIR}/Stack_OOP_Mine_Main.o \
	${OBJECTDIR}/Stack_Procedural_CPPIns.o \
	${OBJECTDIR}/Stack_Procedural_Mine.o \
	${OBJECTDIR}/Stack_Template.o \
	${OBJECTDIR}/Stack_Template_Main.o \
	${OBJECTDIR}/StadiumSeating.o \
	${OBJECTDIR}/Static_HowManyInstances.o \
	${OBJECTDIR}/Stock_Cost.o \
	${OBJECTDIR}/Strings.o \
	${OBJECTDIR}/Strings_BufferControl.o \
	${OBJECTDIR}/Strings_Comparisons.o \
	${OBJECTDIR}/Strings_ContentManipulation.o \
	${OBJECTDIR}/Strings_Searching.o \
	${OBJECTDIR}/Strings_SingleCharacterManipulation.o \
	${OBJECTDIR}/Strings_Size.o \
	${OBJECTDIR}/Strings_SubString.o \
	${OBJECTDIR}/Strings_push_back.o \
	${OBJECTDIR}/Structs.and.pointers.o \
	${OBJECTDIR}/Structs.o \
	${OBJECTDIR}/Structures.o \
	${OBJECTDIR}/StructuresCCIns.o \
	${OBJECTDIR}/Structures_2.o \
	${OBJECTDIR}/SumOfSubsequentValues.o \
	${OBJECTDIR}/Switch.o \
	${OBJECTDIR}/Taking\ User\ Input\ With\ Pointers.o \
	${OBJECTDIR}/Taking.Memory.o \
	${OBJECTDIR}/Tax.o \
	${OBJECTDIR}/TemplatesONSTLTemplates.o \
	${OBJECTDIR}/Tests/main.o \
	${OBJECTDIR}/The_Converging_Pointer_Algorithm.o \
	${OBJECTDIR}/The_Converging_Pointer_Algorithm_2.o \
	${OBJECTDIR}/Triagle.Pattern.o \
	${OBJECTDIR}/TriangularMatrices.o \
	${OBJECTDIR}/TypeCasting.o \
	${OBJECTDIR}/TypeConversionFlow.o \
	${OBJECTDIR}/Varaibles3DPlus.o \
	${OBJECTDIR}/VariableArgumentfunctions.o \
	${OBJECTDIR}/Variables.o \
	${OBJECTDIR}/Vectors.o \
	${OBJECTDIR}/beep.o \
	${OBJECTDIR}/cin.Function.o \
	${OBJECTDIR}/do.while.loop.o \
	${OBJECTDIR}/heap.o \
	${OBJECTDIR}/if.o \
	${OBJECTDIR}/ifC.o \
	${OBJECTDIR}/macshift.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/names.o \
	${OBJECTDIR}/positive3.o \
	${OBJECTDIR}/sizeofOperator.o \
	${OBJECTDIR}/stackmain.o \
	${OBJECTDIR}/while.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/c__

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/c__: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/c__ ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/1472/FileSizePrac.o: ../FileSizePrac.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1472
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1472/FileSizePrac.o ../FileSizePrac.cpp

${OBJECTDIR}/_ext/1472/Letters.Are.numbers.In.ASCII.o: ../Letters.Are.numbers.In.ASCII.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1472
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1472/Letters.Are.numbers.In.ASCII.o ../Letters.Are.numbers.In.ASCII.cpp

${OBJECTDIR}/0_Temperature_Converter.o: 0_Temperature_Converter.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/0_Temperature_Converter.o 0_Temperature_Converter.cpp

${OBJECTDIR}/0_Temperature_Converter_Solution.o: 0_Temperature_Converter_Solution.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/0_Temperature_Converter_Solution.o 0_Temperature_Converter_Solution.c

${OBJECTDIR}/18_BinaryTrees.o: 18_BinaryTrees.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/18_BinaryTrees.o 18_BinaryTrees.cpp

${OBJECTDIR}/Algorithm_Redesign_For_Performance.o: Algorithm_Redesign_For_Performance.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Algorithm_Redesign_For_Performance.o Algorithm_Redesign_For_Performance.cpp

${OBJECTDIR}/Arrays.o: Arrays.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arrays.o Arrays.cpp

${OBJECTDIR}/ArraysCCPIns.o: ArraysCCPIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ArraysCCPIns.o ArraysCCPIns.cpp

${OBJECTDIR}/ArraysToFunctions.o: ArraysToFunctions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ArraysToFunctions.o ArraysToFunctions.cpp

${OBJECTDIR}/Arrays_1.o: Arrays_1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Arrays_1.o Arrays_1.cpp

${OBJECTDIR}/Average.o: Average.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Average.o Average.c

${OBJECTDIR}/BBD_Assessment/main.o: BBD_Assessment/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/BBD_Assessment
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BBD_Assessment/main.o BBD_Assessment/main.cpp

.NO_PARALLEL:${OBJECTDIR}/Big,\ Bigger,\ Biggest.o
${OBJECTDIR}/Big,\ Bigger,\ Biggest.o: Big,\ Bigger,\ Biggest.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Big,\ Bigger,\ Biggest.o Big,\ Bigger,\ Biggest.cpp

${OBJECTDIR}/BiggestValue.o: BiggestValue.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BiggestValue.o BiggestValue.cpp

${OBJECTDIR}/BinaryTrees.o: BinaryTrees.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BinaryTrees.o BinaryTrees.cpp

${OBJECTDIR}/Binary_Tress\(Mine\).o: Binary_Tress\(Mine\).cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Binary_Tress\(Mine\).o Binary_Tress\(Mine\).cpp

${OBJECTDIR}/BitWiseOperators.o: BitWiseOperators.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BitWiseOperators.o BitWiseOperators.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/CardTools.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/CardTools.o: Black\ Jack\ COS\ 132\ Final_Demo/CardTools.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/CardTools.o Black\ Jack\ COS\ 132\ Final_Demo/CardTools.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.o: Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo/Project
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.o Black\ Jack\ COS\ 132\ Final_Demo/Project/CardTools.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/main.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/main.o: Black\ Jack\ COS\ 132\ Final_Demo/Project/main.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo/Project
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project/main.o Black\ Jack\ COS\ 132\ Final_Demo/Project/main.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.o: Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo/Project_u11097966
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.o Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/CardTools.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.o: Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo/Project_u11097966
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.o Black\ Jack\ COS\ 132\ Final_Demo/Project_u11097966/main.cpp

.NO_PARALLEL:${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/main.o
${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/main.o: Black\ Jack\ COS\ 132\ Final_Demo/main.cpp 
	${MKDIR} -p ${OBJECTDIR} Final_Demo
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Black\ Jack\ COS\ 132\ Final_Demo/main.o Black\ Jack\ COS\ 132\ Final_Demo/main.cpp

${OBJECTDIR}/Booleans.o: Booleans.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Booleans.o Booleans.cpp

${OBJECTDIR}/Btree.o: Btree.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Btree.o Btree.cpp

${OBJECTDIR}/Btree_Main.o: Btree_Main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Btree_Main.o Btree_Main.cpp

${OBJECTDIR}/BubbleSort.o: BubbleSort.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BubbleSort.o BubbleSort.cpp

${OBJECTDIR}/Bug2.o: Bug2.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Bug2.o Bug2.c

${OBJECTDIR}/C++Refreshers/Refresher.o: C++Refreshers/Refresher.cpp 
	${MKDIR} -p ${OBJECTDIR}/C++Refreshers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C++Refreshers/Refresher.o C++Refreshers/Refresher.cpp

${OBJECTDIR}/C++Refreshers/main.o: C++Refreshers/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/C++Refreshers
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/C++Refreshers/main.o C++Refreshers/main.cpp

${OBJECTDIR}/CStringFunctions.o: CStringFunctions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CStringFunctions.o CStringFunctions.cpp

${OBJECTDIR}/CStringFunctions_2.o: CStringFunctions_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CStringFunctions_2.o CStringFunctions_2.cpp

${OBJECTDIR}/CStrings.o: CStrings.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CStrings.o CStrings.cpp

${OBJECTDIR}/Calculator.o: Calculator.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Calculator.o Calculator.cpp

${OBJECTDIR}/CircuitBoardPrice.o: CircuitBoardPrice.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CircuitBoardPrice.o CircuitBoardPrice.cpp

${OBJECTDIR}/Classes.and.Operators.o: Classes.and.Operators.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Classes.and.Operators.o Classes.and.Operators.cpp

${OBJECTDIR}/Classes.o: Classes.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Classes.o Classes.cpp

${OBJECTDIR}/Classes_2.o: Classes_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Classes_2.o Classes_2.cpp

${OBJECTDIR}/Classes_3.o: Classes_3.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Classes_3.o Classes_3.cpp

.NO_PARALLEL:${OBJECTDIR}/CommandLineArguments\(Full\ version\ of\ main\).o
${OBJECTDIR}/CommandLineArguments\(Full\ version\ of\ main\).o: CommandLineArguments\(Full\ version\ of\ main\).cpp 
	${MKDIR} -p ${OBJECTDIR} main
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CommandLineArguments\(Full\ version\ of\ main\).o CommandLineArguments\(Full\ version\ of\ main\).cpp

${OBJECTDIR}/CommandLineArguments_2.o: CommandLineArguments_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CommandLineArguments_2.o CommandLineArguments_2.cpp

${OBJECTDIR}/CommaneLineArguments.o: CommaneLineArguments.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CommaneLineArguments.o CommaneLineArguments.cpp

${OBJECTDIR}/Constant.Pointers.o: Constant.Pointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Constant.Pointers.o Constant.Pointers.cpp

${OBJECTDIR}/ContinueStatement.o: ContinueStatement.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ContinueStatement.o ContinueStatement.cpp

${OBJECTDIR}/Converging_Pointer.o: Converging_Pointer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Converging_Pointer.o Converging_Pointer.cpp

${OBJECTDIR}/Conversion.o: Conversion.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Conversion.o Conversion.cpp

${OBJECTDIR}/Copy_Over.o: Copy_Over.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Copy_Over.o Copy_Over.cpp

${OBJECTDIR}/CppApplication_1/main.o: CppApplication_1/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/CppApplication_1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CppApplication_1/main.o CppApplication_1/main.cpp

${OBJECTDIR}/CyborgDataTypeSizes.o: CyborgDataTypeSizes.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CyborgDataTypeSizes.o CyborgDataTypeSizes.cpp

${OBJECTDIR}/DataTypeAllocation.o: DataTypeAllocation.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/DataTypeAllocation.o DataTypeAllocation.cpp

${OBJECTDIR}/DistancePerGallon.o: DistancePerGallon.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/DistancePerGallon.o DistancePerGallon.cpp

${OBJECTDIR}/EgoGreeting.o: EgoGreeting.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/EgoGreeting.o EgoGreeting.cpp

${OBJECTDIR}/EnergyDrinkConsumption.o: EnergyDrinkConsumption.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/EnergyDrinkConsumption.o EnergyDrinkConsumption.cpp

${OBJECTDIR}/Enums.o: Enums.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Enums.o Enums.cpp

.NO_PARALLEL:${OBJECTDIR}/Evil\ Monkeys/main.o
${OBJECTDIR}/Evil\ Monkeys/main.o: Evil\ Monkeys/main.cpp 
	${MKDIR} -p ${OBJECTDIR} Monkeys
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Evil\ Monkeys/main.o Evil\ Monkeys/main.cpp

${OBJECTDIR}/Exception_1.o: Exception_1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exception_1.o Exception_1.cpp

${OBJECTDIR}/Exceptions.o: Exceptions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions.o Exceptions.cpp

${OBJECTDIR}/Exceptions_2.o: Exceptions_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_2.o Exceptions_2.cpp

${OBJECTDIR}/Exceptions_3.o: Exceptions_3.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_3.o Exceptions_3.cpp

${OBJECTDIR}/Exceptions_4.o: Exceptions_4.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_4.o Exceptions_4.cpp

${OBJECTDIR}/Exceptions_BadException.o: Exceptions_BadException.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_BadException.o Exceptions_BadException.cpp

${OBJECTDIR}/Exceptions_CategorizingExceptions.o: Exceptions_CategorizingExceptions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_CategorizingExceptions.o Exceptions_CategorizingExceptions.cpp

${OBJECTDIR}/Exceptions_ComplexThrowsAndCatches.o: Exceptions_ComplexThrowsAndCatches.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_ComplexThrowsAndCatches.o Exceptions_ComplexThrowsAndCatches.cpp

${OBJECTDIR}/Exceptions_EmptyThrowSpecification.o: Exceptions_EmptyThrowSpecification.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_EmptyThrowSpecification.o Exceptions_EmptyThrowSpecification.cpp

${OBJECTDIR}/Exceptions_ExceptionObjects.o: Exceptions_ExceptionObjects.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_ExceptionObjects.o Exceptions_ExceptionObjects.cpp

${OBJECTDIR}/Exceptions_Stack.o: Exceptions_Stack.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_Stack.o Exceptions_Stack.cpp

${OBJECTDIR}/Exceptions_Stack_Exceptions.o: Exceptions_Stack_Exceptions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_Stack_Exceptions.o Exceptions_Stack_Exceptions.cpp

${OBJECTDIR}/Exceptions_Stack_Main.o: Exceptions_Stack_Main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_Stack_Main.o Exceptions_Stack_Main.cpp

${OBJECTDIR}/Exceptions_UnreachableExceptions.o: Exceptions_UnreachableExceptions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Exceptions_UnreachableExceptions.o Exceptions_UnreachableExceptions.cpp

${OBJECTDIR}/Fibonacci.o: Fibonacci.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Fibonacci.o Fibonacci.cpp

${OBJECTDIR}/FileSize.o: FileSize.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FileSize.o FileSize.cpp

${OBJECTDIR}/FileSizePrac.o: FileSizePrac.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FileSizePrac.o FileSizePrac.cpp

${OBJECTDIR}/FileSizeSolution.o: FileSizeSolution.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FileSizeSolution.o FileSizeSolution.cpp

${OBJECTDIR}/Files.and.C++.o: Files.and.C++.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Files.and.C++.o Files.and.C++.cpp

${OBJECTDIR}/Files.o: Files.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Files.o Files.cpp

${OBJECTDIR}/FilesSimpler.o: FilesSimpler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FilesSimpler.o FilesSimpler.cpp

${OBJECTDIR}/Fixed_Points.o: Fixed_Points.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Fixed_Points.o Fixed_Points.cpp

${OBJECTDIR}/Functions.o: Functions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Functions.o Functions.cpp

${OBJECTDIR}/FunctionsCCIns.o: FunctionsCCIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FunctionsCCIns.o FunctionsCCIns.cpp

${OBJECTDIR}/Go_Forth_And_Multiply.o: Go_Forth_And_Multiply.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Go_Forth_And_Multiply.o Go_Forth_And_Multiply.cpp

${OBJECTDIR}/Guessing_game.o: Guessing_game.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Guessing_game.o Guessing_game.cpp

${OBJECTDIR}/Guessing_game_Web.o: Guessing_game_Web.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Guessing_game_Web.o Guessing_game_Web.cpp

${OBJECTDIR}/If_Statements.o: If_Statements.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/If_Statements.o If_Statements.cpp

${OBJECTDIR}/InLine_Functions.o: InLine_Functions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/InLine_Functions.o InLine_Functions.cpp

${OBJECTDIR}/Include.Examples/StdLib/accum.o: Include.Examples/StdLib/accum.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/accum.o Include.Examples/StdLib/accum.cpp

${OBJECTDIR}/Include.Examples/StdLib/adj_diff.o: Include.Examples/StdLib/adj_diff.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/adj_diff.o Include.Examples/StdLib/adj_diff.cpp

${OBJECTDIR}/Include.Examples/StdLib/advance.o: Include.Examples/StdLib/advance.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/advance.o Include.Examples/StdLib/advance.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg1.o: Include.Examples/StdLib/alg1.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg1.o Include.Examples/StdLib/alg1.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg2.o: Include.Examples/StdLib/alg2.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg2.o Include.Examples/StdLib/alg2.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg3.o: Include.Examples/StdLib/alg3.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg3.o Include.Examples/StdLib/alg3.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg4.o: Include.Examples/StdLib/alg4.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg4.o Include.Examples/StdLib/alg4.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg5.o: Include.Examples/StdLib/alg5.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg5.o Include.Examples/StdLib/alg5.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg6.o: Include.Examples/StdLib/alg6.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg6.o Include.Examples/StdLib/alg6.cpp

${OBJECTDIR}/Include.Examples/StdLib/alg7.o: Include.Examples/StdLib/alg7.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/alg7.o Include.Examples/StdLib/alg7.cpp

${OBJECTDIR}/Include.Examples/StdLib/auto_ptr.o: Include.Examples/StdLib/auto_ptr.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/auto_ptr.o Include.Examples/StdLib/auto_ptr.cpp

${OBJECTDIR}/Include.Examples/StdLib/b_search.o: Include.Examples/StdLib/b_search.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/b_search.o Include.Examples/StdLib/b_search.cpp

${OBJECTDIR}/Include.Examples/StdLib/binders.o: Include.Examples/StdLib/binders.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/binders.o Include.Examples/StdLib/binders.cpp

${OBJECTDIR}/Include.Examples/StdLib/bitset.o: Include.Examples/StdLib/bitset.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/bitset.o Include.Examples/StdLib/bitset.cpp

${OBJECTDIR}/Include.Examples/StdLib/calc.o: Include.Examples/StdLib/calc.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/calc.o Include.Examples/StdLib/calc.cpp

${OBJECTDIR}/Include.Examples/StdLib/codecvt.o: Include.Examples/StdLib/codecvt.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/codecvt.o Include.Examples/StdLib/codecvt.cpp

${OBJECTDIR}/Include.Examples/StdLib/collate.o: Include.Examples/StdLib/collate.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/collate.o Include.Examples/StdLib/collate.cpp

${OBJECTDIR}/Include.Examples/StdLib/complex.o: Include.Examples/StdLib/complex.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/complex.o Include.Examples/StdLib/complex.cpp

${OBJECTDIR}/Include.Examples/StdLib/complx.o: Include.Examples/StdLib/complx.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/complx.o Include.Examples/StdLib/complx.cpp

${OBJECTDIR}/Include.Examples/StdLib/concord.o: Include.Examples/StdLib/concord.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/concord.o Include.Examples/StdLib/concord.cpp

${OBJECTDIR}/Include.Examples/StdLib/copyex.o: Include.Examples/StdLib/copyex.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/copyex.o Include.Examples/StdLib/copyex.cpp

${OBJECTDIR}/Include.Examples/StdLib/count.o: Include.Examples/StdLib/count.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/count.o Include.Examples/StdLib/count.cpp

${OBJECTDIR}/Include.Examples/StdLib/ctype.o: Include.Examples/StdLib/ctype.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ctype.o Include.Examples/StdLib/ctype.cpp

${OBJECTDIR}/Include.Examples/StdLib/deque.o: Include.Examples/StdLib/deque.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/deque.o Include.Examples/StdLib/deque.cpp

${OBJECTDIR}/Include.Examples/StdLib/distance.o: Include.Examples/StdLib/distance.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/distance.o Include.Examples/StdLib/distance.cpp

${OBJECTDIR}/Include.Examples/StdLib/eqlrange.o: Include.Examples/StdLib/eqlrange.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/eqlrange.o Include.Examples/StdLib/eqlrange.cpp

${OBJECTDIR}/Include.Examples/StdLib/equal.o: Include.Examples/StdLib/equal.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/equal.o Include.Examples/StdLib/equal.cpp

${OBJECTDIR}/Include.Examples/StdLib/except.o: Include.Examples/StdLib/except.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/except.o Include.Examples/StdLib/except.cpp

${OBJECTDIR}/Include.Examples/StdLib/exceptn.o: Include.Examples/StdLib/exceptn.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/exceptn.o Include.Examples/StdLib/exceptn.cpp

${OBJECTDIR}/Include.Examples/StdLib/filebuf.o: Include.Examples/StdLib/filebuf.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/filebuf.o Include.Examples/StdLib/filebuf.cpp

${OBJECTDIR}/Include.Examples/StdLib/fill.o: Include.Examples/StdLib/fill.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/fill.o Include.Examples/StdLib/fill.cpp

${OBJECTDIR}/Include.Examples/StdLib/find.o: Include.Examples/StdLib/find.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/find.o Include.Examples/StdLib/find.cpp

${OBJECTDIR}/Include.Examples/StdLib/find_end.o: Include.Examples/StdLib/find_end.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/find_end.o Include.Examples/StdLib/find_end.cpp

${OBJECTDIR}/Include.Examples/StdLib/find_f_o.o: Include.Examples/StdLib/find_f_o.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/find_f_o.o Include.Examples/StdLib/find_f_o.cpp

${OBJECTDIR}/Include.Examples/StdLib/for_each.o: Include.Examples/StdLib/for_each.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/for_each.o Include.Examples/StdLib/for_each.cpp

${OBJECTDIR}/Include.Examples/StdLib/fstream.o: Include.Examples/StdLib/fstream.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/fstream.o Include.Examples/StdLib/fstream.cpp

${OBJECTDIR}/Include.Examples/StdLib/funct_ob.o: Include.Examples/StdLib/funct_ob.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/funct_ob.o Include.Examples/StdLib/funct_ob.cpp

${OBJECTDIR}/Include.Examples/StdLib/generate.o: Include.Examples/StdLib/generate.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/generate.o Include.Examples/StdLib/generate.cpp

${OBJECTDIR}/Include.Examples/StdLib/graph.o: Include.Examples/StdLib/graph.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/graph.o Include.Examples/StdLib/graph.cpp

${OBJECTDIR}/Include.Examples/StdLib/gslc_ary.o: Include.Examples/StdLib/gslc_ary.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/gslc_ary.o Include.Examples/StdLib/gslc_ary.cpp

${OBJECTDIR}/Include.Examples/StdLib/gslice.o: Include.Examples/StdLib/gslice.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/gslice.o Include.Examples/StdLib/gslice.cpp

${OBJECTDIR}/Include.Examples/StdLib/hasfacet.o: Include.Examples/StdLib/hasfacet.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/hasfacet.o Include.Examples/StdLib/hasfacet.cpp

${OBJECTDIR}/Include.Examples/StdLib/heap_ops.o: Include.Examples/StdLib/heap_ops.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/heap_ops.o Include.Examples/StdLib/heap_ops.cpp

${OBJECTDIR}/Include.Examples/StdLib/icecream.o: Include.Examples/StdLib/icecream.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/icecream.o Include.Examples/StdLib/icecream.cpp

${OBJECTDIR}/Include.Examples/StdLib/ifstream.o: Include.Examples/StdLib/ifstream.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ifstream.o Include.Examples/StdLib/ifstream.cpp

${OBJECTDIR}/Include.Examples/StdLib/includes.o: Include.Examples/StdLib/includes.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/includes.o Include.Examples/StdLib/includes.cpp

${OBJECTDIR}/Include.Examples/StdLib/indr_ary.o: Include.Examples/StdLib/indr_ary.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/indr_ary.o Include.Examples/StdLib/indr_ary.cpp

${OBJECTDIR}/Include.Examples/StdLib/inr_prod.o: Include.Examples/StdLib/inr_prod.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/inr_prod.o Include.Examples/StdLib/inr_prod.cpp

${OBJECTDIR}/Include.Examples/StdLib/ins_itr.o: Include.Examples/StdLib/ins_itr.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ins_itr.o Include.Examples/StdLib/ins_itr.cpp

${OBJECTDIR}/Include.Examples/StdLib/io_iter.o: Include.Examples/StdLib/io_iter.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/io_iter.o Include.Examples/StdLib/io_iter.cpp

${OBJECTDIR}/Include.Examples/StdLib/isalnum.o: Include.Examples/StdLib/isalnum.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/isalnum.o Include.Examples/StdLib/isalnum.cpp

${OBJECTDIR}/Include.Examples/StdLib/istbufit.o: Include.Examples/StdLib/istbufit.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/istbufit.o Include.Examples/StdLib/istbufit.cpp

${OBJECTDIR}/Include.Examples/StdLib/istngstr.o: Include.Examples/StdLib/istngstr.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/istngstr.o Include.Examples/StdLib/istngstr.cpp

${OBJECTDIR}/Include.Examples/StdLib/istream1.o: Include.Examples/StdLib/istream1.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/istream1.o Include.Examples/StdLib/istream1.cpp

${OBJECTDIR}/Include.Examples/StdLib/istrstre.o: Include.Examples/StdLib/istrstre.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/istrstre.o Include.Examples/StdLib/istrstre.cpp

${OBJECTDIR}/Include.Examples/StdLib/lex_comp.o: Include.Examples/StdLib/lex_comp.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/lex_comp.o Include.Examples/StdLib/lex_comp.cpp

${OBJECTDIR}/Include.Examples/StdLib/limits.o: Include.Examples/StdLib/limits.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/limits.o Include.Examples/StdLib/limits.cpp

${OBJECTDIR}/Include.Examples/StdLib/list.o: Include.Examples/StdLib/list.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/list.o Include.Examples/StdLib/list.cpp

${OBJECTDIR}/Include.Examples/StdLib/locale.o: Include.Examples/StdLib/locale.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/locale.o Include.Examples/StdLib/locale.cpp

${OBJECTDIR}/Include.Examples/StdLib/map.o: Include.Examples/StdLib/map.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/map.o Include.Examples/StdLib/map.cpp

${OBJECTDIR}/Include.Examples/StdLib/mask_ary.o: Include.Examples/StdLib/mask_ary.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/mask_ary.o Include.Examples/StdLib/mask_ary.cpp

${OBJECTDIR}/Include.Examples/StdLib/max.o: Include.Examples/StdLib/max.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/max.o Include.Examples/StdLib/max.cpp

${OBJECTDIR}/Include.Examples/StdLib/max_elem.o: Include.Examples/StdLib/max_elem.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/max_elem.o Include.Examples/StdLib/max_elem.cpp

${OBJECTDIR}/Include.Examples/StdLib/memfunc.o: Include.Examples/StdLib/memfunc.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/memfunc.o Include.Examples/StdLib/memfunc.cpp

${OBJECTDIR}/Include.Examples/StdLib/memfunrf.o: Include.Examples/StdLib/memfunrf.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/memfunrf.o Include.Examples/StdLib/memfunrf.cpp

${OBJECTDIR}/Include.Examples/StdLib/merge.o: Include.Examples/StdLib/merge.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/merge.o Include.Examples/StdLib/merge.cpp

${OBJECTDIR}/Include.Examples/StdLib/messages.o: Include.Examples/StdLib/messages.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/messages.o Include.Examples/StdLib/messages.cpp

${OBJECTDIR}/Include.Examples/StdLib/mismatch.o: Include.Examples/StdLib/mismatch.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/mismatch.o Include.Examples/StdLib/mismatch.cpp

${OBJECTDIR}/Include.Examples/StdLib/moneyget.o: Include.Examples/StdLib/moneyget.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/moneyget.o Include.Examples/StdLib/moneyget.cpp

${OBJECTDIR}/Include.Examples/StdLib/moneyput.o: Include.Examples/StdLib/moneyput.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/moneyput.o Include.Examples/StdLib/moneyput.cpp

${OBJECTDIR}/Include.Examples/StdLib/monpunct.o: Include.Examples/StdLib/monpunct.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/monpunct.o Include.Examples/StdLib/monpunct.cpp

${OBJECTDIR}/Include.Examples/StdLib/multimap.o: Include.Examples/StdLib/multimap.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/multimap.o Include.Examples/StdLib/multimap.cpp

${OBJECTDIR}/Include.Examples/StdLib/multiset.o: Include.Examples/StdLib/multiset.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/multiset.o Include.Examples/StdLib/multiset.cpp

${OBJECTDIR}/Include.Examples/StdLib/mutex.o: Include.Examples/StdLib/mutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/mutex.o Include.Examples/StdLib/mutex.cpp

${OBJECTDIR}/Include.Examples/StdLib/negator.o: Include.Examples/StdLib/negator.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/negator.o Include.Examples/StdLib/negator.cpp

${OBJECTDIR}/Include.Examples/StdLib/nthelem.o: Include.Examples/StdLib/nthelem.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/nthelem.o Include.Examples/StdLib/nthelem.cpp

${OBJECTDIR}/Include.Examples/StdLib/numget.o: Include.Examples/StdLib/numget.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/numget.o Include.Examples/StdLib/numget.cpp

${OBJECTDIR}/Include.Examples/StdLib/numpunct.o: Include.Examples/StdLib/numpunct.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/numpunct.o Include.Examples/StdLib/numpunct.cpp

${OBJECTDIR}/Include.Examples/StdLib/numput.o: Include.Examples/StdLib/numput.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/numput.o Include.Examples/StdLib/numput.cpp

${OBJECTDIR}/Include.Examples/StdLib/ostbufit.o: Include.Examples/StdLib/ostbufit.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ostbufit.o Include.Examples/StdLib/ostbufit.cpp

${OBJECTDIR}/Include.Examples/StdLib/ostream1.o: Include.Examples/StdLib/ostream1.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ostream1.o Include.Examples/StdLib/ostream1.cpp

${OBJECTDIR}/Include.Examples/StdLib/ostream2.o: Include.Examples/StdLib/ostream2.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ostream2.o Include.Examples/StdLib/ostream2.cpp

${OBJECTDIR}/Include.Examples/StdLib/p_queue.o: Include.Examples/StdLib/p_queue.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/p_queue.o Include.Examples/StdLib/p_queue.cpp

${OBJECTDIR}/Include.Examples/StdLib/partsort.o: Include.Examples/StdLib/partsort.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/partsort.o Include.Examples/StdLib/partsort.cpp

${OBJECTDIR}/Include.Examples/StdLib/partsum.o: Include.Examples/StdLib/partsum.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/partsum.o Include.Examples/StdLib/partsum.cpp

${OBJECTDIR}/Include.Examples/StdLib/permute.o: Include.Examples/StdLib/permute.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/permute.o Include.Examples/StdLib/permute.cpp

${OBJECTDIR}/Include.Examples/StdLib/pnt2fnct.o: Include.Examples/StdLib/pnt2fnct.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/pnt2fnct.o Include.Examples/StdLib/pnt2fnct.cpp

${OBJECTDIR}/Include.Examples/StdLib/prtition.o: Include.Examples/StdLib/prtition.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/prtition.o Include.Examples/StdLib/prtition.cpp

${OBJECTDIR}/Include.Examples/StdLib/queue.o: Include.Examples/StdLib/queue.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/queue.o Include.Examples/StdLib/queue.cpp

${OBJECTDIR}/Include.Examples/StdLib/radix.o: Include.Examples/StdLib/radix.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/radix.o Include.Examples/StdLib/radix.cpp

${OBJECTDIR}/Include.Examples/StdLib/remove.o: Include.Examples/StdLib/remove.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/remove.o Include.Examples/StdLib/remove.cpp

${OBJECTDIR}/Include.Examples/StdLib/replace.o: Include.Examples/StdLib/replace.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/replace.o Include.Examples/StdLib/replace.cpp

${OBJECTDIR}/Include.Examples/StdLib/rev_itr.o: Include.Examples/StdLib/rev_itr.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/rev_itr.o Include.Examples/StdLib/rev_itr.cpp

${OBJECTDIR}/Include.Examples/StdLib/reverse.o: Include.Examples/StdLib/reverse.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/reverse.o Include.Examples/StdLib/reverse.cpp

${OBJECTDIR}/Include.Examples/StdLib/rndshufl.o: Include.Examples/StdLib/rndshufl.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/rndshufl.o Include.Examples/StdLib/rndshufl.cpp

${OBJECTDIR}/Include.Examples/StdLib/rotate.o: Include.Examples/StdLib/rotate.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/rotate.o Include.Examples/StdLib/rotate.cpp

${OBJECTDIR}/Include.Examples/StdLib/rwstdmsg.o: Include.Examples/StdLib/rwstdmsg.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/rwstdmsg.o Include.Examples/StdLib/rwstdmsg.cpp

${OBJECTDIR}/Include.Examples/StdLib/search.o: Include.Examples/StdLib/search.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/search.o Include.Examples/StdLib/search.cpp

${OBJECTDIR}/Include.Examples/StdLib/set_diff.o: Include.Examples/StdLib/set_diff.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/set_diff.o Include.Examples/StdLib/set_diff.cpp

${OBJECTDIR}/Include.Examples/StdLib/set_intr.o: Include.Examples/StdLib/set_intr.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/set_intr.o Include.Examples/StdLib/set_intr.cpp

${OBJECTDIR}/Include.Examples/StdLib/set_s_di.o: Include.Examples/StdLib/set_s_di.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/set_s_di.o Include.Examples/StdLib/set_s_di.cpp

${OBJECTDIR}/Include.Examples/StdLib/set_unin.o: Include.Examples/StdLib/set_unin.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/set_unin.o Include.Examples/StdLib/set_unin.cpp

${OBJECTDIR}/Include.Examples/StdLib/setex.o: Include.Examples/StdLib/setex.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/setex.o Include.Examples/StdLib/setex.cpp

${OBJECTDIR}/Include.Examples/StdLib/sieve.o: Include.Examples/StdLib/sieve.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/sieve.o Include.Examples/StdLib/sieve.cpp

${OBJECTDIR}/Include.Examples/StdLib/slc_ary.o: Include.Examples/StdLib/slc_ary.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/slc_ary.o Include.Examples/StdLib/slc_ary.cpp

${OBJECTDIR}/Include.Examples/StdLib/slice.o: Include.Examples/StdLib/slice.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/slice.o Include.Examples/StdLib/slice.cpp

${OBJECTDIR}/Include.Examples/StdLib/sort.o: Include.Examples/StdLib/sort.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/sort.o Include.Examples/StdLib/sort.cpp

${OBJECTDIR}/Include.Examples/StdLib/spell.o: Include.Examples/StdLib/spell.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/spell.o Include.Examples/StdLib/spell.cpp

${OBJECTDIR}/Include.Examples/StdLib/stack.o: Include.Examples/StdLib/stack.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/stack.o Include.Examples/StdLib/stack.cpp

${OBJECTDIR}/Include.Examples/StdLib/stngstre.o: Include.Examples/StdLib/stngstre.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/stngstre.o Include.Examples/StdLib/stngstre.cpp

${OBJECTDIR}/Include.Examples/StdLib/stocks.o: Include.Examples/StdLib/stocks.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/stocks.o Include.Examples/StdLib/stocks.cpp

${OBJECTDIR}/Include.Examples/StdLib/string.o: Include.Examples/StdLib/string.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/string.o Include.Examples/StdLib/string.cpp

${OBJECTDIR}/Include.Examples/StdLib/strngbuf.o: Include.Examples/StdLib/strngbuf.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/strngbuf.o Include.Examples/StdLib/strngbuf.cpp

${OBJECTDIR}/Include.Examples/StdLib/strstrbf.o: Include.Examples/StdLib/strstrbf.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/strstrbf.o Include.Examples/StdLib/strstrbf.cpp

${OBJECTDIR}/Include.Examples/StdLib/strstrea.o: Include.Examples/StdLib/strstrea.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/strstrea.o Include.Examples/StdLib/strstrea.cpp

${OBJECTDIR}/Include.Examples/StdLib/swap.o: Include.Examples/StdLib/swap.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/swap.o Include.Examples/StdLib/swap.cpp

${OBJECTDIR}/Include.Examples/StdLib/tele.o: Include.Examples/StdLib/tele.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/tele.o Include.Examples/StdLib/tele.cpp

${OBJECTDIR}/Include.Examples/StdLib/timeget.o: Include.Examples/StdLib/timeget.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/timeget.o Include.Examples/StdLib/timeget.cpp

${OBJECTDIR}/Include.Examples/StdLib/timeput.o: Include.Examples/StdLib/timeput.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/timeput.o Include.Examples/StdLib/timeput.cpp

${OBJECTDIR}/Include.Examples/StdLib/toupper.o: Include.Examples/StdLib/toupper.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/toupper.o Include.Examples/StdLib/toupper.cpp

${OBJECTDIR}/Include.Examples/StdLib/trnsform.o: Include.Examples/StdLib/trnsform.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/trnsform.o Include.Examples/StdLib/trnsform.cpp

${OBJECTDIR}/Include.Examples/StdLib/ul_bound.o: Include.Examples/StdLib/ul_bound.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/ul_bound.o Include.Examples/StdLib/ul_bound.cpp

${OBJECTDIR}/Include.Examples/StdLib/unique.o: Include.Examples/StdLib/unique.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/unique.o Include.Examples/StdLib/unique.cpp

${OBJECTDIR}/Include.Examples/StdLib/usefacet.o: Include.Examples/StdLib/usefacet.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/usefacet.o Include.Examples/StdLib/usefacet.cpp

${OBJECTDIR}/Include.Examples/StdLib/valarray.o: Include.Examples/StdLib/valarray.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/valarray.o Include.Examples/StdLib/valarray.cpp

${OBJECTDIR}/Include.Examples/StdLib/vector.o: Include.Examples/StdLib/vector.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/vector.o Include.Examples/StdLib/vector.cpp

${OBJECTDIR}/Include.Examples/StdLib/widwork.o: Include.Examples/StdLib/widwork.cpp 
	${MKDIR} -p ${OBJECTDIR}/Include.Examples/StdLib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Include.Examples/StdLib/widwork.o Include.Examples/StdLib/widwork.cpp

.NO_PARALLEL:${OBJECTDIR}/Inheritance\ \(2\).o
${OBJECTDIR}/Inheritance\ \(2\).o: Inheritance\ \(2\).cpp 
	${MKDIR} -p ${OBJECTDIR} \(2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Inheritance\ \(2\).o Inheritance\ \(2\).cpp

${OBJECTDIR}/Inheritance.o: Inheritance.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Inheritance.o Inheritance.cpp

${OBJECTDIR}/InheritanceTest.o: InheritanceTest.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/InheritanceTest.o InheritanceTest.cpp

${OBJECTDIR}/Initialization_Lists.o: Initialization_Lists.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Initialization_Lists.o Initialization_Lists.cpp

${OBJECTDIR}/IntStack.o: IntStack.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/IntStack.o IntStack.cpp

${OBJECTDIR}/Keylogger.o: Keylogger.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Keylogger.o Keylogger.cpp

${OBJECTDIR}/LandCalculation.o: LandCalculation.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LandCalculation.o LandCalculation.cpp

${OBJECTDIR}/LargestNumber.o: LargestNumber.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LargestNumber.o LargestNumber.cpp

${OBJECTDIR}/LargestOfThree.o: LargestOfThree.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LargestOfThree.o LargestOfThree.cpp

${OBJECTDIR}/LargestOfTwo.o: LargestOfTwo.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LargestOfTwo.o LargestOfTwo.cpp

${OBJECTDIR}/Largest_value.o: Largest_value.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Largest_value.o Largest_value.cpp

${OBJECTDIR}/Letters.Are.numbers.In.ASCII.o: Letters.Are.numbers.In.ASCII.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Letters.Are.numbers.In.ASCII.o Letters.Are.numbers.In.ASCII.cpp

${OBJECTDIR}/LineCount.o: LineCount.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LineCount.o LineCount.cpp

${OBJECTDIR}/LineCountSolution.o: LineCountSolution.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LineCountSolution.o LineCountSolution.cpp

${OBJECTDIR}/Linear.Search.o: Linear.Search.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Linear.Search.o Linear.Search.cpp

${OBJECTDIR}/LinkLists.o: LinkLists.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LinkLists.o LinkLists.cpp

${OBJECTDIR}/LinkLists_2.o: LinkLists_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LinkLists_2.o LinkLists_2.cpp

${OBJECTDIR}/LinkLists_Mine.o: LinkLists_Mine.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LinkLists_Mine.o LinkLists_Mine.cpp

${OBJECTDIR}/Loops.o: Loops.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Loops.o Loops.cpp

${OBJECTDIR}/Manipulating.Keyboard.o: Manipulating.Keyboard.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Manipulating.Keyboard.o Manipulating.Keyboard.cpp

${OBJECTDIR}/MathStack.o: MathStack.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MathStack.o MathStack.cpp

${OBJECTDIR}/MemoryLeaks.o: MemoryLeaks.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MemoryLeaks.o MemoryLeaks.cpp

${OBJECTDIR}/MemoryManagement.o: MemoryManagement.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MemoryManagement.o MemoryManagement.cpp

${OBJECTDIR}/MilesPerGallon.o: MilesPerGallon.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MilesPerGallon.o MilesPerGallon.cpp

${OBJECTDIR}/NUmbeList_main.o: NUmbeList_main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/NUmbeList_main.o NUmbeList_main.cpp

${OBJECTDIR}/Namespaces.o: Namespaces.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Namespaces.o Namespaces.cpp

${OBJECTDIR}/NumberList.o: NumberList.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/NumberList.o NumberList.cpp

${OBJECTDIR}/OOP_CopyingConstructors.o: OOP_CopyingConstructors.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OOP_CopyingConstructors.o OOP_CopyingConstructors.cpp

${OBJECTDIR}/OceaLevels.o: OceaLevels.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OceaLevels.o OceaLevels.cpp

${OBJECTDIR}/OddsAndEvens.o: OddsAndEvens.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OddsAndEvens.o OddsAndEvens.cpp

${OBJECTDIR}/OutPutOfAlgorithm_1.o: OutPutOfAlgorithm_1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OutPutOfAlgorithm_1.o OutPutOfAlgorithm_1.cpp

${OBJECTDIR}/OutPutOfAlgorithm_2.o: OutPutOfAlgorithm_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OutPutOfAlgorithm_2.o OutPutOfAlgorithm_2.cpp

${OBJECTDIR}/ParenthesisValidatorCodeSchool/main.o: ParenthesisValidatorCodeSchool/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/ParenthesisValidatorCodeSchool
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ParenthesisValidatorCodeSchool/main.o ParenthesisValidatorCodeSchool/main.cpp

${OBJECTDIR}/Pattern_Matching.o: Pattern_Matching.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pattern_Matching.o Pattern_Matching.cpp

${OBJECTDIR}/PermutationSolution.o: PermutationSolution.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PermutationSolution.o PermutationSolution.cpp

${OBJECTDIR}/PointerSimpler.o: PointerSimpler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PointerSimpler.o PointerSimpler.cpp

${OBJECTDIR}/PointerToPointers.o: PointerToPointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PointerToPointers.o PointerToPointers.cpp

${OBJECTDIR}/Pointer_Tests.o: Pointer_Tests.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointer_Tests.o Pointer_Tests.cpp

${OBJECTDIR}/Pointers.and.Arrays3DPlus.o: Pointers.and.Arrays3DPlus.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers.and.Arrays3DPlus.o Pointers.and.Arrays3DPlus.cpp

${OBJECTDIR}/Pointers.and.Dynamic.memory.o: Pointers.and.Dynamic.memory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers.and.Dynamic.memory.o Pointers.and.Dynamic.memory.cpp

${OBJECTDIR}/Pointers.o: Pointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers.o Pointers.cpp

${OBJECTDIR}/PointersCCIns.o: PointersCCIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PointersCCIns.o PointersCCIns.cpp

${OBJECTDIR}/Pointers_2.o: Pointers_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers_2.o Pointers_2.cpp

${OBJECTDIR}/Pointers_3.o: Pointers_3.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers_3.o Pointers_3.cpp

${OBJECTDIR}/Pointers_Amorphous.o: Pointers_Amorphous.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Pointers_Amorphous.o Pointers_Amorphous.cpp

${OBJECTDIR}/Powers.o: Powers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Powers.o Powers.cpp

${OBJECTDIR}/PowersCCIns.o: PowersCCIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PowersCCIns.o PowersCCIns.cpp

${OBJECTDIR}/Precision.o: Precision.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Precision.o Precision.cpp

${OBJECTDIR}/Print_Even_Numbers.o: Print_Even_Numbers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Print_Even_Numbers.o Print_Even_Numbers.cpp

${OBJECTDIR}/Program10.1.o: Program10.1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Program10.1.o Program10.1.cpp

.NO_PARALLEL:${OBJECTDIR}/Question\ 6/Rational.o
${OBJECTDIR}/Question\ 6/Rational.o: Question\ 6/Rational.cpp 
	${MKDIR} -p ${OBJECTDIR} 6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Question\ 6/Rational.o Question\ 6/Rational.cpp

.NO_PARALLEL:${OBJECTDIR}/Question\ 6/main.o
${OBJECTDIR}/Question\ 6/main.o: Question\ 6/main.cpp 
	${MKDIR} -p ${OBJECTDIR} 6
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Question\ 6/main.o Question\ 6/main.cpp

${OBJECTDIR}/Random_Numbers.o: Random_Numbers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Random_Numbers.o Random_Numbers.cpp

${OBJECTDIR}/Random_Numbers_2.o: Random_Numbers_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Random_Numbers_2.o Random_Numbers_2.cpp

${OBJECTDIR}/Randoms.o: Randoms.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Randoms.o Randoms.cpp

.NO_PARALLEL:${OBJECTDIR}/Recursion\ \(2\).o
${OBJECTDIR}/Recursion\ \(2\).o: Recursion\ \(2\).cpp 
	${MKDIR} -p ${OBJECTDIR} \(2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Recursion\ \(2\).o Recursion\ \(2\).cpp

${OBJECTDIR}/Recursion.o: Recursion.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Recursion.o Recursion.cpp

${OBJECTDIR}/RecursionSolution.o: RecursionSolution.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RecursionSolution.o RecursionSolution.cpp

${OBJECTDIR}/Recursion_2.o: Recursion_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Recursion_2.o Recursion_2.cpp

${OBJECTDIR}/Reference.Arguments.With.Pointers.o: Reference.Arguments.With.Pointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Reference.Arguments.With.Pointers.o Reference.Arguments.With.Pointers.cpp

${OBJECTDIR}/Reference.Arguments.o: Reference.Arguments.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Reference.Arguments.o Reference.Arguments.cpp

${OBJECTDIR}/RestuarantBill.o: RestuarantBill.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RestuarantBill.o RestuarantBill.cpp

${OBJECTDIR}/Sales.Prediction.o: Sales.Prediction.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Sales.Prediction.o Sales.Prediction.cpp

${OBJECTDIR}/Selection.o: Selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Selection.o Selection.cpp

${OBJECTDIR}/Selection_Sort.o: Selection_Sort.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Selection_Sort.o Selection_Sort.cpp

${OBJECTDIR}/ShuffleLeft.o: ShuffleLeft.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ShuffleLeft.o ShuffleLeft.cpp

.NO_PARALLEL:${OBJECTDIR}/Smallest\ _Value.o
${OBJECTDIR}/Smallest\ _Value.o: Smallest\ _Value.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Smallest\ _Value.o Smallest\ _Value.cpp

${OBJECTDIR}/Stack_OOP_Mine.o: Stack_OOP_Mine.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_OOP_Mine.o Stack_OOP_Mine.cpp

${OBJECTDIR}/Stack_OOP_Mine_Main.o: Stack_OOP_Mine_Main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_OOP_Mine_Main.o Stack_OOP_Mine_Main.cpp

${OBJECTDIR}/Stack_Procedural_CPPIns.o: Stack_Procedural_CPPIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_Procedural_CPPIns.o Stack_Procedural_CPPIns.cpp

${OBJECTDIR}/Stack_Procedural_Mine.o: Stack_Procedural_Mine.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_Procedural_Mine.o Stack_Procedural_Mine.cpp

${OBJECTDIR}/Stack_Template.o: Stack_Template.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_Template.o Stack_Template.cpp

${OBJECTDIR}/Stack_Template_Main.o: Stack_Template_Main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stack_Template_Main.o Stack_Template_Main.cpp

${OBJECTDIR}/StadiumSeating.o: StadiumSeating.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/StadiumSeating.o StadiumSeating.cpp

${OBJECTDIR}/Static_HowManyInstances.o: Static_HowManyInstances.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Static_HowManyInstances.o Static_HowManyInstances.cpp

${OBJECTDIR}/Stock_Cost.o: Stock_Cost.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Stock_Cost.o Stock_Cost.cpp

${OBJECTDIR}/Strings.o: Strings.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings.o Strings.cpp

${OBJECTDIR}/Strings_BufferControl.o: Strings_BufferControl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_BufferControl.o Strings_BufferControl.cpp

${OBJECTDIR}/Strings_Comparisons.o: Strings_Comparisons.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_Comparisons.o Strings_Comparisons.cpp

${OBJECTDIR}/Strings_ContentManipulation.o: Strings_ContentManipulation.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_ContentManipulation.o Strings_ContentManipulation.cpp

${OBJECTDIR}/Strings_Searching.o: Strings_Searching.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_Searching.o Strings_Searching.cpp

${OBJECTDIR}/Strings_SingleCharacterManipulation.o: Strings_SingleCharacterManipulation.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_SingleCharacterManipulation.o Strings_SingleCharacterManipulation.cpp

${OBJECTDIR}/Strings_Size.o: Strings_Size.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_Size.o Strings_Size.cpp

${OBJECTDIR}/Strings_SubString.o: Strings_SubString.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_SubString.o Strings_SubString.cpp

${OBJECTDIR}/Strings_push_back.o: Strings_push_back.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Strings_push_back.o Strings_push_back.cpp

${OBJECTDIR}/Structs.and.pointers.o: Structs.and.pointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Structs.and.pointers.o Structs.and.pointers.cpp

${OBJECTDIR}/Structs.o: Structs.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Structs.o Structs.cpp

${OBJECTDIR}/Structures.o: Structures.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Structures.o Structures.cpp

${OBJECTDIR}/StructuresCCIns.o: StructuresCCIns.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/StructuresCCIns.o StructuresCCIns.cpp

${OBJECTDIR}/Structures_2.o: Structures_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Structures_2.o Structures_2.cpp

${OBJECTDIR}/SumOfSubsequentValues.o: SumOfSubsequentValues.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SumOfSubsequentValues.o SumOfSubsequentValues.cpp

${OBJECTDIR}/Switch.o: Switch.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Switch.o Switch.cpp

.NO_PARALLEL:${OBJECTDIR}/Taking\ User\ Input\ With\ Pointers.o
${OBJECTDIR}/Taking\ User\ Input\ With\ Pointers.o: Taking\ User\ Input\ With\ Pointers.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Taking\ User\ Input\ With\ Pointers.o Taking\ User\ Input\ With\ Pointers.cpp

${OBJECTDIR}/Taking.Memory.o: Taking.Memory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Taking.Memory.o Taking.Memory.cpp

${OBJECTDIR}/Tax.o: Tax.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Tax.o Tax.cpp

${OBJECTDIR}/TemplatesONSTLTemplates.o: TemplatesONSTLTemplates.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TemplatesONSTLTemplates.o TemplatesONSTLTemplates.cpp

${OBJECTDIR}/Tests/main.o: Tests/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/Tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Tests/main.o Tests/main.cpp

${OBJECTDIR}/The_Converging_Pointer_Algorithm.o: The_Converging_Pointer_Algorithm.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/The_Converging_Pointer_Algorithm.o The_Converging_Pointer_Algorithm.cpp

${OBJECTDIR}/The_Converging_Pointer_Algorithm_2.o: The_Converging_Pointer_Algorithm_2.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/The_Converging_Pointer_Algorithm_2.o The_Converging_Pointer_Algorithm_2.cpp

${OBJECTDIR}/Triagle.Pattern.o: Triagle.Pattern.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Triagle.Pattern.o Triagle.Pattern.cpp

${OBJECTDIR}/TriangularMatrices.o: TriangularMatrices.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TriangularMatrices.o TriangularMatrices.cpp

${OBJECTDIR}/TypeCasting.o: TypeCasting.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TypeCasting.o TypeCasting.cpp

${OBJECTDIR}/TypeConversionFlow.o: TypeConversionFlow.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TypeConversionFlow.o TypeConversionFlow.cpp

${OBJECTDIR}/Varaibles3DPlus.o: Varaibles3DPlus.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Varaibles3DPlus.o Varaibles3DPlus.cpp

${OBJECTDIR}/VariableArgumentfunctions.o: VariableArgumentfunctions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/VariableArgumentfunctions.o VariableArgumentfunctions.cpp

${OBJECTDIR}/Variables.o: Variables.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Variables.o Variables.cpp

${OBJECTDIR}/Vectors.o: Vectors.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Vectors.o Vectors.cpp

${OBJECTDIR}/beep.o: beep.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/beep.o beep.cpp

${OBJECTDIR}/cin.Function.o: cin.Function.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cin.Function.o cin.Function.cpp

${OBJECTDIR}/do.while.loop.o: do.while.loop.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/do.while.loop.o do.while.loop.cpp

${OBJECTDIR}/heap.o: heap.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/heap.o heap.cpp

${OBJECTDIR}/if.o: if.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/if.o if.cpp

${OBJECTDIR}/ifC.o: ifC.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ifC.o ifC.c

${OBJECTDIR}/macshift.o: macshift.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/macshift.o macshift.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/names.o: names.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/names.o names.cpp

${OBJECTDIR}/positive3.o: positive3.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/positive3.o positive3.c

${OBJECTDIR}/sizeofOperator.o: sizeofOperator.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sizeofOperator.o sizeofOperator.cpp

${OBJECTDIR}/stackmain.o: stackmain.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/stackmain.o stackmain.cpp

${OBJECTDIR}/while.o: while.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/while.o while.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/c__

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
