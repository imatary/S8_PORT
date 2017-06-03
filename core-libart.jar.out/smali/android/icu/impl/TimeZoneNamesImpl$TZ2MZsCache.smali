.class Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZ2MZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    return-void
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 18

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v11, 0x3

    if-gt v6, v11, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v9, v11, -0x30

    if-ltz v9, :cond_0

    const/16 v11, 0xa

    if-ge v9, v11, :cond_0

    mul-int/lit8 v11, v10, 0xa

    add-int v10, v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Bad year"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    const/4 v6, 0x5

    :goto_1
    const/4 v11, 0x6

    if-gt v6, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v9, v11, -0x30

    if-ltz v9, :cond_2

    const/16 v11, 0xa

    if-ge v9, v11, :cond_2

    mul-int/lit8 v11, v8, 0xa

    add-int v8, v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Bad month"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    const/16 v6, 0x8

    :goto_2
    const/16 v11, 0x9

    if-gt v6, v11, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v9, v11, -0x30

    if-ltz v9, :cond_4

    const/16 v11, 0xa

    if-ge v9, v11, :cond_4

    mul-int/lit8 v11, v4, 0xa

    add-int v4, v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Bad day"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    const/16 v6, 0xb

    :goto_3
    const/16 v11, 0xc

    if-gt v6, v11, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v9, v11, -0x30

    if-ltz v9, :cond_6

    const/16 v11, 0xa

    if-ge v9, v11, :cond_6

    mul-int/lit8 v11, v5, 0xa

    add-int v5, v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Bad hour"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    const/16 v6, 0xe

    :goto_4
    const/16 v11, 0xf

    if-gt v6, v11, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v9, v11, -0x30

    if-ltz v9, :cond_8

    const/16 v11, 0xa

    if-ge v9, v11, :cond_8

    mul-int/lit8 v11, v7, 0xa

    add-int v7, v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Bad minute"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_9
    add-int/lit8 v11, v8, -0x1

    invoke-static {v10, v11, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v12, v14

    int-to-long v14, v5

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    int-to-long v14, v7

    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    add-long v2, v12, v14

    return-wide v2
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x0

    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    const-string/jumbo v19, "metaZones"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    const-string/jumbo v2, "metazoneInfo"

    invoke-virtual {v8, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    const/16 v2, 0x2f

    const/16 v19, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    if-ge v10, v2, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "1970-01-01 00:00"

    const-string/jumbo v16, "9999-12-31 23:59"

    invoke-virtual {v13}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_0
    invoke-static {v9}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v2, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object v14, v15

    :goto_1
    return-object v14

    :catch_0
    move-exception v12

    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    goto :goto_1

    :catch_1
    move-exception v12

    move-object v14, v15

    goto :goto_2
.end method
