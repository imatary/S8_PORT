.class public Landroid/icu/text/DateIntervalFormat;
.super Landroid/icu/text/UFormat;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalFormat$BestMatchInfo;,
        Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    }
.end annotation


# static fields
.field private static LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fDateFormat:Landroid/icu/text/SimpleDateFormat;

.field private fDatePattern:Ljava/lang/String;

.field private fDateTimeFormat:Ljava/lang/String;

.field private fFromCalendar:Landroid/icu/util/Calendar;

.field private fInfo:Landroid/icu/text/DateIntervalInfo;

.field private transient fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fSkeleton:Ljava/lang/String;

.field private fTimePattern:Ljava/lang/String;

.field private fToCalendar:Landroid/icu/util/Calendar;

.field private isDateIntervalInfoDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    new-instance v0, Landroid/icu/text/DateIntervalInfo;

    invoke-direct {v0, p2}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void
.end method

.method private static adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    if-nez p2, :cond_0

    const/4 v14, 0x0

    return-object v14

    :cond_0
    const/16 v14, 0x3a

    new-array v10, v14, [I

    const/16 v14, 0x3a

    new-array v3, v14, [I

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_1

    const/16 v14, 0x76

    const/16 v15, 0x7a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_b

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_5

    if-lez v5, :cond_5

    move v13, v12

    const/16 v14, 0x4c

    if-ne v12, v14, :cond_2

    const/16 v13, 0x4d

    :cond_2
    add-int/lit8 v14, v13, -0x41

    aget v6, v3, v14

    add-int/lit8 v14, v13, -0x41

    aget v9, v10, v14

    if-ne v6, v5, :cond_4

    if-le v9, v6, :cond_4

    sub-int v5, v9, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_3

    invoke-virtual {v1, v7, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v7, v5

    add-int/2addr v2, v5

    :cond_4
    const/4 v5, 0x0

    :cond_5
    const/16 v14, 0x27

    if-ne v4, v14, :cond_9

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v14, v15, :cond_7

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-ne v14, v15, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    if-nez v8, :cond_6

    const/16 v14, 0x61

    if-lt v4, v14, :cond_a

    const/16 v14, 0x7a

    if-gt v4, v14, :cond_a

    :goto_3
    move v12, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    const/16 v14, 0x41

    if-lt v4, v14, :cond_6

    const/16 v14, 0x5a

    if-gt v4, v14, :cond_6

    goto :goto_3

    :cond_b
    if-lez v5, :cond_d

    move v13, v12

    const/16 v14, 0x4c

    if-ne v12, v14, :cond_c

    const/16 v13, 0x4d

    :cond_c
    add-int/lit8 v14, v13, -0x41

    aget v6, v3, v14

    add-int/lit8 v14, v13, -0x41

    aget v9, v10, v14

    if-ne v6, v5, :cond_d

    if-le v9, v6, :cond_d

    sub-int v5, v9, v6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V
    .locals 3

    const-string/jumbo v2, "{0}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "{1}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ge v0, v1, :cond_4

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v1, v2

    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v0, v2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p6, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0
.end method

.method private concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p1, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v2

    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21

    const/16 v19, 0x0

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move/from16 v18, v3

    :goto_1
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    new-instance v8, Ljava/text/FieldPosition;

    invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/text/FieldPosition;-><init>(I)V

    new-instance v17, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v3}, Landroid/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v6, p5

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v4, v3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v9, p0

    move-object/from16 v12, p5

    move-object v14, v8

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :cond_2
    return-object p4

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, p6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p4
.end method

.method private static fieldExistsInSkeleton(ILjava/lang/String;)Z
    .locals 3

    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v1, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)",
            "Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v6

    if-nez v6, :cond_6

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v8, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v12}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v13}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v8, v12, v14, v13}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v12, v12, p1

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    return-object v12

    :cond_0
    const/16 v12, 0x9

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/16 v13, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v12, v12, p1

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v12, 0x0

    return-object v12

    :cond_2
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v12, p1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v6

    if-nez v6, :cond_3

    if-nez p4, :cond_3

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v11

    iget-object v10, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    iget v0, v11, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    move/from16 p4, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, -0x1

    move/from16 v0, p4

    if-eq v0, v12, :cond_3

    iget-object v12, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move/from16 v0, p1

    invoke-virtual {v12, v10, v0}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v6

    move-object/from16 p3, v10

    :cond_3
    if-eqz v6, :cond_6

    new-instance v9, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v12, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v12, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v12

    invoke-direct {v6, v4, v5, v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    sget-object v12, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v12, v12, p1

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v9

    :cond_4
    move-object v6, v7

    goto :goto_1

    :cond_5
    move-object v6, v7

    goto :goto_2

    :cond_6
    move-object v7, v6

    goto :goto_0
.end method

.method private genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, p2

    :goto_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0, v2}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v6

    iget-object v3, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    iget v4, v6, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    :cond_1
    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    return v1

    :cond_2
    move-object v2, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x5

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/4 v1, 0x2

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v3, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    iget-object v2, v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    :cond_4
    move-object v0, p0

    move v1, v8

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    :goto_1
    return v8

    :cond_5
    const/16 v1, 0xc

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0xa

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0x9

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    goto :goto_1
.end method

.method private static getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v10, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_1

    const/16 v12, 0x79

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    const/4 v12, 0x3

    if-ge v3, v12, :cond_9

    const/16 v12, 0x4d

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_3

    const/4 v12, 0x3

    if-gt v1, v12, :cond_a

    const/16 v12, 0x45

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    const/16 v12, 0x64

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v2, :cond_b

    const/16 v12, 0x48

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    const/16 v12, 0x6d

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v11, :cond_7

    const/16 v12, 0x7a

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v9, :cond_8

    const/16 v12, 0x76

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    return-void

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_2

    const/4 v12, 0x5

    if-ge v7, v12, :cond_2

    const/16 v12, 0x4d

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_3

    const/4 v12, 0x5

    if-ge v7, v12, :cond_3

    const/16 v12, 0x45

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_5

    const/16 v12, 0x68

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;
    .locals 4

    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 4

    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DateIntervalInfo;

    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p2, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method private initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getSkeleton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v10, v1, v12}, Landroid/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-eqz v20, :cond_1

    new-instance v3, Landroid/icu/impl/CalendarData;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x8

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-nez v20, :cond_2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "yMd"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v9

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-nez v20, :cond_4

    :goto_0
    return-object v9

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "yMd"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v22, 0x5

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v0, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9, v7}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    const-string/jumbo v20, "{1} {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    :cond_9
    invoke-virtual {v7, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v5, v2, v9}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_0
.end method

.method private initializePattern(Landroid/icu/impl/ICUCache;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    :cond_0
    if-nez v4, :cond_1

    invoke-direct {p0, v0, v3}, Landroid/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-interface {p1, v2, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/SimpleDateFormat;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public final format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16

    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "can not format on two different calendars"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v10, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v10, 0x0

    :goto_0
    const/16 v3, 0x9

    if-eq v10, v3, :cond_1

    const/16 v3, 0xa

    if-ne v10, v3, :cond_a

    :cond_1
    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v4, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, v10}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_4

    const/4 v10, 0x2

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    const/4 v10, 0x5

    goto :goto_0

    :cond_5
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_6

    const/16 v10, 0x9

    goto :goto_0

    :cond_6
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_7

    const/16 v10, 0xa

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_8

    const/16 v10, 0xc

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_9

    const/16 v10, 0xd

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    return-object v3

    :cond_a
    const/16 v3, 0xc

    if-eq v10, v3, :cond_1

    const/16 v3, 0xd

    if-eq v10, v3, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    return-object v3

    :cond_c
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    return-object v3

    :cond_d
    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v11, p2

    move-object/from16 v15, p1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v11, v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v12}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v14, Ljava/text/FieldPosition;

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/text/FieldPosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v0, v14}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v14}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    if-lez v3, :cond_e

    move-object/from16 p4, v14

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, v13}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p3

    :cond_f
    move-object/from16 v11, p1

    move-object/from16 v15, p2

    goto :goto_2
.end method

.method public final format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getFromDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getToDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    instance-of v0, p1, Landroid/icu/util/DateInterval;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/util/DateInterval;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot format given Object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") as a DateInterval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateFormat()Landroid/icu/text/DateFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    return-object v0
.end method

.method public getDateIntervalInfo()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    return-object v0
.end method

.method public getPatterns(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_5

    const/16 v0, 0xa

    goto :goto_0

    :cond_5
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    const/16 v0, 0xc

    goto :goto_0

    :cond_6
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_7

    const/16 v0, 0xd

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDateIntervalInfo(Landroid/icu/text/DateIntervalInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 2

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_1
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_2
    return-void
.end method
