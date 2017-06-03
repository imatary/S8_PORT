.class public Landroid/icu/text/PluralSamples;
.super Ljava/lang/Object;
.source "PluralSamples.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMIT_FRACTION_SAMPLES:I = 0x3

.field private static final TENS:[I


# instance fields
.field private final _fractionSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final _keyFractionSamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation
.end field

.field public final _keyLimitedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final _keySamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private pluralRules:Landroid/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/PluralSamples;->TENS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;)V
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v21

    const/4 v4, 0x3

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v9

    const/16 v17, 0x0

    :goto_1
    if-lez v9, :cond_1

    const/16 v5, 0x80

    move/from16 v0, v17

    if-ge v0, v5, :cond_1

    move/from16 v0, v17

    int-to-double v6, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    const/4 v7, 0x3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/PluralSamples;->addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I

    move-result v9

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    const-wide v10, 0x412e848000000000L    # 1000000.0

    const/4 v7, 0x3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/PluralSamples;->addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I

    move-result v9

    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    new-instance v23, Ljava/util/TreeSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/TreeSet;-><init>()V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/icu/text/PluralRules$FixedDecimal;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V

    goto :goto_2

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/16 v17, 0x1

    :goto_3
    const/16 v5, 0x3e8

    move/from16 v0, v17

    if-ge v0, v5, :cond_6

    move/from16 v0, v17

    int-to-double v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v6, v7, v1, v2}, Landroid/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_3
    :goto_4
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x1

    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x2

    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v10, 0x1

    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide v6, 0x3fffd70a3d70a3d7L    # 1.99

    const/4 v10, 0x2

    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/icu/text/PluralSamples;->fractions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/icu/text/PluralRules$FixedDecimal;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Set;

    if-nez v22, :cond_4

    new-instance v22, Ljava/util/LinkedHashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_6
    const/16 v17, 0xa

    :goto_6
    const/16 v5, 0x3e8

    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    move/from16 v0, v17

    int-to-double v6, v0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v6, v7, v1, v2}, Landroid/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    move-result v12

    if-nez v12, :cond_3

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to find sample for each keyword: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    if-lez v9, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    return-void
.end method

.method private addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    iget-object v2, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p4, v0, v1}, Landroid/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "other"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;ID)I"
        }
    .end annotation

    invoke-virtual {p1, p5, p6}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p2, :cond_1

    add-int/lit8 p4, p4, -0x1

    :cond_1
    return p4

    :cond_2
    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p2, :cond_0

    return p4
.end method

.method private fractions(Ljava/util/Set;)Ljava/util/Set;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PluralRules$FixedDecimal;

    iget-wide v14, v3, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const/4 v15, 0x1

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const/4 v15, 0x2

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Landroid/icu/text/PluralSamples;->getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    if-lt v14, v15, :cond_3

    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x3

    if-ge v13, v14, :cond_1

    const/4 v6, 0x1

    :goto_4
    if-gt v6, v13, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    aget v15, v15, v6

    if-lt v14, v15, :cond_4

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    aget v15, v15, v6

    int-to-double v0, v15

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    return-object v12
.end method

.method private getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/PluralSamples;->getKeySamplesMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method getFractionSamples()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    return-object v0
.end method

.method getKeyFractionSamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    return-object v0
.end method

.method getKeySamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v5}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v5, p1}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez p3, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    if-le v2, v5, :cond_6

    if-ne v2, v10, :cond_5

    if-eqz p4, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_4
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_5
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p2

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v10, :cond_9

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_9
    if-ne v2, v10, :cond_a

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    :goto_1
    return-object v5

    :cond_a
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    goto :goto_1
.end method
