.class public Landroid/icu/util/RuleBasedTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    iput-object p2, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    return-void
.end method

.method private complete()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    if-eqz v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Incomplete final rules"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_b

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v17, v0

    const-wide v6, -0x28ec76c40e65000L

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v10, :cond_9

    new-instance v21, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    const-wide v26, 0x28d47dbbf19b000L

    const/16 v24, 0x0

    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, v22

    if-ge v0, v10, :cond_7

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/TimeZoneRule;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v18

    if-nez v18, :cond_5

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, v17

    if-eq v5, v0, :cond_3

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    if-ne v10, v11, :cond_6

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    if-eq v10, v11, :cond_3

    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    cmp-long v10, v28, v26

    if-gez v10, :cond_3

    move-wide/from16 v26, v28

    move-object/from16 v24, v5

    goto :goto_2

    :cond_7
    if-nez v24, :cond_d

    const/4 v4, 0x1

    const/16 v23, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, v23

    if-ge v0, v10, :cond_8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v4, 0x0

    :cond_8
    if-eqz v4, :cond_d

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v10, :cond_a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    move-wide v12, v6

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    move-wide v12, v6

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, v17

    invoke-direct {v11, v12, v13, v0, v14}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v14, 0x0

    aget-object v10, v10, v14

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x0

    aget-object v10, v10, v15

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void

    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_10

    const/16 v22, 0x0

    :goto_5
    const/4 v10, 0x2

    move/from16 v0, v22

    if-ge v0, v10, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v10, v10, v22

    move-object/from16 v0, v17

    if-ne v10, v0, :cond_f

    :cond_e
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v11, v10, v22

    const/16 v16, 0x0

    move-wide v12, v6

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    cmp-long v10, v28, v26

    if-gez v10, :cond_e

    move-wide/from16 v26, v28

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v24, v10, v22

    goto :goto_6

    :cond_10
    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v10, :cond_11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    move-wide/from16 v0, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v6, v26

    move-object/from16 v17, v24

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, v17

    invoke-direct {v11, v12, v13, v0, v14}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v14, 0x1

    aget-object v10, v10, v14

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x1

    aget-object v10, v10, v15

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;
    .locals 13

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    move-wide v2, p1

    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v10

    int-to-long v0, v10

    sub-long v2, p1, v0

    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v11

    move-wide v2, p1

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v10

    int-to-long v0, v10

    sub-long v2, p1, v0

    :cond_3
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v12

    if-eqz v11, :cond_4

    if-nez v12, :cond_7

    :cond_4
    if-eqz v11, :cond_5

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_5
    if-eqz v12, :cond_6

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    invoke-virtual {v11, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static getLocalDelta(IIIIII)I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v0, 0x0

    add-int v3, p0, p1

    add-int v2, p2, p3

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    :goto_1
    sub-int v5, v2, v3

    if-ltz v5, :cond_9

    and-int/lit8 v5, p4, 0x3

    if-ne v5, v6, :cond_0

    if-nez v1, :cond_1

    :cond_0
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v7, :cond_4

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v6, :cond_5

    if-nez v4, :cond_6

    :cond_5
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v7, :cond_7

    if-eqz v1, :cond_7

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    and-int/lit8 v5, p4, 0xc

    const/16 v6, 0xc

    if-ne v5, v6, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v6, :cond_a

    if-nez v1, :cond_b

    :cond_a
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v7, :cond_c

    if-eqz v4, :cond_c

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v6, :cond_d

    if-nez v4, :cond_e

    :cond_d
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v7, :cond_f

    if-eqz v1, :cond_f

    :cond_e
    move v0, v3

    goto :goto_2

    :cond_f
    and-int/lit8 v5, p5, 0xc

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    move v0, v3

    goto :goto_2

    :cond_10
    move v0, v2

    goto :goto_2
.end method

.method private getOffset(JZII[I)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v6, :cond_1

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    aput v6, p6, v8

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    const/4 v7, 0x1

    aput v6, p6, v7

    return-void

    :cond_1
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_2

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v2

    cmp-long v6, p1, v2

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v6, :cond_3

    invoke-direct/range {p0 .. p5}, Landroid/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_0

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :cond_5
    if-ltz v0, :cond_6

    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    :cond_6
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J
    .locals 8

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    :cond_0
    return-wide v6
.end method


# virtual methods
.method public addTransitionRule(Landroid/icu/util/TimeZoneRule;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen RuleBasedTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Rule must be a transition rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_4

    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/AnnualTimeZoneRule;

    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    nop

    nop

    aput-object p1, v0, v2

    :goto_0
    iput-boolean v2, p0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    nop

    nop

    aput-object p1, v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many final rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    :cond_5
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/icu/util/AnnualTimeZoneRule;

    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 19

    invoke-direct/range {p0 .. p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    cmp-long v3, v16, p1

    if-gtz v3, :cond_1

    if-eqz p3, :cond_2

    cmp-long v3, v16, p1

    if-nez v3, :cond_2

    :cond_1
    move-object/from16 v12, v18

    :goto_0
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    if-ne v3, v4, :cond_a

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-ne v3, v4, :cond_a

    if-eqz v10, :cond_9

    const/4 v3, 0x0

    return-object v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v9, v3, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    if-eqz p3, :cond_3

    cmp-long v3, v16, p1

    if-nez v3, :cond_3

    move-object/from16 v12, v18

    goto :goto_0

    :cond_3
    cmp-long v3, v16, p1

    if-gtz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move-wide/from16 v4, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move-wide/from16 v4, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v18, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v3, v6}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    :goto_1
    move-object/from16 v12, v18

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v18, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v3, v6}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    return-object v3

    :cond_6
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v11, v18

    :goto_2
    if-lez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    cmp-long v3, v16, p1

    if-ltz v3, :cond_7

    if-nez p3, :cond_8

    cmp-long v3, v16, p1

    if-nez v3, :cond_8

    :cond_7
    move-object v12, v11

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v11, v18

    goto :goto_2

    :cond_9
    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v12

    :cond_a
    return-object v12
.end method

.method public getOffset(IIIIII)I
    .locals 8

    if-nez p1, :cond_0

    rsub-int/lit8 p2, p2, 0x1

    :cond_0
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

    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 9

    const/4 v5, 0x4

    const/16 v6, 0xc

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 15

    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v8, 0x0

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    if-eqz p3, :cond_2

    cmp-long v1, v12, p1

    if-nez v1, :cond_2

    move-object v8, v14

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v11

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v8

    :cond_1
    return-object v8

    :cond_2
    cmp-long v1, v12, p1

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    return-object v1

    :cond_3
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    if-eqz p3, :cond_4

    cmp-long v1, v12, p1

    if-nez v1, :cond_4

    move-object v8, v14

    goto :goto_0

    :cond_4
    cmp-long v1, v12, p1

    if-gez v1, :cond_7

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v14, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v14, v2, v3, v1, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    :cond_5
    :goto_1
    move-object v8, v14

    goto/16 :goto_0

    :cond_6
    new-instance v14, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v14, v2, v3, v1, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_8

    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v1, v12, p1

    if-ltz v1, :cond_8

    if-eqz p3, :cond_9

    cmp-long v1, v12, p1

    if-nez v1, :cond_9

    :cond_8
    move-object v8, v14

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_2
.end method

.method public getRawOffset()I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v3, v2, v4

    return v3
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    :cond_0
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x2

    :cond_1
    :goto_0
    new-array v2, v3, [Landroid/icu/util/TimeZoneRule;

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v4, v2, v7

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v4, :cond_3

    :goto_1
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneRule;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_4

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v7

    aput-object v4, v2, v0

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    aput-object v4, v2, v1

    move v0, v1

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-ne p0, p1, :cond_0

    return v10

    :cond_0
    instance-of v7, p1, Landroid/icu/util/RuleBasedTimeZone;

    if-nez v7, :cond_1

    return v9

    :cond_1
    move-object v4, p1

    nop

    nop

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v7, v8}, Landroid/icu/util/InitialTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v7

    if-nez v7, :cond_2

    return v9

    :cond_2
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v7, :cond_6

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v7, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v7, v7

    if-ge v1, v7, :cond_8

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    if-nez v7, :cond_4

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    if-nez v7, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    if-eqz v7, :cond_5

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_5
    return v9

    :cond_6
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v7, :cond_7

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v7, :cond_8

    :cond_7
    return v9

    :cond_8
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v7, :cond_d

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_9

    return v9

    :cond_9
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/TimeZoneRule;

    const/4 v0, 0x0

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v5, v2}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v0, 0x1

    :cond_c
    if-nez v0, :cond_a

    return v9

    :cond_d
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v7, :cond_e

    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v7, :cond_f

    :cond_e
    return v9

    :cond_f
    return v10
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v0}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

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

    iget-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x2

    new-array v2, v7, [I

    invoke-virtual {p0, v4, v5, v9, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v7, v2, v10

    if-eqz v7, :cond_0

    return v10

    :cond_0
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v7, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v4, v5, v9}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_1
    return v9

    :cond_2
    new-instance v0, Ljava/util/BitSet;

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v7, v7

    invoke-direct {v0, v7}, Ljava/util/BitSet;-><init>(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    if-eqz v7, :cond_4

    return v10

    :cond_4
    if-eqz v0, :cond_7

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v7, v1

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    iget-object v8, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v8, v8

    if-eq v7, v8, :cond_1

    :cond_7
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setRawOffset in RuleBasedTimeZone is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useDaylightTime()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p0, v0, v1, v5, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v4, v2, v6

    if-eqz v4, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0, v0, v1, v5}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_1

    return v6

    :cond_1
    return v5
.end method
