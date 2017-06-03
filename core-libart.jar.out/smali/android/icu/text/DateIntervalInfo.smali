.class public Landroid/icu/text/DateIntervalInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalInfo$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/DateIntervalInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

.field private static final DEBUG_SKELETON:Ljava/lang/String; = null

.field private static final DIICACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static EARLIEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static FALLBACK_STRING:Ljava/lang/String; = null

.field private static LATEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static final MINIMUM_SUPPORTED_CALENDAR_FIELD:I = 0xd

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fFallbackIntervalPattern:Ljava/lang/String;

.field private fFirstDateInPtnIsLaterDate:Z

.field private fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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

.field private transient fIntervalPatternsReadOnly:Z

.field private volatile transient frozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "G"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "y"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "M"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "w"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "W"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "D"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "E"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "F"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "H"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "m"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "s"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "S"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "z"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, " "

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Y"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "u"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "g"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "A"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, " "

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, " "

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const-string/jumbo v0, "fallback"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    const-string/jumbo v0, "latestFirst:"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    const-string/jumbo v0, "earliestFirst:"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string/jumbo v0, "{0} \u2013 {1}"

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->initializeData(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private cloneUnfrozenDII()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v2}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string/jumbo v3, "clone is not supported"

    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/text/DateIntervalInfo;->splitPatternInto2Part(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-direct {v3, v0, v1, p1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3
.end method

.method private initializeData(Landroid/icu/util/ULocale;)V
    .locals 4

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->setup(Landroid/icu/util/ULocale;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    sget-object v3, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalInfo;->initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V

    goto :goto_0
.end method

.method private initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V
    .locals 1

    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    return-void
.end method

.method static parseSkeleton(Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V
    .locals 2

    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 7

    iget-object v6, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-static {p3, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v2

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v6, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2

    :cond_3
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private setup(Landroid/icu/util/ULocale;)V
    .locals 30

    const/16 v3, 0x13

    new-instance v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string/jumbo v27, "{0} \u2013 {1}"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v6, p1

    :try_start_0
    const-string/jumbo v27, "calendar"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v27, "calendar"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v19

    const/16 v27, 0x0

    aget-object v5, v19, v27

    :cond_0
    if-nez v5, :cond_11

    const-string/jumbo v5, "gregorian"
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v6

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_2

    move-object v6, v7

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v27, "android/icu/impl/data/icudt56b"

    move-object/from16 v0, v27

    invoke-static {v0, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v22

    check-cast v22, Landroid/icu/impl/ICUResourceBundle;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "calendar/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "/intervalFormats"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v12

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/text/DateIntervalInfo;->setFallbackIntervalPattern(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v23

    const/4 v10, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v10, v0, :cond_10

    invoke-virtual {v12, v10}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v24

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v21

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v13

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\u0001"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v18

    const/4 v4, -0x1

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0x1

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/4 v4, 0x1

    :cond_7
    :goto_5
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->DEBUG_SKELETON:Ljava/lang/String;

    if-eqz v27, :cond_f

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->DEBUG_SKELETON:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", skeleton: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", oldValue: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", newValue: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_0
    move-exception v8

    move-object v6, v7

    goto/16 :goto_1

    :cond_8
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0x2

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const/4 v4, 0x2

    goto/16 :goto_5

    :cond_9
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0x5

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/4 v4, 0x5

    goto/16 :goto_5

    :cond_a
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0x9

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    const/16 v4, 0x9

    goto/16 :goto_5

    :cond_b
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xa

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v4, 0xa

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xa

    aget-object v13, v27, v28

    goto/16 :goto_5

    :cond_c
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xb

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v4, 0xa

    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xa

    aget-object v13, v27, v28

    goto/16 :goto_5

    :cond_d
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xc

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    const/16 v4, 0xc

    goto/16 :goto_5

    :cond_e
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v28, 0xd

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    const/16 v4, 0xd

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_10
    :try_start_2
    const-string/jumbo v27, "%%Parent"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v17

    new-instance v6, Landroid/icu/util/ULocale;

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "root"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v27

    if-nez v27, :cond_1

    :cond_11
    move-object v7, v6

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    goto :goto_6

    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method

.method private static splitPatternInto2Part(Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x27

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x3a

    new-array v5, v8, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v8, v6, -0x41

    aget v7, v5, v8

    if-nez v7, :cond_2

    add-int/lit8 v8, v6, -0x41

    const/4 v9, 0x1

    aput v9, v5, v8

    const/4 v1, 0x0

    :cond_0
    if-ne v0, v10, :cond_7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-lez v1, :cond_4

    if-nez v2, :cond_4

    add-int/lit8 v8, v6, -0x41

    aget v8, v5, v8

    if-nez v8, :cond_4

    const/4 v1, 0x0

    :cond_4
    sub-int v8, v3, v1

    return v8

    :cond_5
    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v4, :cond_1

    const/16 v8, 0x61

    if-lt v0, v8, :cond_8

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_8

    :goto_2
    move v6, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/16 v8, 0x41

    if-lt v0, v8, :cond_1

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_1

    goto :goto_2
.end method

.method private static stringNumeric(IIC)Z
    .locals 2

    const/4 v1, 0x2

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_2

    if-gt p0, v1, :cond_1

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    if-le p0, v1, :cond_2

    if-le p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->cloneAsThawed()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Landroid/icu/text/DateIntervalInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iget-object v2, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public freeze()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    .locals 21

    move-object/from16 v8, p1

    const/16 v19, 0x3a

    move/from16 v0, v19

    new-array v14, v0, [I

    const/16 v19, 0x3a

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v4, 0x1000

    const/16 v5, 0x100

    const/16 v3, 0x41

    const/4 v15, 0x0

    const/16 v19, 0x7a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v19, 0x7a

    const/16 v20, 0x76

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v15, 0x1

    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    const/16 v19, 0x0

    aput v19, v18, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_7

    aget v13, v14, v12

    aget v11, v18, v12

    if-ne v13, v11, :cond_3

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    if-nez v13, :cond_4

    const/4 v10, -0x1

    add-int/lit16 v9, v9, 0x1000

    goto :goto_2

    :cond_4
    if-nez v11, :cond_5

    const/4 v10, -0x1

    add-int/lit16 v9, v9, 0x1000

    goto :goto_2

    :cond_5
    add-int/lit8 v19, v12, 0x41

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v13, v11, v0}, Landroid/icu/text/DateIntervalInfo;->stringNumeric(IIC)Z

    move-result v19

    if-eqz v19, :cond_6

    add-int/lit16 v9, v9, 0x100

    goto :goto_2

    :cond_6
    sub-int v19, v13, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    add-int v9, v9, v19

    goto :goto_2

    :cond_7
    if-ge v9, v6, :cond_8

    move-object/from16 v8, v16

    move v6, v9

    move v7, v10

    :cond_8
    if-nez v9, :cond_1

    const/4 v7, 0x0

    :cond_9
    if-eqz v15, :cond_a

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_a

    const/4 v7, 0x2

    :cond_a
    new-instance v19, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v7}, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;-><init>(Ljava/lang/String;I)V

    return-object v19
.end method

.method public getDefaultOrder()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    return v0
.end method

.method public getFallbackIntervalPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xd

    if-le p2, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no support for field less than SECOND"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method public getPatterns()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return v0
.end method

.method public setFallbackIntervalPattern(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "no modification is allowed after DII is frozen"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "{0}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "{1}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no pattern {0} or pattern {1} in fallbackPattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    :cond_3
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void
.end method

.method public setIntervalPattern(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "no modification is allowed after DII is frozen"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v1, 0xd

    if-le p2, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "calendar field is larger than MINIMUM_SUPPORTED_CALENDAR_FIELD"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v1}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    :cond_2
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p0, p1, v1, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_4

    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eq p2, v2, :cond_5

    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    :cond_5
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    goto :goto_0
.end method
