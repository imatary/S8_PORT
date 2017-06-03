.class public abstract Landroid/icu/util/BasicTimeZone;
.super Landroid/icu/util/TimeZone;
.source "BasicTimeZone.java"


# static fields
.field protected static final FORMER_LATTER_MASK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_DST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_FORMER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_LATTER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_STD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final STD_DST_MASK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;
    .locals 27

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v19

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    const-wide v8, 0x757b12c00L

    add-long v8, v8, p1

    cmp-long v5, v8, v22

    if-lez v5, :cond_3

    const/4 v5, 0x2

    new-array v14, v5, [Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    int-to-long v8, v5

    add-long v8, v8, v22

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    const/4 v5, 0x0

    invoke-static {v8, v9, v5}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v16

    const/4 v5, 0x0

    aget v5, v16, v5

    const/4 v8, 0x1

    aget v8, v16, v8

    const/4 v9, 0x2

    aget v9, v16, v9

    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v6

    new-instance v4, Landroid/icu/util/DateTimeRule;

    const/4 v5, 0x1

    aget v5, v16, v5

    const/4 v8, 0x3

    aget v7, v16, v8

    const/4 v8, 0x5

    aget v8, v16, v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    const/16 v25, 0x0

    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    const/4 v5, 0x0

    aget v12, v16, v5

    const v13, 0x7fffffff

    move/from16 v9, v19

    move-object v11, v4

    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    const/4 v5, 0x0

    aput-object v7, v14, v5

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    const-wide v8, 0x757b12c00L

    add-long v8, v8, v22

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-lez v5, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v16

    const/4 v5, 0x0

    aget v5, v16, v5

    const/4 v8, 0x1

    aget v8, v16, v8

    const/4 v9, 0x2

    aget v9, v16, v9

    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v6

    new-instance v4, Landroid/icu/util/DateTimeRule;

    const/4 v5, 0x1

    aget v5, v16, v5

    const/4 v8, 0x3

    aget v7, v16, v8

    const/4 v8, 0x5

    aget v8, v16, v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    const/4 v5, 0x0

    aget v5, v16, v5

    add-int/lit8 v12, v5, -0x1

    const v13, 0x7fffffff

    move-object v11, v4

    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    move-wide/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-gtz v5, :cond_1

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    move/from16 v0, v19

    if-ne v0, v5, :cond_1

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    const/4 v5, 0x1

    aput-object v7, v14, v5

    :cond_1
    :goto_1
    const/4 v5, 0x1

    aget-object v5, v14, v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v16

    const/4 v5, 0x0

    aget v5, v16, v5

    const/4 v8, 0x1

    aget v8, v16, v8

    const/4 v9, 0x2

    aget v9, v16, v9

    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v6

    new-instance v4, Landroid/icu/util/DateTimeRule;

    const/4 v5, 0x1

    aget v9, v16, v5

    const/4 v5, 0x3

    aget v11, v16, v5

    const/4 v5, 0x5

    aget v12, v16, v5

    const/4 v13, 0x0

    move-object v8, v4

    move v10, v6

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v5

    add-int/lit8 v12, v5, -0x1

    const v13, 0x7fffffff

    move/from16 v9, v19

    move/from16 v10, v17

    move-object v11, v4

    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x0

    move-wide/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, v22

    if-lez v5, :cond_2

    const/4 v5, 0x1

    aput-object v7, v14, v5

    :cond_2
    const/4 v5, 0x1

    aget-object v5, v14, v5

    if-nez v5, :cond_8

    const/4 v14, 0x0

    :cond_3
    :goto_3
    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    :goto_4
    const/16 v24, 0x0

    if-nez v14, :cond_b

    const/4 v5, 0x1

    new-array v0, v5, [Landroid/icu/util/TimeZoneRule;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    aput-object v20, v24, v5

    :goto_5
    return-object v24

    :cond_4
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    move-object/from16 v7, v25

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v19

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v17

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_a

    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v8, v9}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v21, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aget v8, v21, v8

    const/4 v9, 0x1

    aget v9, v21, v9

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v8, v9}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_b
    const/4 v5, 0x3

    new-array v0, v5, [Landroid/icu/util/TimeZoneRule;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    aput-object v20, v24, v5

    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/4 v8, 0x1

    aput-object v5, v24, v8

    const/4 v5, 0x1

    aget-object v5, v14, v5

    const/4 v8, 0x2

    aput-object v5, v24, v8

    goto/16 :goto_5

    :cond_c
    move-object/from16 v7, v25

    goto/16 :goto_1
.end method

.method public abstract getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 41

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v39

    if-nez v39, :cond_0

    return-object v16

    :cond_0
    new-instance v28, Ljava/util/BitSet;

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/util/BitSet;-><init>(I)V

    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    new-instance v27, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v6, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v25, 0x1

    :goto_0
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v25

    if-ge v0, v5, :cond_2

    aget-object v5, v16, v25

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    const/4 v10, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v21

    if-nez v21, :cond_1

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v34, p1

    const/16 v20, 0x0

    const/16 v19, 0x0

    :cond_3
    :goto_1
    if-eqz v20, :cond_5

    if-eqz v19, :cond_5

    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/icu/util/TimeZoneRule;

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/icu/util/TimeZoneRule;

    return-object v30

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v39

    if-eqz v39, :cond_4

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v38

    const/16 v29, 0x1

    :goto_2
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_6

    aget-object v5, v16, v29

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/icu/util/TimeZoneRule;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v29

    if-lt v0, v5, :cond_8

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "The rule was not found"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, v38

    instance-of v5, v0, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v5, :cond_11

    move-object/from16 v31, v38

    check-cast v31, Landroid/icu/util/TimeArrayTimeZoneRule;

    move-wide/from16 v32, p1

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v39

    if-nez v39, :cond_b

    :cond_9
    if-eqz v39, :cond_a

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Landroid/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-lez v5, :cond_c

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/icu/util/TimeZoneRule;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v32

    goto :goto_3

    :cond_c
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v37

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v36

    const/16 v26, 0x0

    :goto_5
    move-object/from16 v0, v37

    array-length v5, v0

    move/from16 v0, v26

    if-ge v0, v5, :cond_f

    aget-wide v32, v37, v26

    const/4 v5, 0x1

    move/from16 v0, v36

    if-ne v0, v5, :cond_d

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    int-to-long v6, v5

    sub-long v32, v32, v6

    :cond_d
    if-nez v36, :cond_e

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    int-to-long v6, v5

    sub-long v32, v32, v6

    :cond_e
    cmp-long v5, v32, p1

    if-lez v5, :cond_10

    :cond_f
    move-object/from16 v0, v37

    array-length v5, v0

    sub-int v18, v5, v26

    if-lez v18, :cond_a

    move/from16 v0, v18

    new-array v8, v0, [J

    const/4 v5, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v5, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    new-instance v4, Landroid/icu/util/TimeArrayTimeZoneRule;

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v0, v38

    instance-of v5, v0, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_a

    move-object/from16 v17, v38

    check-cast v17, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    cmp-long v5, v6, v10

    if-nez v5, :cond_12

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    if-nez v5, :cond_13

    const/16 v20, 0x1

    goto/16 :goto_4

    :cond_12
    const/4 v5, 0x6

    new-array v0, v5, [I

    move-object/from16 v22, v0

    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    new-instance v9, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v13

    const/4 v5, 0x0

    aget v14, v22, v5

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v15

    invoke-direct/range {v9 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    const/16 v19, 0x1

    goto/16 :goto_4
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z

    move-result v0

    return v0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z
    .locals 12

    if-ne p0, p1, :cond_0

    const/4 v8, 0x1

    return v8

    :cond_0
    instance-of v8, p1, Landroid/icu/util/BasicTimeZone;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    return v8

    :cond_1
    const/4 v8, 0x2

    new-array v2, v8, [I

    const/4 v8, 0x2

    new-array v3, v8, [I

    const/4 v8, 0x0

    invoke-virtual {p0, p2, p3, v8, v2}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    const/4 v8, 0x0

    invoke-virtual {p1, p2, p3, v8, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    if-eqz p6, :cond_5

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget v8, v2, v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    aget v8, v3, v8

    if-nez v8, :cond_3

    :cond_2
    const/4 v8, 0x0

    return v8

    :cond_3
    const/4 v8, 0x1

    aget v8, v2, v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aget v8, v3, v8

    if-nez v8, :cond_2

    :cond_4
    move-wide v4, p2

    :goto_0
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v5, v8}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    move-object v8, p1

    check-cast v8, Landroid/icu/util/BasicTimeZone;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v5, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v7

    if-eqz p6, :cond_8

    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, p4

    if-gtz v8, :cond_7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    if-eq v8, v9, :cond_4

    :cond_6
    const/4 v8, 0x0

    return v8

    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, p4

    if-gtz v8, :cond_8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, p1

    check-cast v8, Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, p4

    if-gtz v8, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, p4

    if-gtz v8, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-nez v0, :cond_b

    if-eqz v1, :cond_13

    :cond_b
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    return v8

    :cond_c
    const/4 v8, 0x0

    return v8

    :cond_d
    if-eqz p6, :cond_11

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_e

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    const/4 v8, 0x0

    return v8

    :cond_f
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-nez v8, :cond_e

    :cond_10
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    if-ne v8, v9, :cond_12

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    if-eq v8, v9, :cond_10

    :cond_12
    const/4 v8, 0x0

    return v8

    :cond_13
    const/4 v8, 0x1

    return v8
.end method
