.class public Landroid/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateTimePatternGenerator$DTPGflags;,
        Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;,
        Landroid/icu/text/DateTimePatternGenerator$FormatParser;,
        Landroid/icu/text/DateTimePatternGenerator$PatternInfo;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;,
        Landroid/icu/text/DateTimePatternGenerator$VariableField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/DateTimePatternGenerator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CANONICAL_ITEMS:[Ljava/lang/String;

.field private static final CANONICAL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLDR_FIELD_APPEND:[Ljava/lang/String;

.field private static final CLDR_FIELD_NAME:[Ljava/lang/String;

.field private static final DATE_MASK:I = 0x3ff

.field public static final DAY:I = 0x7

.field public static final DAYPERIOD:I = 0xa

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x9

.field public static final DAY_OF_YEAR:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DELTA:I = 0x10

.field private static DTPNG_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:I = 0x0

.field private static final EXTRA_FIELD:I = 0x10000

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FRACTIONAL_MASK:I = 0x4000

.field public static final FRACTIONAL_SECOND:I = 0xe

.field public static final HOUR:I = 0xb

.field private static final LONG:I = -0x103

.field public static final MATCH_ALL_FIELDS_LENGTH:I = 0xffff

.field public static final MATCH_HOUR_FIELD_LENGTH:I = 0x800

.field public static final MATCH_MINUTE_FIELD_LENGTH:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_NO_OPTIONS:I = 0x0

.field public static final MATCH_SECOND_FIELD_LENGTH:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:I = 0xc

.field private static final MISSING_FIELD:I = 0x1000

.field public static final MONTH:I = 0x3

.field private static final NARROW:I = -0x101

.field private static final NONE:I = 0x0

.field private static final NUMERIC:I = 0x100

.field public static final QUARTER:I = 0x2

.field public static final SECOND:I = 0xd

.field private static final SECOND_AND_FRACTIONAL_MASK:I = 0x6000

.field private static final SHORT:I = -0x102

.field private static final TIME_MASK:I = 0xfc00

.field public static final TYPE_LIMIT:I = 0x10

.field public static final WEEKDAY:I = 0x6

.field public static final WEEK_OF_MONTH:I = 0x5

.field public static final WEEK_OF_YEAR:I = 0x4

.field public static final YEAR:I = 0x1

.field public static final ZONE:I = 0xf

.field private static final types:[[I


# instance fields
.field private transient _distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

.field private appendItemFormats:[Ljava/lang/String;

.field private appendItemNames:[Ljava/lang/String;

.field private basePattern_pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field

.field private cldrAvailableFormatKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field private dateTimeFormat:Ljava/lang/String;

.field private decimal:Ljava/lang/String;

.field private defaultHourFormatChar:C

.field private transient fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

.field private volatile frozen:Z

.field private skeleton2pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[[I
    .locals 1

    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/16 v8, 0xf

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Era"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Year"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Quarter"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Month"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Week"

    aput-object v1, v0, v9

    const-string/jumbo v1, "*"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Day-Of-Week"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Day"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hour"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Minute"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Second"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Timezone"

    aput-object v1, v0, v8

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "era"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "year"

    aput-object v1, v0, v5

    const-string/jumbo v1, "*"

    aput-object v1, v0, v6

    const-string/jumbo v1, "month"

    aput-object v1, v0, v7

    const-string/jumbo v1, "week"

    aput-object v1, v0, v9

    const-string/jumbo v1, "*"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "weekday"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "day"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "dayperiod"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "hour"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "minute"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "second"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "zone"

    aput-object v1, v0, v8

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Era"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Year"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Quarter"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Month"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Week_in_Year"

    aput-object v1, v0, v9

    const-string/jumbo v1, "Week_in_Month"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Weekday"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Day"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Day_Of_Year"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Day_of_Week_in_Month"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Dayperiod"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hour"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Minute"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Second"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fractional_Second"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Zone"

    aput-object v1, v0, v8

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "G"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "y"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Q"

    aput-object v1, v0, v6

    const-string/jumbo v1, "M"

    aput-object v1, v0, v7

    const-string/jumbo v1, "w"

    aput-object v1, v0, v9

    const-string/jumbo v1, "W"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "E"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "d"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "D"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "F"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "H"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "m"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "s"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "S"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "v"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    const/16 v0, 0x43

    new-array v0, v0, [[I

    const/16 v1, 0x47

    const/4 v2, 0x0

    const/16 v3, -0x102

    filled-new-array {v1, v2, v3, v5, v7}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x47

    const/4 v2, 0x0

    const/16 v3, -0x103

    filled-new-array {v1, v2, v3, v9}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x79

    const/16 v2, 0x100

    const/16 v3, 0x14

    filled-new-array {v1, v5, v2, v5, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x59

    const/16 v2, 0x110

    const/16 v3, 0x14

    filled-new-array {v1, v5, v2, v5, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x75

    const/16 v2, 0x120

    const/16 v3, 0x14

    filled-new-array {v1, v5, v2, v5, v3}, [I

    move-result-object v1

    aput-object v1, v0, v9

    const/16 v1, 0x72

    const/16 v2, 0x130

    const/16 v3, 0x14

    filled-new-array {v1, v5, v2, v5, v3}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, -0x102

    filled-new-array {v1, v5, v2, v5, v7}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, -0x103

    filled-new-array {v1, v5, v2, v9}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, -0x101

    const/4 v3, 0x5

    filled-new-array {v1, v5, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0x100

    filled-new-array {v1, v6, v2, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, -0x102

    filled-new-array {v1, v6, v2, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, -0x103

    filled-new-array {v1, v6, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, 0x110

    filled-new-array {v1, v6, v2, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, -0xf2

    filled-new-array {v1, v6, v2, v7}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, -0xf3

    filled-new-array {v1, v6, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, 0x100

    filled-new-array {v1, v7, v2, v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x4d

    const/16 v2, -0x102

    filled-new-array {v1, v7, v2, v7}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, -0x103

    filled-new-array {v1, v7, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, -0x101

    const/4 v3, 0x5

    filled-new-array {v1, v7, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0x110

    filled-new-array {v1, v7, v2, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, -0x112

    filled-new-array {v1, v7, v2, v7}, [I

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, -0x113

    filled-new-array {v1, v7, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, -0x111

    const/4 v3, 0x5

    filled-new-array {v1, v7, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v1, 0x6c

    const/16 v2, 0x110

    filled-new-array {v1, v7, v2, v5, v5}, [I

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x77

    const/16 v2, 0x100

    filled-new-array {v1, v9, v2, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v1, 0x57

    const/4 v2, 0x5

    const/16 v3, 0x110

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v1, 0x45

    const/4 v2, 0x6

    const/16 v3, -0x102

    filled-new-array {v1, v2, v3, v5, v7}, [I

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v1, 0x45

    const/4 v2, 0x6

    const/16 v3, -0x103

    filled-new-array {v1, v2, v3, v9}, [I

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v1, 0x45

    const/4 v2, 0x6

    const/16 v3, -0x101

    const/4 v4, 0x5

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v1, 0x63

    const/4 v2, 0x6

    const/16 v3, 0x120

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v1, 0x63

    const/4 v2, 0x6

    const/16 v3, -0x122

    filled-new-array {v1, v2, v3, v7}, [I

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v1, 0x63

    const/4 v2, 0x6

    const/16 v3, -0x123

    filled-new-array {v1, v2, v3, v9}, [I

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x63

    const/4 v2, 0x6

    const/16 v3, -0x121

    const/4 v4, 0x5

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/16 v1, 0x65

    const/4 v2, 0x6

    const/16 v3, 0x110

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v1, 0x65

    const/4 v2, 0x6

    const/16 v3, -0x112

    filled-new-array {v1, v2, v3, v7}, [I

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/16 v1, 0x65

    const/4 v2, 0x6

    const/16 v3, -0x113

    filled-new-array {v1, v2, v3, v9}, [I

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/16 v1, 0x65

    const/4 v2, 0x6

    const/16 v3, -0x111

    const/4 v4, 0x5

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/16 v1, 0x64

    const/4 v2, 0x7

    const/16 v3, 0x100

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/16 v1, 0x44

    const/16 v2, 0x8

    const/16 v3, 0x110

    filled-new-array {v1, v2, v3, v5, v7}, [I

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0x9

    const/16 v3, 0x120

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/16 v1, 0x67

    const/4 v2, 0x7

    const/16 v3, 0x130

    const/16 v4, 0x14

    filled-new-array {v1, v2, v3, v5, v4}, [I

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const/16 v1, 0x61

    const/16 v2, 0xa

    const/16 v3, -0x102

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0x48

    const/16 v2, 0xb

    const/16 v3, 0x1a0

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/16 v1, 0x6b

    const/16 v2, 0xb

    const/16 v3, 0x1b0

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/16 v1, 0x68

    const/16 v2, 0xb

    const/16 v3, 0x100

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const/16 v1, 0x4b

    const/16 v2, 0xb

    const/16 v3, 0x110

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v1, 0x6d

    const/16 v2, 0xc

    const/16 v3, 0x100

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const/16 v1, 0x73

    const/16 v2, 0xd

    const/16 v3, 0x100

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/16 v1, 0x53

    const/16 v2, 0xe

    const/16 v3, 0x110

    const/16 v4, 0x3e8

    filled-new-array {v1, v2, v3, v5, v4}, [I

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const/16 v1, 0x41

    const/16 v2, 0xd

    const/16 v3, 0x120

    const/16 v4, 0x3e8

    filled-new-array {v1, v2, v3, v5, v4}, [I

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, -0x122

    filled-new-array {v1, v8, v2, v5}, [I

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, -0x123

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v1, 0x7a

    const/16 v2, -0x102

    filled-new-array {v1, v8, v2, v5, v7}, [I

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const/16 v1, 0x7a

    const/16 v2, -0x103

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, -0x111

    filled-new-array {v1, v8, v2, v5, v7}, [I

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, -0x113

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, -0x112

    const/4 v3, 0x5

    filled-new-array {v1, v8, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, -0x112

    filled-new-array {v1, v8, v2, v5}, [I

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, -0x113

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, -0x112

    filled-new-array {v1, v8, v2, v5}, [I

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, -0x113

    filled-new-array {v1, v8, v2, v6}, [I

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, -0x111

    filled-new-array {v1, v8, v2, v5}, [I

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, -0x112

    filled-new-array {v1, v8, v2, v6}, [I

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, -0x113

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, -0x111

    filled-new-array {v1, v8, v2, v5}, [I

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, -0x112

    filled-new-array {v1, v8, v2, v6}, [I

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, -0x113

    filled-new-array {v1, v8, v2, v9}, [I

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    const-string/jumbo v1, "?"

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    const-string/jumbo v1, "{1} {0}"

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    const-string/jumbo v2, "{0} \u251c{2}: {1}\u2524"

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    iput-char v1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v1, v5}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v1, v5}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->complete()V

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    return-void
.end method

.method private adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-object/from16 v19, v0

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object/from16 v18, v6

    check-cast v18, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v17

    sget-object v19, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0xd

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xe

    aget-object v9, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get1(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I

    move-result-object v19

    aget v19, v19, v17

    if-eqz v19, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->-get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;

    move-result-object v19

    aget-object v12, v19, v17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x45

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_3

    const/4 v13, 0x3

    :cond_3
    move v2, v13

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/16 v19, 0xb

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_8

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :cond_5
    :goto_1
    const/16 v19, 0xb

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x59

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_2
    const/16 v19, 0xb

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    sget-object v19, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-char v3, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_3
    if-lez v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    const/16 v19, 0xc

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_4

    :cond_9
    const/16 v19, 0xd

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x2000

    move/from16 v19, v0

    if-eqz v19, :cond_4

    :cond_a
    if-eqz v8, :cond_5

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->origStringForField(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->isNumeric()Z

    move-result v11

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->fieldIsNumeric(I)Z

    move-result v15

    move/from16 v0, v16

    if-eq v0, v13, :cond_c

    if-eqz v11, :cond_b

    if-eqz v15, :cond_c

    :cond_b
    if-eqz v15, :cond_5

    if-nez v11, :cond_5

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    goto/16 :goto_1

    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19
.end method

.method private checkFrozen()V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private complete()V
    .locals 4

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAppendFormat(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getAppendFormatNumber(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getAppendName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "I",
            "Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v4

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v4, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-eqz v9, :cond_1

    move-object/from16 v0, p3

    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    and-int/lit16 v9, v9, 0x6000

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_0

    and-int/lit16 v9, p2, 0x6000

    const/16 v10, 0x6000

    if-ne v9, v10, :cond_0

    iput-object v3, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p5

    sget-object v9, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v4, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    and-int/lit16 v9, v9, -0x4001

    move-object/from16 v0, p3

    iput v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    iget v5, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    move-object/from16 v0, p3

    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v9, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v7

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v7, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    iget v9, v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    not-int v9, v9

    and-int v2, v5, v9

    invoke-direct {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I

    move-result v8

    invoke-direct {p0, v8}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-direct {p0, v8}, Landroid/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;
    .locals 17

    const-class v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v14, v2, :cond_4

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v2, 0x27

    if-ne v13, v2, :cond_2

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    if-nez v11, :cond_0

    const/16 v2, 0x6a

    if-ne v13, v2, :cond_3

    move-object/from16 v0, p0

    iget-char v2, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    invoke-virtual {v15, v14, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x4a

    if-ne v13, v2, :cond_0

    const/16 v2, 0x48

    invoke-virtual {v15, v14, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v7, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v4, v3, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v2, v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v2, v7, v1}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    and-int/lit16 v4, v12, 0x3ff

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const v2, 0xfc00

    and-int v4, v12, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    monitor-exit p0

    if-nez v10, :cond_7

    if-nez v16, :cond_6

    const-string/jumbo v16, ""

    :cond_6
    return-object v16

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    if-nez v16, :cond_8

    return-object v10

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DateTimePatternGenerator;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .locals 9

    const/4 v8, 0x0

    const v0, 0x7fffffff

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const-string/jumbo v7, ""

    invoke-direct {v1, v7, v8}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    new-instance v4, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v4, v8}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v5, p4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v5, p2, v4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v7, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    iget-object v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v7, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    iget-boolean v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v7, :cond_2

    iput-object v5, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    :goto_0
    invoke-virtual {p3, v4}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    if-nez v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    iput-object v8, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    goto :goto_0
.end method

.method private static getCanonicalIndex(Ljava/lang/String;Z)I
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v1, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_1
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v6, v6

    if-ge v2, v6, :cond_5

    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v4, v6, v2

    aget v6, v4, v7

    if-eq v6, v1, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    const/4 v6, 0x3

    aget v6, v4, v6

    if-gt v6, v3, :cond_3

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    if-lt v6, v3, :cond_3

    return v2

    :cond_5
    if-eqz p1, :cond_6

    move v0, v5

    :cond_6
    return v0
.end method

.method public static getEmptyInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    new-instance v0, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    return-object v0
.end method

.method private static getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/icu/text/DateTimePatternGenerator;

    if-eqz v27, :cond_0

    return-object v27

    :cond_0
    new-instance v27, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct/range {v27 .. v27}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    new-instance v28, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct/range {v28 .. v28}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    const/16 v29, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 v31, 0x3

    move/from16 v0, v17

    move/from16 v1, v31

    if-gt v0, v1, :cond_3

    move/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v6

    check-cast v6, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    move/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v6

    check-cast v6, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    const/16 v31, 0x3

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v29

    new-instance v16, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct/range {v16 .. v16}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v21

    const/16 v18, 0x0

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v11, v19

    check-cast v11, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v11}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v31

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    invoke-virtual {v11}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput-char v0, v1, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v31, "android/icu/impl/data/icudt56b"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v26

    check-cast v26, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v31, "calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v31, "calendar"

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v25

    const/16 v31, 0x0

    aget-object v5, v25, v31

    :cond_4
    if-nez v5, :cond_5

    const-string/jumbo v5, "gregorian"

    :cond_5
    :try_start_0
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "calendar/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/appendItems"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v20

    const/16 v17, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v31

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v30

    invoke-static {v14}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :catch_0
    move-exception v9

    :cond_6
    :try_start_1
    const-string/jumbo v31, "fields"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v20

    const/16 v17, 0x0

    :goto_3
    const/16 v31, 0x10

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    invoke-static/range {v17 .. v17}, Landroid/icu/text/DateTimePatternGenerator;->isCLDRFieldName(I)Z

    move-result v31

    if-eqz v31, :cond_7

    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    aget-object v31, v31, v17

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    const-string/jumbo v31, "dn"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemName(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :catch_1
    move-exception v9

    :cond_8
    const/4 v4, 0x0

    :try_start_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "calendar/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/availableFormats"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    :goto_4
    const/16 v23, 0x1

    :cond_9
    :goto_5
    if-eqz v4, :cond_c

    const/16 v17, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v31

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_a

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Landroid/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v27

    move/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v15, v13, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v24

    check-cast v24, Landroid/icu/impl/ICUResourceBundle;

    if-nez v24, :cond_e

    :cond_c
    if-eqz v29, :cond_d

    invoke-static/range {v27 .. v29}, Landroid/icu/text/DateTimePatternGenerator;->hackTimes(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V

    :cond_d
    invoke-static/range {p0 .. p0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v31

    const/16 v32, 0x2

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    new-instance v7, Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    sget-object v31, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v27

    :cond_e
    :try_start_3
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "calendar/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/availableFormats"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    :goto_7
    if-eqz v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "root"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    const/16 v23, 0x0

    goto/16 :goto_5

    :catch_2
    move-exception v9

    const/4 v4, 0x0

    goto :goto_7

    :catch_3
    move-exception v9

    goto/16 :goto_4
.end method

.method public static getInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    sget-object v5, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v6, v6, v0

    aget v6, v6, v2

    aget-object v1, v5, v6

    sget-object v5, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget v3, v5, v6

    if-gez v3, :cond_1

    :goto_0
    if-eqz v2, :cond_0

    neg-int v3, v3

    :cond_0
    if-gez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":N"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v5, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "G"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getTopBitNumber(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private static hackTimes(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
    .locals 13

    const/16 v12, 0x73

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v9, p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz v1, :cond_0

    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x6d

    if-ne v0, v9, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v0, v12, :cond_7

    if-nez v1, :cond_6

    :cond_3
    :goto_2
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_9

    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->-get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v9, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_4

    const/16 v9, 0x53

    if-ne v0, v9, :cond_5

    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v3, -0x1

    :goto_4
    if-ltz v5, :cond_5

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v11, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    goto :goto_2

    :cond_7
    if-nez v1, :cond_3

    const/16 v9, 0x7a

    if-eq v0, v9, :cond_3

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_3

    const/16 v9, 0x76

    if-eq v0, v9, :cond_3

    const/16 v9, 0x56

    if-ne v0, v9, :cond_0

    goto :goto_2

    :cond_8
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    iget-object v9, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v9, v7}, Landroid/icu/text/DateTimePatternGenerator;->getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v11, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private isAvailableFormatSet(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isCLDRFieldName(I)Z
    .locals 3

    const/4 v2, 0x0

    if-gez p0, :cond_0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isSingleField(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private setAvailableFormat(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static showMask(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    if-nez p2, :cond_2

    new-instance v7, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v7, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v7, p1, v8, v6}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz v3, :cond_0

    iget-boolean v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v7, :cond_3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v7, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz v4, :cond_4

    const/4 v7, 0x2

    iput v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    iget-object v7, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_4

    iget-boolean v7, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v7, :cond_4

    :cond_1
    return-object p0

    :cond_2
    new-instance v7, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v7, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v7, p2, v8, v6}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v1

    goto :goto_0

    :cond_3
    iput v5, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    iget-object v7, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-nez p3, :cond_0

    return-object p0

    :cond_4
    iput v6, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    const-string/jumbo v7, ""

    iput-object v7, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz p2, :cond_5

    :goto_1
    invoke-direct {v2, p1, v5}, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;-><init>(Ljava/lang/String;Z)V

    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    iput-object v2, v1, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string/jumbo v3, "Internal Error"

    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getAppendItemFormat(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAppendItemName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public getBestPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBestPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDateTimeFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultHourFormatChar()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v3, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    move-object p1, v2

    :cond_0
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    iget-object v3, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v0, v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    monitor-exit p0

    return-object p1
.end method

.method public getSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSkeletons(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    iget-object v2, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    sget-object v4, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return v0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DateTimePatternGenerator;->replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v1

    const-class v2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAppendItemFormat(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public setAppendItemName(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public setDecimal(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-void
.end method

.method public setDefaultHourFormatChar(C)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-char p1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return-void
.end method

.method public skeletonsAreSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return v11

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v9

    if-eq v8, v9, :cond_1

    return v10

    :cond_1
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v10}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v1

    sget-object v8, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v8, v8, v0

    aget v8, v8, v11

    sget-object v9, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v9, v9, v1

    aget v9, v9, v11

    if-eq v8, v9, :cond_2

    return v10

    :cond_3
    return v11
.end method
