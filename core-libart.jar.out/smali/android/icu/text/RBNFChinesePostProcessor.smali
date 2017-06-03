.class final Landroid/icu/text/RBNFChinesePostProcessor;
.super Ljava/lang/Object;
.source "RBNFChinesePostProcessor.java"

# interfaces
.implements Landroid/icu/text/RBNFPostProcessor;


# static fields
.field private static final rulesetNames:[Ljava/lang/String;


# instance fields
.field private format:I

.field private longForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%traditional"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "%simplified"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%accounting"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%time"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public process(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    :goto_0
    sget-object v14, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    array-length v14, v14

    if-ge v3, v14, :cond_1

    sget-object v14, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    const/4 v14, 0x1

    if-eq v3, v14, :cond_0

    const/4 v14, 0x3

    if-ne v3, v14, :cond_2

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    if-eqz v14, :cond_5

    const-string/jumbo v14, "*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_2
    const/4 v14, -0x1

    if-eq v3, v14, :cond_4

    add-int/lit8 v14, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v14, "*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v1, "\u9ede"

    const/4 v14, 0x3

    new-array v7, v14, [[Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "\u842c"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u5104"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u5146"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u3007"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x0

    aput-object v14, v7, v15

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "\u4e07"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u4ebf"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u5146"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u3007"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v14, v7, v15

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "\u842c"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u5104"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u5146"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string/jumbo v15, "\u96f6"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x2

    aput-object v14, v7, v15

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v6, v7, v14

    const/4 v3, 0x0

    :goto_3
    array-length v14, v6

    add-int/lit8 v14, v14, -0x1

    if-ge v3, v14, :cond_7

    aget-object v14, v6, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v14, -0x1

    if-eq v8, v14, :cond_6

    aget-object v14, v6, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v8

    const/16 v15, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v14, "\u9ede"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    :cond_8
    const/4 v12, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v14, v7, v14

    const/4 v15, 0x3

    aget-object v4, v14, v15

    :goto_4
    if-ltz v13, :cond_b

    const-string/jumbo v14, "|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v5, :cond_9

    if-lez v10, :cond_a

    add-int/lit8 v14, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x2a

    if-eq v14, v15, :cond_a

    const/4 v11, 0x2

    :cond_9
    :goto_5
    add-int/lit8 v13, v5, -0x1

    mul-int/lit8 v14, v12, 0x3

    add-int/2addr v14, v11

    packed-switch v14, :pswitch_data_0

    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    :cond_a
    const/4 v11, 0x1

    goto :goto_5

    :pswitch_0
    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_1
    move v12, v11

    move v8, v10

    goto :goto_4

    :pswitch_2
    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_3
    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_4
    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_5
    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_6
    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_7
    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    const/4 v8, -0x1

    goto :goto_4

    :pswitch_8
    move v12, v11

    const/4 v8, -0x1

    goto :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v14, 0x2a

    if-eq v2, v14, :cond_d

    const/16 v14, 0x7c

    if-ne v2, v14, :cond_c

    :cond_d
    add-int/lit8 v14, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
