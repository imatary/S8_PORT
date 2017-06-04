.class public abstract Lcom/andraskindler/quickscroll/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;,
        Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mEnableFavoriteIndex:Z

.field private mFavoriteItemCount:I

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileItemCount:I


# direct methods
.method private isKoreanLocaleLaguage()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v0, 0xac00

    const/16 v1, 0x24c

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    packed-switch v3, :pswitch_data_0

    const/16 v2, 0x3131

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_0
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3134

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x3139

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x3141

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_a
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_b
    const/16 v2, 0x3147

    goto :goto_0

    :pswitch_c
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_d
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_e
    const/16 v2, 0x314a

    goto :goto_0

    :pswitch_f
    const/16 v2, 0x314b

    goto :goto_0

    :pswitch_10
    const/16 v2, 0x314c

    goto :goto_0

    :pswitch_11
    const/16 v2, 0x314d

    goto :goto_0

    :pswitch_12
    const/16 v2, 0x314e

    goto :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v18

    if-nez v18, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_8

    const-string/jumbo v2, ""

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onBeginTransaction()V

    const/4 v3, 0x0

    const/4 v12, -0x1

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    const/16 v16, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-result-object v13

    iget v11, v13, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->position:I

    iget-boolean v0, v13, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v16, v0

    if-eqz p2, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    :cond_2
    new-instance v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;

    invoke-direct {v6}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;-><init>()V

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mExists:Z

    iput v11, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v18

    if-nez v18, :cond_4

    if-eqz v16, :cond_3

    const/4 v3, 0x1

    move v12, v11

    :cond_3
    if-nez v7, :cond_4

    if-nez v16, :cond_4

    if-eqz v3, :cond_4

    iput v12, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getCurrentLang()I

    move-result v4

    if-eqz v9, :cond_5

    if-nez v4, :cond_5

    iput v10, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    iput v11, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    iget v0, v6, Lcom/andraskindler/quickscroll/TwAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartPosition:I

    :cond_6
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    new-instance v22, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(I)V

    :goto_0
    return-object v22

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3

    :cond_2
    new-instance v22, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    move v6, v3

    const/4 v9, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v21, p1

    move v7, v8

    const/high16 v22, -0x80000000

    const/high16 v23, -0x80000000

    move/from16 v0, v23

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    move/from16 v0, v22

    if-eq v0, v15, :cond_c

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    :cond_4
    :goto_1
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/4 v10, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-lt v3, v0, :cond_5

    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v11

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_e

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    const/4 v10, 0x1

    :cond_5
    :goto_2
    const/16 v22, 0x26

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const-string/jumbo v21, "!"

    :cond_6
    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v19, v0

    :cond_7
    :goto_3
    add-int v22, v6, v19

    div-int/lit8 v15, v22, 0x2

    :goto_4
    move/from16 v0, v19

    if-lt v15, v0, :cond_9

    if-ge v15, v6, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_11

    :cond_8
    move/from16 v0, v19

    if-gt v15, v0, :cond_10

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    invoke-virtual {v2, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    if-ge v15, v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    :cond_b
    new-instance v22, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v9}, Lcom/andraskindler/quickscroll/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-lez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    if-le v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    const/high16 v22, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    const/high16 v22, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v19

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/high16 v22, -0x80000000

    move/from16 v0, v22

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-eq v14, v0, :cond_4

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    :cond_e
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v23, v0

    add-int v19, v22, v23

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_17

    if-gez v5, :cond_14

    add-int/lit8 v19, v15, 0x1

    if-eqz v10, :cond_13

    if-eqz v15, :cond_9

    :cond_13
    move/from16 v0, v19

    if-lt v0, v3, :cond_16

    move v15, v3

    goto/16 :goto_5

    :cond_14
    if-eqz v10, :cond_15

    if-nez v15, :cond_15

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_15
    move v6, v15

    :cond_16
    :goto_6
    add-int v22, v19, v6

    div-int/lit8 v15, v22, 0x2

    goto/16 :goto_4

    :cond_17
    move/from16 v0, v19

    if-eq v0, v15, :cond_9

    move v6, v15

    goto :goto_6
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v2, :cond_5

    :cond_0
    iget-boolean v2, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 0

    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLang:I

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\u2606"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    if-eq v0, p1, :cond_4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iput v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangStartIndex:I

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mCurrentLangEndIndex:I

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
