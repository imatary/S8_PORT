.class Landroid/icu/util/Calendar$PatternData;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternData"
.end annotation


# instance fields
.field private overrides:[Ljava/lang/String;

.field private patterns:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;

    return-void
.end method

.method private getDateTimePattern(I)Ljava/lang/String;
    .locals 4

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, v2, 0x8

    :cond_0
    iget-object v2, p0, Landroid/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;

    aget-object v0, v2, v1

    return-object v0
.end method

.method private static make(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/icu/util/Calendar;->-get1()Landroid/icu/impl/ICUCache;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/Calendar$PatternData;

    if-nez v4, :cond_0

    :try_start_0
    new-instance v0, Landroid/icu/impl/CalendarData;

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    new-instance v4, Landroid/icu/util/Calendar$PatternData;

    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getOverrides()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->-get1()Landroid/icu/impl/ICUCache;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v4

    :catch_0
    move-exception v2

    new-instance v4, Landroid/icu/util/Calendar$PatternData;

    invoke-static {}, Landroid/icu/util/Calendar;->-get0()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
