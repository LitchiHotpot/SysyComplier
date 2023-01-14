/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* "%code top" blocks.  */
#line 2 "src/parser.y"

    #include <iostream>
    #include <assert.h>
    #include <queue>
    #include <stack>
    #include "parser.h"
    extern char* yytext;
    extern int yylineno;
    extern Ast ast;
    int yylex();
    int yyerror( char const * );
    Type *funcionRetType;
    std::string funcName;
    int ifReturn=1;
    std::stack<StmtNode*> whileS;
    ArrayType* arrayType;

#line 86 "src/parser.cpp"




# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ID = 3,                         /* ID  */
  YYSYMBOL_INTEGER = 4,                    /* INTEGER  */
  YYSYMBOL_HEXADECIMAL = 5,                /* HEXADECIMAL  */
  YYSYMBOL_OCTAL = 6,                      /* OCTAL  */
  YYSYMBOL_IF = 7,                         /* IF  */
  YYSYMBOL_ELSE = 8,                       /* ELSE  */
  YYSYMBOL_WHILE = 9,                      /* WHILE  */
  YYSYMBOL_INT = 10,                       /* INT  */
  YYSYMBOL_VOID = 11,                      /* VOID  */
  YYSYMBOL_CONST = 12,                     /* CONST  */
  YYSYMBOL_LPAREN = 13,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 14,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 15,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 16,                    /* RBRACE  */
  YYSYMBOL_SEMICOLON = 17,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 18,                     /* COMMA  */
  YYSYMBOL_LBRACKET = 19,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 20,                  /* RBRACKET  */
  YYSYMBOL_ADD = 21,                       /* ADD  */
  YYSYMBOL_SUB = 22,                       /* SUB  */
  YYSYMBOL_OR = 23,                        /* OR  */
  YYSYMBOL_AND = 24,                       /* AND  */
  YYSYMBOL_LESS = 25,                      /* LESS  */
  YYSYMBOL_ASSIGN = 26,                    /* ASSIGN  */
  YYSYMBOL_LESSEQ = 27,                    /* LESSEQ  */
  YYSYMBOL_MOREEQ = 28,                    /* MOREEQ  */
  YYSYMBOL_NOTEQUAL = 29,                  /* NOTEQUAL  */
  YYSYMBOL_EQUAL = 30,                     /* EQUAL  */
  YYSYMBOL_MORE = 31,                      /* MORE  */
  YYSYMBOL_NOT = 32,                       /* NOT  */
  YYSYMBOL_DIV = 33,                       /* DIV  */
  YYSYMBOL_MUL = 34,                       /* MUL  */
  YYSYMBOL_MOD = 35,                       /* MOD  */
  YYSYMBOL_RETURN = 36,                    /* RETURN  */
  YYSYMBOL_BREAK = 37,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 38,                  /* CONTINUE  */
  YYSYMBOL_THEN = 39,                      /* THEN  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_Stmts = 42,                     /* Stmts  */
  YYSYMBOL_Stmt = 43,                      /* Stmt  */
  YYSYMBOL_IDList = 44,                    /* IDList  */
  YYSYMBOL_ParaList = 45,                  /* ParaList  */
  YYSYMBOL_ParaIDList = 46,                /* ParaIDList  */
  YYSYMBOL_InitIDList = 47,                /* InitIDList  */
  YYSYMBOL_InitStmt = 48,                  /* InitStmt  */
  YYSYMBOL_LVal = 49,                      /* LVal  */
  YYSYMBOL_Array = 50,                     /* Array  */
  YYSYMBOL_AssignStmt = 51,                /* AssignStmt  */
  YYSYMBOL_BlockStmt = 52,                 /* BlockStmt  */
  YYSYMBOL_53_1 = 53,                      /* $@1  */
  YYSYMBOL_IfStmt = 54,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 55,                 /* WhileStmt  */
  YYSYMBOL_56_2 = 56,                      /* @2  */
  YYSYMBOL_BreakStmt = 57,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 58,              /* ContinueStmt  */
  YYSYMBOL_ReturnStmt = 59,                /* ReturnStmt  */
  YYSYMBOL_Exp = 60,                       /* Exp  */
  YYSYMBOL_Cond = 61,                      /* Cond  */
  YYSYMBOL_Intint = 62,                    /* Intint  */
  YYSYMBOL_PrimaryExp = 63,                /* PrimaryExp  */
  YYSYMBOL_NotExp = 64,                    /* NotExp  */
  YYSYMBOL_MulExp = 65,                    /* MulExp  */
  YYSYMBOL_AddExp = 66,                    /* AddExp  */
  YYSYMBOL_RelExp = 67,                    /* RelExp  */
  YYSYMBOL_LAndExp = 68,                   /* LAndExp  */
  YYSYMBOL_LOrExp = 69,                    /* LOrExp  */
  YYSYMBOL_Type = 70,                      /* Type  */
  YYSYMBOL_ExprStmt = 71,                  /* ExprStmt  */
  YYSYMBOL_BlankStmt = 72,                 /* BlankStmt  */
  YYSYMBOL_FuncExpr = 73,                  /* FuncExpr  */
  YYSYMBOL_FuncDef = 74,                   /* FuncDef  */
  YYSYMBOL_75_3 = 75,                      /* $@3  */
  YYSYMBOL_DeclStmt = 76                   /* DeclStmt  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if 1

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* 1 */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  60
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   202

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  37
/* YYNRULES -- Number of rules.  */
#define YYNRULES  85
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  144

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    60,    60,    65,    66,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    80,    81,    82,    87,   100,   139,
     152,   184,   194,   202,   208,   215,   221,   226,   243,   262,
     270,   282,   298,   302,   311,   318,   317,   327,   332,   335,
     340,   340,   352,   357,   363,   380,   390,   394,   398,   400,
     402,   406,   408,   411,   415,   421,   423,   428,   434,   441,
     443,   449,   455,   463,   465,   471,   479,   481,   487,   493,
     499,   505,   511,   519,   521,   529,   531,   539,   542,   545,
     552,   557,   563,   596,   596,   631
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if 1
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "ID", "INTEGER",
  "HEXADECIMAL", "OCTAL", "IF", "ELSE", "WHILE", "INT", "VOID", "CONST",
  "LPAREN", "RPAREN", "LBRACE", "RBRACE", "SEMICOLON", "COMMA", "LBRACKET",
  "RBRACKET", "ADD", "SUB", "OR", "AND", "LESS", "ASSIGN", "LESSEQ",
  "MOREEQ", "NOTEQUAL", "EQUAL", "MORE", "NOT", "DIV", "MUL", "MOD",
  "RETURN", "BREAK", "CONTINUE", "THEN", "$accept", "Program", "Stmts",
  "Stmt", "IDList", "ParaList", "ParaIDList", "InitIDList", "InitStmt",
  "LVal", "Array", "AssignStmt", "BlockStmt", "$@1", "IfStmt", "WhileStmt",
  "@2", "BreakStmt", "ContinueStmt", "ReturnStmt", "Exp", "Cond", "Intint",
  "PrimaryExp", "NotExp", "MulExp", "AddExp", "RelExp", "LAndExp",
  "LOrExp", "Type", "ExprStmt", "BlankStmt", "FuncExpr", "FuncDef", "$@3",
  "DeclStmt", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-85)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     164,     6,   -85,   -85,   -85,    13,    28,   -85,   -85,    40,
      73,    35,   -85,    73,    73,    73,    10,    36,    48,    80,
     164,   -85,   -85,    55,   -85,   -85,   -85,   -85,   -85,   -85,
     -85,    65,   -85,   -85,   -85,     5,   -12,    84,   -85,   -85,
     -85,   -85,   -85,    73,    73,    69,    73,    73,   -85,   -85,
      75,   -85,   164,   -85,   -85,   -85,   -85,    76,   -85,   -85,
     -85,   -85,    73,   -85,    73,    73,    73,    73,    73,    11,
      16,    29,     3,   -85,    70,    73,    78,    79,   -85,    72,
      74,    85,   -85,   128,   -85,    81,   -85,   -85,   -85,     5,
       5,    33,    73,    69,   -85,   100,   -85,   108,   -85,    73,
     -85,    92,   164,    73,    73,    73,    73,    73,    73,    73,
      73,   -85,   -85,   -85,     4,   111,   -85,    96,    90,   -85,
     -85,   109,   -85,   -85,   -85,   -85,   -85,   -85,   -85,    72,
     164,   -85,    33,   -85,    69,    73,   164,   -85,   103,   117,
     -85,   -85,   -85,   -85
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    30,    48,    49,    50,     0,     0,    78,    79,     0,
       0,    35,    81,     0,     0,     0,     0,     0,     0,     0,
       2,     3,    13,    52,     5,     6,     7,    15,     8,     9,
      10,     0,    53,    55,    59,    63,    46,     0,    14,    16,
      54,    12,    11,    26,     0,    31,     0,     0,    77,    52,
       0,    37,     0,    57,    58,    56,    45,     0,    42,    43,
       1,     4,     0,    80,     0,     0,     0,     0,     0,    17,
       0,     0,     0,    24,     0,     0,     0,    66,    73,    75,
      47,     0,    51,     0,    44,     0,    61,    60,    62,    64,
      65,    23,     0,    18,    85,     0,    29,     0,    82,     0,
      32,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    40,    36,    34,     0,     0,    27,    19,     0,    25,
      33,    38,    69,    67,    68,    72,    71,    70,    74,    76,
       0,    83,     0,    21,    20,     0,     0,    41,     0,     0,
      28,    39,    84,    22
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -85,   -85,    71,   -17,   -85,   -85,   -85,   -85,   -85,     0,
     -68,   -85,   -16,   -85,   -85,   -85,   -85,   -85,   -85,   -85,
      -8,    77,   -85,   -85,    -9,   -39,   -35,   -45,    15,   -85,
     -84,   -85,   -85,   -85,   -85,   -85,   -85
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    19,    20,    21,    70,   114,    72,    71,    22,    49,
      45,    24,    25,    52,    26,    27,   130,    28,    29,    30,
      31,    76,    32,    33,    34,    35,    36,    78,    79,    80,
      37,    38,    39,    40,    41,   138,    42
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      23,    93,    50,    61,    53,    54,    55,   115,    57,    67,
      68,    77,    77,     1,     2,     3,     4,    98,   131,    43,
      23,    99,   132,    10,    91,    44,    46,    56,    89,    90,
      44,    13,    14,    94,    95,    73,    74,    92,    64,    65,
      66,    47,    15,     7,     8,     9,    96,    97,   139,   134,
      48,    51,    23,    58,    85,    86,    87,    88,   122,   123,
     124,   125,   126,   127,   128,    59,    61,   101,    77,    77,
      77,    77,    77,    77,    77,    77,     1,     2,     3,     4,
      60,    62,    63,    23,   116,   121,    10,    69,    75,    82,
     100,   119,   102,    84,    13,    14,   109,   110,   113,   111,
      67,    68,    23,   117,   103,    15,   104,   105,   106,   107,
     108,   118,   120,   137,   133,    44,   135,   136,    11,   141,
     143,     0,   142,    83,    81,   129,     0,   140,     0,     0,
      23,     1,     2,     3,     4,     5,    23,     6,     7,     8,
       9,    10,     0,    11,   112,    12,     0,     0,     0,    13,
      14,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      15,     0,     0,     0,    16,    17,    18,     1,     2,     3,
       4,     5,     0,     6,     7,     8,     9,    10,     0,    11,
       0,    12,     0,     0,     0,    13,    14,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    15,     0,     0,     0,
      16,    17,    18
};

static const yytype_int16 yycheck[] =
{
       0,    69,    10,    20,    13,    14,    15,    91,    16,    21,
      22,    46,    47,     3,     4,     5,     6,    14,    14,    13,
      20,    18,    18,    13,    13,    19,    13,    17,    67,    68,
      19,    21,    22,    17,    18,    43,    44,    26,    33,    34,
      35,    13,    32,    10,    11,    12,    17,    18,   132,   117,
      10,    16,    52,    17,    62,    64,    65,    66,   103,   104,
     105,   106,   107,   108,   109,    17,    83,    75,   103,   104,
     105,   106,   107,   108,   109,   110,     3,     4,     5,     6,
       0,    26,    17,    83,    92,   102,    13,     3,    19,    14,
      20,    99,    14,    17,    21,    22,    24,    23,    17,    14,
      21,    22,   102,     3,    25,    32,    27,    28,    29,    30,
      31,     3,    20,   130,     3,    19,    26,     8,    15,   136,
       3,    -1,   138,    52,    47,   110,    -1,   135,    -1,    -1,
     130,     3,     4,     5,     6,     7,   136,     9,    10,    11,
      12,    13,    -1,    15,    16,    17,    -1,    -1,    -1,    21,
      22,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      32,    -1,    -1,    -1,    36,    37,    38,     3,     4,     5,
       6,     7,    -1,     9,    10,    11,    12,    13,    -1,    15,
      -1,    17,    -1,    -1,    -1,    21,    22,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    32,    -1,    -1,    -1,
      36,    37,    38
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     9,    10,    11,    12,
      13,    15,    17,    21,    22,    32,    36,    37,    38,    41,
      42,    43,    48,    49,    51,    52,    54,    55,    57,    58,
      59,    60,    62,    63,    64,    65,    66,    70,    71,    72,
      73,    74,    76,    13,    19,    50,    13,    13,    10,    49,
      60,    16,    53,    64,    64,    64,    17,    60,    17,    17,
       0,    43,    26,    17,    33,    34,    35,    21,    22,     3,
      44,    47,    46,    60,    60,    19,    61,    66,    67,    68,
      69,    61,    14,    42,    17,    60,    64,    64,    64,    65,
      65,    13,    26,    50,    17,    18,    17,    18,    14,    18,
      20,    60,    14,    25,    27,    28,    29,    30,    31,    24,
      23,    14,    16,    17,    45,    70,    60,     3,     3,    60,
      20,    43,    67,    67,    67,    67,    67,    67,    67,    68,
      56,    14,    18,     3,    50,    26,     8,    43,    75,    70,
      60,    43,    52,     3
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    44,    44,    44,
      44,    45,    45,    45,    46,    46,    46,    47,    47,    48,
      49,    49,    50,    50,    51,    53,    52,    52,    54,    54,
      56,    55,    57,    58,    59,    59,    60,    61,    62,    62,
      62,    63,    63,    63,    63,    64,    64,    64,    64,    65,
      65,    65,    65,    66,    66,    66,    67,    67,    67,    67,
      67,    67,    67,    68,    68,    69,    69,    70,    70,    70,
      71,    72,    73,    75,    74,    76
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     2,     3,
       4,     2,     4,     0,     1,     3,     0,     3,     5,     3,
       1,     2,     3,     4,     4,     0,     4,     2,     5,     7,
       0,     6,     2,     2,     3,     2,     1,     1,     1,     1,
       1,     3,     1,     1,     1,     1,     2,     2,     2,     1,
       3,     3,     3,     1,     3,     3,     1,     3,     3,     3,
       3,     3,     3,     1,     3,     1,     3,     2,     1,     1,
       2,     1,     4,     0,     7,     3
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


/* Context of a parse error.  */
typedef struct
{
  yy_state_t *yyssp;
  yysymbol_kind_t yytoken;
} yypcontext_t;

/* Put in YYARG at most YYARGN of the expected tokens given the
   current YYCTX, and return the number of tokens stored in YYARG.  If
   YYARG is null, return the number of expected tokens (guaranteed to
   be less than YYNTOKENS).  Return YYENOMEM on memory exhaustion.
   Return 0 if there are more than YYARGN expected tokens, yet fill
   YYARG up to YYARGN. */
static int
yypcontext_expected_tokens (const yypcontext_t *yyctx,
                            yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  int yyn = yypact[+*yyctx->yyssp];
  if (!yypact_value_is_default (yyn))
    {
      /* Start YYX at -YYN if negative to avoid negative indexes in
         YYCHECK.  In other words, skip the first -YYN actions for
         this state because they are default actions.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;
      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yyx;
      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
        if (yycheck[yyx + yyn] == yyx && yyx != YYSYMBOL_YYerror
            && !yytable_value_is_error (yytable[yyx + yyn]))
          {
            if (!yyarg)
              ++yycount;
            else if (yycount == yyargn)
              return 0;
            else
              yyarg[yycount++] = YY_CAST (yysymbol_kind_t, yyx);
          }
    }
  if (yyarg && yycount == 0 && 0 < yyargn)
    yyarg[0] = YYSYMBOL_YYEMPTY;
  return yycount;
}




#ifndef yystrlen
# if defined __GLIBC__ && defined _STRING_H
#  define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
# else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
# endif
#endif

#ifndef yystpcpy
# if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#  define yystpcpy stpcpy
# else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
# endif
#endif

#ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;
      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
#endif


static int
yy_syntax_error_arguments (const yypcontext_t *yyctx,
                           yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yyctx->yytoken != YYSYMBOL_YYEMPTY)
    {
      int yyn;
      if (yyarg)
        yyarg[yycount] = yyctx->yytoken;
      ++yycount;
      yyn = yypcontext_expected_tokens (yyctx,
                                        yyarg ? yyarg + 1 : yyarg, yyargn - 1);
      if (yyn == YYENOMEM)
        return YYENOMEM;
      else
        yycount += yyn;
    }
  return yycount;
}

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return -1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return YYENOMEM if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                const yypcontext_t *yyctx)
{
  enum { YYARGS_MAX = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  yysymbol_kind_t yyarg[YYARGS_MAX];
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* Actual size of YYARG. */
  int yycount = yy_syntax_error_arguments (yyctx, yyarg, YYARGS_MAX);
  if (yycount == YYENOMEM)
    return YYENOMEM;

  switch (yycount)
    {
#define YYCASE_(N, S)                       \
      case N:                               \
        yyformat = S;                       \
        break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
    }

  /* Compute error message size.  Don't count the "%s"s, but reserve
     room for the terminator.  */
  yysize = yystrlen (yyformat) - 2 * yycount + 1;
  {
    int yyi;
    for (yyi = 0; yyi < yycount; ++yyi)
      {
        YYPTRDIFF_T yysize1
          = yysize + yytnamerr (YY_NULLPTR, yytname[yyarg[yyi]]);
        if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
          yysize = yysize1;
        else
          return YYENOMEM;
      }
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return -1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yytname[yyarg[yyi++]]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: Stmts  */
#line 60 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1536 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 65 "src/parser.y"
           {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1542 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 66 "src/parser.y"
                {
        (yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));
    }
#line 1550 "src/parser.cpp"
    break;

  case 5: /* Stmt: AssignStmt  */
#line 71 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1556 "src/parser.cpp"
    break;

  case 6: /* Stmt: BlockStmt  */
#line 72 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1562 "src/parser.cpp"
    break;

  case 7: /* Stmt: IfStmt  */
#line 73 "src/parser.y"
             {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1568 "src/parser.cpp"
    break;

  case 8: /* Stmt: BreakStmt  */
#line 74 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1574 "src/parser.cpp"
    break;

  case 9: /* Stmt: ContinueStmt  */
#line 75 "src/parser.y"
                   {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1580 "src/parser.cpp"
    break;

  case 10: /* Stmt: ReturnStmt  */
#line 76 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1586 "src/parser.cpp"
    break;

  case 11: /* Stmt: DeclStmt  */
#line 77 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1592 "src/parser.cpp"
    break;

  case 12: /* Stmt: FuncDef  */
#line 78 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1598 "src/parser.cpp"
    break;

  case 13: /* Stmt: InitStmt  */
#line 79 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1604 "src/parser.cpp"
    break;

  case 14: /* Stmt: ExprStmt  */
#line 80 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1610 "src/parser.cpp"
    break;

  case 15: /* Stmt: WhileStmt  */
#line 81 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1616 "src/parser.cpp"
    break;

  case 16: /* Stmt: BlankStmt  */
#line 82 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1622 "src/parser.cpp"
    break;

  case 17: /* IDList: ID  */
#line 87 "src/parser.y"
         {
    	SymbolEntry *se;
        se=identifiers->lookup((yyvsp[0].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[0].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idlist;
        idlist.push(se);
        (yyval.idlist) = new IDList(idlist);
    }
#line 1640 "src/parser.cpp"
    break;

  case 18: /* IDList: ID Array  */
#line 100 "src/parser.y"
               {
        
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-1].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-1].strtype));
        }
        std::vector<int> vec;
        ExprNode* temp = (yyvsp[0].exprtype);
        while(temp){
            ConstantSymbolEntry* len=(ConstantSymbolEntry*)temp->getSymPtr();
            //std::cout<<len->getValue()<<std::endl;
            vec.push_back(len->getValue());
            temp = (ExprNode*)(temp->getNext());
        }
        Type *type = TypeSystem::intType;
        Type* temp1;
        while(!vec.empty()){
            //std::cout<<vec.back()<<std::endl;
            temp1 = new ArrayType(type, vec.back());
            if(type->isArray())
                ((ArrayType*)type)->setArrayType(temp1);
            type = temp1;
            vec.pop_back();
        }
        arrayType = (ArrayType*)type;
        se = new IdentifierSymbolEntry(type, (yyvsp[-1].strtype), identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setArr();
        int len=((ArrayType*)(se->getType()))->getSize();
        //std::cout<<len<<std::endl;
        ((IdentifierSymbolEntry*)se)->setArrLen(len);
        //std::cout<<((IdentifierSymbolEntry*)se)->getArrLen();
        identifiers->install((yyvsp[-1].strtype), se);
        std::queue<SymbolEntry*> idlist;
        idlist.push(se);
        (yyval.idlist) = new IDList(idlist);
        
    }
#line 1684 "src/parser.cpp"
    break;

  case 19: /* IDList: IDList COMMA ID  */
#line 139 "src/parser.y"
                      {
    	SymbolEntry *se;
        se=identifiers->lookup((yyvsp[0].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[0].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idl = (yyvsp[-2].idlist)->getList();
        idl.push(se);
        (yyval.idlist)=new IDList(idl);
    }
#line 1702 "src/parser.cpp"
    break;

  case 20: /* IDList: IDList COMMA ID Array  */
#line 152 "src/parser.y"
                            {
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-1].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-3].idlist));
        }
        std::vector<int> vec;
        ExprNode* temp = (yyvsp[0].exprtype);
        while(temp){
            vec.push_back(((ConstantSymbolEntry*)temp->getSymPtr())->getValue());
            temp = (ExprNode*)(temp->getNext());
        }
        Type *type = TypeSystem::intType;
        Type* temp1;
        while(!vec.empty()){
            temp1 = new ArrayType(type, vec.back());
            if(type->isArray())
                ((ArrayType*)type)->setArrayType(temp1);
            type = temp1;
            vec.pop_back();
        }
        arrayType = (ArrayType*)type;
        se = new IdentifierSymbolEntry(type, (yyvsp[-1].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-1].strtype), se);
        std::queue<SymbolEntry*> idl = (yyvsp[-3].idlist)->getList();
        idl.push(se);
        (yyval.idlist)=new IDList(idl);
    }
#line 1736 "src/parser.cpp"
    break;

  case 21: /* ParaList: Type ID  */
#line 184 "src/parser.y"
            {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idList;
        idList.push(se);
        (yyval.paraList) = new ParaList(idList);
        // delete []$2;
    }
#line 1750 "src/parser.cpp"
    break;

  case 22: /* ParaList: ParaList COMMA Type ID  */
#line 194 "src/parser.y"
                          {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idList = (yyvsp[-3].paraList)->getList();
        idList.push(se);
        (yyval.paraList) = new ParaList(idList);
        // delete []$2;
    }
#line 1763 "src/parser.cpp"
    break;

  case 23: /* ParaList: %empty  */
#line 202 "src/parser.y"
             {(yyval.paraList) = new ParaList();}
#line 1769 "src/parser.cpp"
    break;

  case 24: /* ParaIDList: Exp  */
#line 208 "src/parser.y"
        {
        std::queue<ExprNode*> exprlist;
        exprlist.push((yyvsp[0].exprtype));
        (yyval.paraIdList) = new ParaIDList(exprlist);
        // delete []$2;
    }
#line 1780 "src/parser.cpp"
    break;

  case 25: /* ParaIDList: ParaIDList COMMA Exp  */
#line 215 "src/parser.y"
                         {
        std::queue<ExprNode*> exprlist=(yyvsp[-2].paraIdList)->getList();
        exprlist.push((yyvsp[0].exprtype));
        (yyval.paraIdList) = new ParaIDList(exprlist);
        // delete []$2;
    }
#line 1791 "src/parser.cpp"
    break;

  case 26: /* ParaIDList: %empty  */
#line 221 "src/parser.y"
             {(yyval.paraIdList) = new ParaIDList();}
#line 1797 "src/parser.cpp"
    break;

  case 27: /* InitIDList: ID ASSIGN Exp  */
#line 226 "src/parser.y"
                  {
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-2].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-2].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        std::queue<SymbolEntry*> idList;
        std::queue<ExprNode*> nums;
        idList.push(se);
        nums.push((yyvsp[0].exprtype));
        (yyval.initIdList) = new InitIDList(idList, nums);
        delete (yyvsp[-2].strtype);
    }
#line 1818 "src/parser.cpp"
    break;

  case 28: /* InitIDList: InitIDList COMMA ID ASSIGN Exp  */
#line 243 "src/parser.y"
                                   {
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-2].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-2].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        std::queue<SymbolEntry*> *idList = (yyvsp[-4].initIdList)->getList();
        std::queue<ExprNode*> *nums = (yyvsp[-4].initIdList)->getNums();
        idList->push(se);
        nums->push((yyvsp[0].exprtype));
        (yyval.initIdList) = new InitIDList(*idList, *nums);
        delete (yyvsp[-2].strtype);
    }
#line 1839 "src/parser.cpp"
    break;

  case 29: /* InitStmt: Type InitIDList SEMICOLON  */
#line 262 "src/parser.y"
                              {
        (yyvsp[-1].initIdList)->setType((yyvsp[-2].type));
        (yyval.stmttype) = new InitStmt((yyvsp[-1].initIdList));
        // delete []$2;
    }
#line 1849 "src/parser.cpp"
    break;

  case 30: /* LVal: ID  */
#line 270 "src/parser.y"
         {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[0].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[0].strtype));
            delete [](char*)(yyvsp[0].strtype);
            assert(se != nullptr);
        }
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 1866 "src/parser.cpp"
    break;

  case 31: /* LVal: ID Array  */
#line 283 "src/parser.y"
    {
        SymbolEntry* se;
        se = identifiers->lookup((yyvsp[-1].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[-1].strtype));
            delete [](char*)(yyvsp[-1].strtype);
            assert(se != nullptr);
        }
        (yyval.exprtype) = new Id(se, (yyvsp[0].exprtype));
        //delete []$1;
    }
#line 1883 "src/parser.cpp"
    break;

  case 32: /* Array: LBRACKET Exp RBRACKET  */
#line 299 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 1891 "src/parser.cpp"
    break;

  case 33: /* Array: Array LBRACKET Exp RBRACKET  */
#line 303 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[-3].exprtype);
        (yyvsp[-3].exprtype)->setNext((yyvsp[-1].exprtype));
    }
#line 1900 "src/parser.cpp"
    break;

  case 34: /* AssignStmt: LVal ASSIGN Exp SEMICOLON  */
#line 311 "src/parser.y"
                              {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1908 "src/parser.cpp"
    break;

  case 35: /* $@1: %empty  */
#line 318 "src/parser.y"
        {identifiers = new SymbolTable(identifiers);}
#line 1914 "src/parser.cpp"
    break;

  case 36: /* BlockStmt: LBRACE $@1 Stmts RBRACE  */
#line 320 "src/parser.y"
        {
            (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
            SymbolTable *top = identifiers;
            identifiers = identifiers->getPrev();
            delete top;
        }
#line 1925 "src/parser.cpp"
    break;

  case 37: /* BlockStmt: LBRACE RBRACE  */
#line 327 "src/parser.y"
                  {
        (yyval.stmttype) = new CompoundStmt();
    }
#line 1933 "src/parser.cpp"
    break;

  case 38: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 332 "src/parser.y"
                                            {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1941 "src/parser.cpp"
    break;

  case 39: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 335 "src/parser.y"
                                           {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1949 "src/parser.cpp"
    break;

  case 40: /* @2: %empty  */
#line 340 "src/parser.y"
                               {
        WhileStmt *whileNode = new WhileStmt((yyvsp[-1].exprtype));
        (yyval.stmttype) = whileNode;
        whileS.push(whileNode);
    }
#line 1959 "src/parser.cpp"
    break;

  case 41: /* WhileStmt: WHILE LPAREN Cond RPAREN @2 Stmt  */
#line 344 "src/parser.y"
          {
    	StmtNode *whileNode = (yyvsp[-1].stmttype); 
        ((WhileStmt*)whileNode)->setStmt((yyvsp[0].stmttype));
        (yyval.stmttype)=whileNode;
        whileS.pop();
    }
#line 1970 "src/parser.cpp"
    break;

  case 42: /* BreakStmt: BREAK SEMICOLON  */
#line 352 "src/parser.y"
                      {
        (yyval.stmttype) = new BreakStmt(whileS.top());
    }
#line 1978 "src/parser.cpp"
    break;

  case 43: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 357 "src/parser.y"
                         {
        (yyval.stmttype) = new ContinueStmt(whileS.top());
    }
#line 1986 "src/parser.cpp"
    break;

  case 44: /* ReturnStmt: RETURN Exp SEMICOLON  */
#line 363 "src/parser.y"
                         {
        ifReturn=1;
        Type *retType=(yyvsp[-1].exprtype)->getSymPtr()->getType();
        if(retType->isFunc()){
            if(((FunctionType*)retType)->getRetType()!=funcionRetType)
                fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        else if(retType==TypeSystem::constintType){
            if(funcionRetType!=TypeSystem::intType){
                fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
            }
        }
        else if(retType!=funcionRetType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 2008 "src/parser.cpp"
    break;

  case 45: /* ReturnStmt: RETURN SEMICOLON  */
#line 380 "src/parser.y"
                       {
        ifReturn=1;
        if(funcionRetType!=TypeSystem::voidType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        (yyval.stmttype) = new ReturnStmt();
    }
#line 2020 "src/parser.cpp"
    break;

  case 46: /* Exp: AddExp  */
#line 390 "src/parser.y"
           {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2026 "src/parser.cpp"
    break;

  case 47: /* Cond: LOrExp  */
#line 394 "src/parser.y"
          {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 2032 "src/parser.cpp"
    break;

  case 48: /* Intint: INTEGER  */
#line 398 "src/parser.y"
            {(yyval.itype)=(yyvsp[0].itype);}
#line 2038 "src/parser.cpp"
    break;

  case 49: /* Intint: HEXADECIMAL  */
#line 400 "src/parser.y"
                {(yyval.itype)=(yyvsp[0].itype);}
#line 2044 "src/parser.cpp"
    break;

  case 50: /* Intint: OCTAL  */
#line 402 "src/parser.y"
          {(yyval.itype)=(yyvsp[0].itype);}
#line 2050 "src/parser.cpp"
    break;

  case 51: /* PrimaryExp: LPAREN Exp RPAREN  */
#line 406 "src/parser.y"
                      {(yyval.exprtype)=(yyvsp[-1].exprtype);}
#line 2056 "src/parser.cpp"
    break;

  case 52: /* PrimaryExp: LVal  */
#line 408 "src/parser.y"
         {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2064 "src/parser.cpp"
    break;

  case 53: /* PrimaryExp: Intint  */
#line 411 "src/parser.y"
             {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::intType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 2073 "src/parser.cpp"
    break;

  case 54: /* PrimaryExp: FuncExpr  */
#line 415 "src/parser.y"
               {
    	(yyval.exprtype)=(yyvsp[0].exprtype);
    }
#line 2081 "src/parser.cpp"
    break;

  case 55: /* NotExp: PrimaryExp  */
#line 421 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2087 "src/parser.cpp"
    break;

  case 56: /* NotExp: NOT NotExp  */
#line 423 "src/parser.y"
               {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::NOT, (yyvsp[0].exprtype));        
    }
#line 2096 "src/parser.cpp"
    break;

  case 57: /* NotExp: ADD NotExp  */
#line 428 "src/parser.y"
               {

        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::POS, (yyvsp[0].exprtype));  
    }
#line 2106 "src/parser.cpp"
    break;

  case 58: /* NotExp: SUB NotExp  */
#line 434 "src/parser.y"
               {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::MIN, (yyvsp[0].exprtype));  
    }
#line 2115 "src/parser.cpp"
    break;

  case 59: /* MulExp: NotExp  */
#line 441 "src/parser.y"
           {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 2121 "src/parser.cpp"
    break;

  case 60: /* MulExp: MulExp MUL NotExp  */
#line 444 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MUL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2130 "src/parser.cpp"
    break;

  case 61: /* MulExp: MulExp DIV NotExp  */
#line 450 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIV, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2139 "src/parser.cpp"
    break;

  case 62: /* MulExp: MulExp MOD NotExp  */
#line 456 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2148 "src/parser.cpp"
    break;

  case 63: /* AddExp: MulExp  */
#line 463 "src/parser.y"
          {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 2154 "src/parser.cpp"
    break;

  case 64: /* AddExp: AddExp ADD MulExp  */
#line 466 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2163 "src/parser.cpp"
    break;

  case 65: /* AddExp: AddExp SUB MulExp  */
#line 472 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2172 "src/parser.cpp"
    break;

  case 66: /* RelExp: AddExp  */
#line 479 "src/parser.y"
           {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2178 "src/parser.cpp"
    break;

  case 67: /* RelExp: AddExp LESSEQ RelExp  */
#line 482 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSEQ, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2187 "src/parser.cpp"
    break;

  case 68: /* RelExp: AddExp MOREEQ RelExp  */
#line 488 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOREEQ, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2196 "src/parser.cpp"
    break;

  case 69: /* RelExp: AddExp LESS RelExp  */
#line 494 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2205 "src/parser.cpp"
    break;

  case 70: /* RelExp: AddExp MORE RelExp  */
#line 500 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MORE, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2214 "src/parser.cpp"
    break;

  case 71: /* RelExp: AddExp EQUAL RelExp  */
#line 506 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2223 "src/parser.cpp"
    break;

  case 72: /* RelExp: AddExp NOTEQUAL RelExp  */
#line 512 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::NOTEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2232 "src/parser.cpp"
    break;

  case 73: /* LAndExp: RelExp  */
#line 519 "src/parser.y"
           {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2238 "src/parser.cpp"
    break;

  case 74: /* LAndExp: LAndExp AND RelExp  */
#line 522 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2247 "src/parser.cpp"
    break;

  case 75: /* LOrExp: LAndExp  */
#line 529 "src/parser.y"
            {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2253 "src/parser.cpp"
    break;

  case 76: /* LOrExp: LOrExp OR LAndExp  */
#line 532 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 2262 "src/parser.cpp"
    break;

  case 77: /* Type: CONST INT  */
#line 539 "src/parser.y"
              {
        (yyval.type)=TypeSystem::constintType;
    }
#line 2270 "src/parser.cpp"
    break;

  case 78: /* Type: INT  */
#line 542 "src/parser.y"
          {
        (yyval.type) = TypeSystem::intType;
    }
#line 2278 "src/parser.cpp"
    break;

  case 79: /* Type: VOID  */
#line 545 "src/parser.y"
           {
        (yyval.type) = TypeSystem::voidType;
    }
#line 2286 "src/parser.cpp"
    break;

  case 80: /* ExprStmt: Exp SEMICOLON  */
#line 552 "src/parser.y"
                  {
    	(yyval.stmttype) = new ExprStmt((yyvsp[-1].exprtype));  
    }
#line 2294 "src/parser.cpp"
    break;

  case 81: /* BlankStmt: SEMICOLON  */
#line 557 "src/parser.y"
              {
        (yyval.stmttype) = new BlankStmt();
    }
#line 2302 "src/parser.cpp"
    break;

  case 82: /* FuncExpr: ID LPAREN ParaIDList RPAREN  */
#line 563 "src/parser.y"
                                {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-3].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "function \"%s\" is undefined\n", (char*)(yyvsp[-3].strtype));
            delete [](char*)(yyvsp[-3].strtype);
            assert(se != nullptr);
        }
        Type *type=se->getType();
        std::vector<Type*> paramsType=((FunctionType*)type)->getParaType();
        std::vector<Type*> newParamsType;
        std::queue<ExprNode*> idList = (yyvsp[-1].paraIdList)->getList();
        while(!idList.empty()){
            ExprNode *se0=idList.front();
            Type *t=se0->getSymPtr()->getType();
            newParamsType.emplace_back(t);
            idList.pop();
        }
        int i=0;
        while(i < paramsType.size()){
            if(!((paramsType[i]==TypeSystem::constintType&&newParamsType[i]==TypeSystem::intType)||(paramsType[i]==TypeSystem::intType&&newParamsType[i]==TypeSystem::constintType)||paramsType[i]==newParamsType[i]))
                fprintf(stderr, "the params of \"%s\" is wrong\n", (char*)(yyvsp[-3].strtype));
            i++;
        }
        
    	(yyval.exprtype) = new FuncExpr(se, (yyvsp[-1].paraIdList));
        //delete []$1;   
    }
#line 2336 "src/parser.cpp"
    break;

  case 83: /* $@3: %empty  */
#line 596 "src/parser.y"
                                   {
        ifReturn=0;
        funcionRetType=(yyvsp[-4].type);
        funcName=(yyvsp[-3].strtype);
        Type *funcType;
        std::vector<Type*> paramsType;
        std::queue<SymbolEntry*> idList = (yyvsp[-1].paraList)->getList();
        while(!idList.empty()){
            SymbolEntry *se0=idList.front();
            Type *t=se0->getType();
            paramsType.emplace_back(t);
            idList.pop();
        }
        funcType = new FunctionType((yyvsp[-4].type),paramsType);
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        identifiers = new SymbolTable(identifiers);
    }
#line 2359 "src/parser.cpp"
    break;

  case 84: /* FuncDef: Type ID LPAREN ParaList RPAREN $@3 BlockStmt  */
#line 615 "src/parser.y"
    {   
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-5].strtype));
        (yyval.stmttype) = new FunctionDef(se, (yyvsp[-3].paraList), (yyvsp[0].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        //delete []$2;
        if(ifReturn==0){
            fprintf(stderr, "the function does not have a return\n");
        }
    }
#line 2376 "src/parser.cpp"
    break;

  case 85: /* DeclStmt: Type IDList SEMICOLON  */
#line 631 "src/parser.y"
                          {
        (yyvsp[-1].idlist)->setType((yyvsp[-2].type));
        (yyval.stmttype) = new DeclStmt((yyvsp[-1].idlist));
        //delete []$2;
    }
#line 2386 "src/parser.cpp"
    break;


#line 2390 "src/parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      {
        yypcontext_t yyctx
          = {yyssp, yytoken};
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == -1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *,
                             YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (yymsg)
              {
                yysyntax_error_status
                  = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
                yymsgp = yymsg;
              }
            else
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = YYENOMEM;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == YYENOMEM)
          YYNOMEM;
      }
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
  return yyresult;
}

#line 637 "src/parser.y"


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    std::cout<<yytext<<std::endl;
    std::cout<<yylineno<<std::endl;
    return -1;
}
