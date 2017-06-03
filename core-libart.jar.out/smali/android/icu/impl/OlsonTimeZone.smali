.class public Landroid/icu/impl/OlsonTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final MAX_OFFSET_SECONDS:I = 0x15180

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final ZONEINFORES:Ljava/lang/String; = "zoneinfo64"

.field private static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private volatile canonicalID:Ljava/lang/String;

.field private finalStartMillis:D

.field private finalStartYear:I

.field private finalZone:Landroid/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private serialVersionOnStream:I

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes64:[J

.field private typeCount:I

.field private typeMapData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    const-string/jumbo v0, "olson"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    iput-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iput-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    const-string/jumbo v3, "zoneinfo64"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V
    .locals 25

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    sget-boolean v2, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OlsonTimeZone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    :try_start_0
    const-string/jumbo v2, "transPre32"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v24

    move-object/from16 v0, v24

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v16

    :goto_0
    :try_start_1
    const-string/jumbo v2, "trans"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v22

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move-object/from16 v0, v22

    array-length v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    const-string/jumbo v2, "transPost32"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v23

    move-object/from16 v0, v23

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v16

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v18, 0x0

    if-eqz v24, :cond_5

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v24

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v4, v17, 0x2

    aget v4, v24, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    mul-int/lit8 v6, v17, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v24, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v2, v18

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move-object/from16 v0, v24

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move-object/from16 v0, v23

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_5
    if-eqz v22, :cond_6

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget v4, v22, v17

    int-to-long v4, v4

    aput-wide v4, v2, v18

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_6
    if-eqz v23, :cond_8

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v23

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v4, v17, 0x2

    aget v4, v23, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    mul-int/lit8 v6, v17, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v23, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v2, v18

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    :cond_8
    const-string/jumbo v2, "typeOffsets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    const/16 v4, 0x7ffe

    if-le v2, v4, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v2, :cond_b

    const-string/jumbo v2, "typeMap"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->getBinary([B)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-eq v2, v4, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/16 v21, 0x0

    :try_start_5
    const-string/jumbo v2, "finalRule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v2, "finalRaw"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v2

    mul-int/lit16 v3, v2, 0x3e8

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    array-length v2, v0

    const/16 v4, 0xb

    if-eq v2, v4, :cond_e

    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v16

    if-eqz v21, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Format"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :try_start_6
    new-instance v2, Landroid/icu/util/SimpleTimeZone;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aget v5, v20, v5

    const/4 v6, 0x1

    aget v6, v20, v6

    const/4 v7, 0x2

    aget v7, v20, v7

    const/4 v8, 0x3

    aget v8, v20, v8

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x4

    aget v9, v20, v9

    const/4 v10, 0x5

    aget v10, v20, v10

    const/4 v11, 0x6

    aget v11, v20, v11

    const/4 v12, 0x7

    aget v12, v20, v12

    const/16 v13, 0x8

    aget v13, v20, v13

    mul-int/lit16 v13, v13, 0x3e8

    const/16 v14, 0x9

    aget v14, v20, v14

    const/16 v15, 0xa

    aget v15, v20, v15

    mul-int/lit16 v15, v15, 0x3e8

    invoke-direct/range {v2 .. v15}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const-string/jumbo v2, "finalYear"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_f
    return-void

    :catch_3
    move-exception v16

    goto/16 :goto_1
.end method

.method private constructEmpty()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    filled-new-array {v2, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    iput-boolean v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private dstOffsetAt(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, p1

    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHistoricalOffset(JZII[I)V
    .locals 17

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-eqz v11, :cond_18

    const-wide/16 v14, 0x3e8

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v15}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v8

    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/4 v14, 0x0

    aget-wide v14, v11, v14

    cmp-long v11, v8, v14

    if-gez v11, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x0

    aput v11, p6, v14

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x1

    aput v11, p6, v14

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v10, v11, -0x1

    :goto_1
    if-ltz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v12, v11, v10

    if-eqz p3, :cond_4

    const-wide/32 v14, 0x15180

    sub-long v14, v12, v14

    cmp-long v11, v8, v14

    if-ltz v11, :cond_4

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v6

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v2, 0x1

    :goto_3
    if-eqz v3, :cond_1

    if-eqz v2, :cond_8

    :cond_1
    const/4 v4, 0x0

    :goto_4
    if-nez v3, :cond_9

    move v7, v2

    :goto_5
    sub-int v11, v5, v6

    if-ltz v11, :cond_f

    and-int/lit8 v11, p4, 0x3

    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    if-nez v4, :cond_3

    :cond_2
    and-int/lit8 v11, p4, 0x3

    const/4 v14, 0x3

    if-ne v11, v14, :cond_a

    if-eqz v7, :cond_a

    :cond_3
    int-to-long v14, v6

    add-long/2addr v12, v14

    :cond_4
    :goto_6
    cmp-long v11, v8, v12

    if-ltz v11, :cond_17

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x0

    aput v11, p6, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x1

    aput v11, p6, v14

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    and-int/lit8 v11, p4, 0x3

    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    if-nez v7, :cond_c

    :cond_b
    and-int/lit8 v11, p4, 0x3

    const/4 v14, 0x3

    if-ne v11, v14, :cond_d

    if-eqz v4, :cond_d

    :cond_c
    int-to-long v14, v5

    add-long/2addr v12, v14

    goto :goto_6

    :cond_d
    and-int/lit8 v11, p4, 0xc

    const/16 v14, 0xc

    if-ne v11, v14, :cond_e

    int-to-long v14, v6

    add-long/2addr v12, v14

    goto :goto_6

    :cond_e
    int-to-long v14, v5

    add-long/2addr v12, v14

    goto :goto_6

    :cond_f
    and-int/lit8 v11, p5, 0x3

    const/4 v14, 0x1

    if-ne v11, v14, :cond_10

    if-nez v4, :cond_11

    :cond_10
    and-int/lit8 v11, p5, 0x3

    const/4 v14, 0x3

    if-ne v11, v14, :cond_12

    if-eqz v7, :cond_12

    :cond_11
    int-to-long v14, v5

    add-long/2addr v12, v14

    goto :goto_6

    :cond_12
    and-int/lit8 v11, p5, 0x3

    const/4 v14, 0x1

    if-ne v11, v14, :cond_13

    if-nez v7, :cond_14

    :cond_13
    and-int/lit8 v11, p5, 0x3

    const/4 v14, 0x3

    if-ne v11, v14, :cond_15

    if-eqz v4, :cond_15

    :cond_14
    int-to-long v14, v6

    add-long/2addr v12, v14

    goto :goto_6

    :cond_15
    and-int/lit8 v11, p5, 0xc

    const/4 v14, 0x4

    if-ne v11, v14, :cond_16

    int-to-long v14, v6

    add-long/2addr v12, v14

    goto :goto_6

    :cond_16
    int-to-long v14, v5

    add-long/2addr v12, v14

    goto :goto_6

    :cond_17
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x0

    aput v11, p6, v14

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    const/4 v14, 0x1

    aput v11, p6, v14

    goto/16 :goto_0
.end method

.method private getInt(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 28

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(DST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v4

    mul-int/lit16 v6, v4, 0x3e8

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v4

    mul-int/lit16 v7, v4, 0x3e8

    new-instance v5, Landroid/icu/util/InitialTimeZoneRule;

    if-nez v7, :cond_6

    move-object/from16 v4, v19

    :goto_0
    invoke-direct {v5, v4, v6, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v4, :cond_2

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move/from16 v0, v23

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v4, v4, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v4

    if-eqz v4, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v4, v5}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    const/4 v5, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1, v5}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v20

    :goto_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v10, v10, -0x1

    aget-byte v5, v5, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v5

    aget-object v18, v4, v5

    :cond_3
    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v18, v0

    :cond_4
    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2, v9}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    move-object v4, v15

    goto/16 :goto_0

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    const/16 v26, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_d

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move/from16 v23, v0

    move/from16 v17, v16

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v4, v4, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v4, v23

    const-wide/16 v10, 0x3e8

    mul-long v24, v4, v10

    move-wide/from16 v0, v24

    long-to-double v4, v0

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v4, v4, v10

    if-gez v4, :cond_f

    add-int/lit8 v16, v17, 0x1

    aput-wide v24, v22, v17

    :goto_6
    add-int/lit8 v23, v23, 0x1

    move/from16 v17, v16

    goto :goto_5

    :cond_9
    if-lez v17, :cond_b

    move/from16 v0, v17

    new-array v8, v0, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v4, v8, v5, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v5, v26, 0x2

    aget v4, v4, v5

    mul-int/lit16 v6, v4, 0x3e8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v5, v26, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    mul-int/lit16 v7, v4, 0x3e8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v4, v4, [Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v4, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v7, :cond_c

    move-object/from16 v5, v19

    :goto_7
    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v4, v10, v26

    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    :cond_c
    move-object v5, v15

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v26

    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-wide v10, v5, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v12, v12, v26

    invoke-direct {v4, v10, v11, v5, v12}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    new-instance v9, Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v11

    const/4 v4, 0x1

    new-array v13, v4, [J

    const/4 v4, 0x0

    aput-wide v20, v13, v4

    const/4 v12, 0x0

    const/4 v14, 0x2

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :cond_f
    move/from16 v16, v17

    goto/16 :goto_6
.end method

.method private initialDstOffset()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private initialRawOffset()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2

    const-string/jumbo v1, "Rules"

    invoke-virtual {p0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private rawOffsetAt(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, p1

    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v5, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt56b"

    const-string/jumbo v6, "zoneinfo64"

    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5, v4}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->constructEmpty()V

    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private zoneOffsetAt(I)I
    .locals 4

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, p1

    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/SimpleTimeZone;

    iput-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1, v3}, Landroid/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    invoke-static {v1, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    invoke-static {v1, v3}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getCanonicalID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    sget-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 17

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v11, :cond_2

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v11, p1, v12

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v11, p1, v12

    if-ltz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v11}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    return-object v11

    :cond_1
    const/4 v11, 0x0

    return-object v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v10, v11, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v12, v11, v10

    const-wide/16 v14, 0x3e8

    mul-long v8, v12, v14

    cmp-long v11, p1, v8

    if-gtz v11, :cond_3

    if-nez p3, :cond_4

    cmp-long v11, p1, v8

    if-nez v11, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v10, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    aget-object v5, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v12, v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    aget-object v4, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    add-int/lit8 v12, v10, 0x1

    aget-wide v12, v11, v12

    const-wide/16 v14, 0x3e8

    mul-long v6, v12, v14

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v12

    if-ne v11, v12, :cond_7

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-ne v11, v12, :cond_7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v11}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    return-object v11

    :cond_7
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v11, v6, v7, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v11

    :cond_8
    const/4 v11, 0x0

    return-object v11
.end method

.method public getOffset(IIIIII)I
    .locals 8

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Month is not in the legal range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    if-lt p4, v0, :cond_0

    if-gt p4, p7, :cond_0

    const/4 v0, 0x1

    if-lt p5, v0, :cond_0

    const/4 v0, 0x7

    if-gt p5, v0, :cond_0

    if-ltz p6, :cond_0

    const v0, 0x5265c00

    if-ge p6, v0, :cond_0

    const/16 v0, 0x1c

    if-lt p7, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p7, v0, :cond_0

    if-nez p1, :cond_2

    neg-int p2, p2

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0

    :cond_3
    invoke-static {p2, p3, p4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    int-to-long v4, p6

    add-long v2, v0, v4

    const/4 v0, 0x2

    new-array v7, v0, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 9

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x4

    const/16 v6, 0xc

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffsetFromLocal(JII[I)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 17

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v11, :cond_2

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v11, p1, v12

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v11, p1, v12

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v11}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    return-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v10, v11, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v12, v11, v10

    const-wide/16 v14, 0x3e8

    mul-long v8, v12, v14

    cmp-long v11, p1, v8

    if-gtz v11, :cond_3

    if-eqz p3, :cond_4

    cmp-long v11, p1, v8

    if-nez v11, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v10, v11, :cond_5

    const/4 v11, 0x0

    return-object v11

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ne v10, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v11

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v12, v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    aget-object v5, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v13, v10, -0x1

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    aget-object v4, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v12, v11, v10

    const-wide/16 v14, 0x3e8

    mul-long v6, v12, v14

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v12

    if-ne v11, v12, :cond_7

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-ne v11, v12, :cond_7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v11}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    return-object v11

    :cond_7
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v11, v6, v7, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v11

    :cond_8
    const/4 v11, 0x0

    return-object v11
.end method

.method public getRawOffset()I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    aget v1, v0, v4

    return v1
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 14

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    const/4 v10, 0x1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v10, v10, 0x2

    :cond_2
    :goto_1
    new-array v9, v10, [Landroid/icu/util/TimeZoneRule;

    const/4 v7, 0x1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v0, v9, v3

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v0, v0

    if-ge v6, v0, :cond_5

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    if-eqz v0, :cond_3

    add-int/lit8 v8, v7, 0x1

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    aput-object v0, v9, v7

    move v7, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v11

    add-int/lit8 v8, v7, 0x1

    aget-object v0, v11, v4

    aput-object v0, v9, v7

    add-int/lit8 v7, v8, 0x1

    aget-object v0, v11, v5

    aput-object v0, v9, v8

    :cond_6
    :goto_3
    return-object v9

    :cond_7
    add-int/lit8 v8, v7, 0x1

    new-instance v0, Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(STD)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v2

    new-array v4, v4, [J

    iget-wide v12, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v12, v12

    aput-wide v12, v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v0, v9, v7

    move v7, v8

    goto :goto_3
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    instance-of v1, p1, Landroid/icu/impl/OlsonTimeZone;

    if-nez v1, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_6

    return v3

    :cond_3
    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-eq v1, v2, :cond_5

    :cond_4
    return v3

    :cond_5
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1, v2}, Landroid/icu/util/SimpleTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-eq v1, v2, :cond_8

    :cond_7
    return v3

    :cond_8
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_7

    return v4
.end method

.method public hashCode()I
    .locals 9

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    ushr-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    ushr-int/lit8 v3, v3, 0x6

    iget v4, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v3, v4

    xor-int/2addr v2, v3

    int-to-long v4, v2

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget-wide v6, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v6, v2

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-long v2, v2

    add-long/2addr v2, v6

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v6, v0

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v3, v3, v0

    ushr-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    aget v3, v0, v1

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_0

    return v11

    :cond_0
    long-to-double v6, v0

    iget-wide v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_1

    return v10

    :cond_1
    const-wide/16 v6, 0x3e8

    invoke-static {v0, v1, v6, v7}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v2

    iget v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v4, v5, -0x1

    invoke-direct {p0, v4}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_3

    return v11

    :cond_2
    add-int/lit8 v4, v4, -0x1

    :cond_3
    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v5, v4

    cmp-long v5, v6, v2

    if-gtz v5, :cond_5

    :cond_4
    return v10

    :cond_5
    add-int/lit8 v5, v4, -0x1

    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_2

    return v11
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    sget-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    iput-boolean v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setRawOffset(I)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v20

    if-eqz v20, :cond_0

    new-instance v20, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v21, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getRawOffset()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v0, v8

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    new-instance v18, Landroid/icu/util/SimpleTimeZone;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    array-length v0, v7

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v20

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    :cond_2
    array-length v0, v7

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    aget-object v20, v7, v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const/16 v20, 0x2

    aget-object v20, v7, v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    aget-object v14, v7, v20

    check-cast v14, Landroid/icu/util/AnnualTimeZoneRule;

    const/16 v20, 0x2

    aget-object v15, v7, v20

    check-cast v15, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v20

    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v21

    add-int v12, v20, v21

    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v20

    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v21

    add-int v13, v20, v21

    if-le v12, v13, :cond_5

    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v17

    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v10

    sub-int v16, v12, v13

    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v20

    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v21

    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v22

    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    :cond_3
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v11

    const/16 v20, 0x0

    aget v20, v11, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const/16 v20, 0x0

    aget v20, v11, v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    :goto_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    :cond_5
    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v17

    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v10

    sub-int v16, v13, v12

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    const/16 v20, 0xb

    const/16 v21, 0x1f

    const v22, 0x5265bff

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setRawOffset(I)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5d

    const/16 v5, 0x2c

    const/16 v4, 0x5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transitionCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",typeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",transitionTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v2, ",typeOffsets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v2, ",typeMapData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_8

    if-lez v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v2, ",finalStartYear="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",finalStartMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",finalZone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public useDaylightTime()Z
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v8, :cond_1

    long-to-double v8, v0

    iget-wide v10, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v8}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v8

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v2

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    const-wide/32 v10, 0x15180

    mul-long v6, v8, v10

    const/4 v8, 0x0

    aget v8, v2, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    const-wide/32 v10, 0x15180

    mul-long v4, v8, v10

    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v4

    if-ltz v8, :cond_3

    :cond_2
    const/4 v8, 0x0

    return v8

    :cond_3
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-ltz v8, :cond_5

    invoke-direct {p0, v3}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v8, 0x1

    return v8

    :cond_5
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-lez v8, :cond_6

    if-lez v3, :cond_6

    add-int/lit8 v8, v3, -0x1

    invoke-direct {p0, v8}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v8

    if-nez v8, :cond_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
