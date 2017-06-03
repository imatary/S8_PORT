.class Landroid/icu/impl/duration/BasicPeriodFormatter;
.super Ljava/lang/Object;
.source "BasicPeriodFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatter;


# instance fields
.field private customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iput-object p2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    iput-object p4, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-void
.end method

.method private format(IZ[I)Ljava/lang/String;
    .locals 34

    const/16 v26, 0x0

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    aget v2, p3, v21

    if-lez v2, :cond_0

    const/4 v2, 0x1

    shl-int v2, v2, v21

    or-int v26, v26, v2

    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v21, 0x0

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    and-int v2, v26, v25

    if-eqz v2, :cond_2

    aget v2, p3, v21

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    move/from16 v0, v25

    not-int v2, v0

    and-int v26, v26, v2

    :cond_2
    add-int/lit8 v21, v21, 0x1

    shl-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_3
    if-nez v26, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v2, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/4 v6, 0x1

    shl-int v2, v6, v2

    and-int v2, v2, v26

    if-eqz v2, :cond_5

    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v0, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    move/from16 v32, v0

    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v0, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    move/from16 v29, v0

    const/4 v2, 0x1

    shl-int v30, v2, v32

    const/4 v2, 0x1

    shl-int v27, v2, v29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_2
    const/16 v19, 0x0

    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v24, v2, -0x1

    :goto_3
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    const/4 v2, 0x1

    shl-int v2, v2, v19

    and-int v2, v2, v26

    if-nez v2, :cond_7

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :pswitch_0
    and-int v2, v26, v30

    if-eqz v2, :cond_5

    aget v2, p3, v32

    aget v6, p3, v29

    add-int/lit8 v6, v6, -0x1

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v2, v6

    aput v2, p3, v32

    move/from16 v0, v27

    not-int v2, v0

    and-int v26, v26, v2

    const/16 v20, 0x1

    goto :goto_2

    :pswitch_1
    and-int v2, v26, v30

    if-nez v2, :cond_6

    or-int v26, v26, v30

    const/4 v2, 0x1

    aput v2, p3, v32

    :cond_6
    aget v2, p3, v32

    aget v6, p3, v29

    add-int/lit8 v6, v6, -0x1

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v2, v6

    aput v2, p3, v32

    move/from16 v0, v27

    not-int v2, v0

    and-int v26, v26, v2

    const/16 v20, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const/4 v2, 0x1

    shl-int v2, v2, v24

    and-int v2, v2, v26

    if-nez v2, :cond_8

    add-int/lit8 v24, v24, -0x1

    goto :goto_4

    :cond_8
    const/16 v22, 0x1

    move/from16 v21, v19

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_9

    const/4 v2, 0x1

    shl-int v2, v2, v21

    and-int v2, v2, v26

    if-eqz v2, :cond_e

    aget v2, p3, v21

    const/4 v6, 0x1

    if-le v2, v6, :cond_e

    const/16 v22, 0x0

    :cond_9
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    if-eqz v2, :cond_a

    if-eqz v22, :cond_b

    :cond_a
    const/16 p1, 0x0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    if-eqz v2, :cond_c

    if-eqz v22, :cond_f

    :cond_c
    const/16 v33, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendPrefix(IILjava/lang/StringBuffer;)Z

    move-result v8

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    :goto_7
    const/4 v11, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v2, :cond_12

    const/4 v7, 0x1

    :goto_8
    move/from16 v21, v19

    move/from16 v23, v19

    :goto_9
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_1b

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v2, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSkippedUnit(Ljava/lang/StringBuffer;)V

    const/16 v31, 0x0

    const/4 v11, 0x1

    :cond_d
    :goto_a
    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    const/4 v2, 0x1

    shl-int v2, v2, v23

    and-int v2, v2, v26

    if-nez v2, :cond_13

    const/16 v31, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_f
    if-eqz p2, :cond_10

    const/16 v33, 0x2

    :goto_b
    goto :goto_6

    :cond_10
    const/16 v33, 0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    goto :goto_8

    :cond_13
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v2, v21

    aget v2, p3, v21

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v5, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    if-eqz v20, :cond_14

    const/4 v5, 0x5

    :cond_14
    :goto_c
    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    const/4 v10, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v6, v6, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    invoke-virtual/range {v2 .. v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z

    move-result v28

    or-int v31, v31, v28

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v2, :cond_1a

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_1a

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/16 v16, 0x1

    :goto_e
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    const/16 v17, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    const/4 v6, 0x2

    if-ne v2, v6, :cond_19

    const/4 v15, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-object v14, v3

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z

    move-result v8

    :goto_11
    move/from16 v21, v23

    goto/16 :goto_9

    :cond_15
    const/4 v5, 0x0

    goto :goto_c

    :cond_16
    const/4 v10, 0x0

    goto :goto_d

    :cond_17
    const/16 v16, 0x0

    goto :goto_e

    :cond_18
    const/16 v17, 0x0

    goto :goto_f

    :cond_19
    const/4 v15, 0x0

    goto :goto_10

    :cond_1a
    const/4 v8, 0x0

    goto :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v2, v0, v1, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSuffix(IILjava/lang/StringBuffer;)V

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-byte v0, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v1, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object v2, p1, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/duration/BasicPeriodFormatter;->format(IZ[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v1, v2, p1, v0, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v1

    :cond_0
    return-object p0
.end method
