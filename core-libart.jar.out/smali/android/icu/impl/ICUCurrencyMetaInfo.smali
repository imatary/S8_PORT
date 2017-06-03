.class public Landroid/icu/impl/ICUCurrencyMetaInfo;
.super Landroid/icu/text/CurrencyMetaInfo;
.source "ICUCurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    }
.end annotation


# static fields
.field private static final Currency:I = 0x2

.field private static final Date:I = 0x4

.field private static final Everything:I = 0x7fffffff

.field private static final MASK:J = 0xffffffffL

.field private static final Region:I = 0x1

.field private static final Tender:I = 0x8


# instance fields
.field private digitInfo:Landroid/icu/impl/ICUResourceBundle;

.field private regionInfo:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/curr"

    const-string/jumbo v2, "supplementalData"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v1, "CurrencyMap"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v1, "CurrencyMeta"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method

.method private collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
            "<TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p2

    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collects()I

    move-result v2

    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget-wide v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_3
    or-int/lit8 v2, v2, 0x4

    :cond_4
    iget-boolean v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x8

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    iget-object v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, v2, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    :cond_6
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->getList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_7
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v3, v1}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
            "<TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            "I",
            "Landroid/icu/impl/ICUResourceBundle;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-ge v10, v3, :cond_7

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const/4 v11, 0x1

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_3

    const-string/jumbo v3, "id"

    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_4

    const-string/jumbo v3, "from"

    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    const-wide/high16 v14, -0x8000000000000000L

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v14, v15, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v6

    const-string/jumbo v3, "to"

    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v14, v15, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v8

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v3, v14, v8

    if-gtz v3, :cond_1

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v3, v14, v6

    if-ltz v3, :cond_1

    :cond_4
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_5

    const-string/jumbo v3, "tender"

    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string/jumbo v3, "true"

    invoke-virtual {v13}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_2
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v3, :cond_5

    if-eqz v11, :cond_1

    :cond_5
    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J
    .locals 8

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v0

    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v1

    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p2, v2, :cond_1

    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2

    :cond_1
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p2, v2, :cond_2

    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v3, v1, v4

    aget v4, v1, v5

    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2

    :cond_2
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v3, v1, v4

    aget v4, v1, v5

    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2
.end method

.method public currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
