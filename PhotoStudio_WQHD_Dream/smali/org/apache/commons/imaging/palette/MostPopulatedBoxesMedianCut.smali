.class public Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut;
.super Ljava/lang/Object;
.source "MostPopulatedBoxesMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$1;,
        Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/16 v20, 0x0

    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/imaging/palette/ColorGroup;

    iget v0, v14, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    move/from16 v31, v0

    if-lez v31, :cond_0

    iget v0, v14, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    move-object v11, v14

    iget v0, v14, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v20, v0

    goto :goto_0

    :cond_1
    if-nez v11, :cond_2

    const/16 v31, 0x0

    :goto_1
    return v31

    :cond_2
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {}, Lorg/apache/commons/imaging/palette/ColorComponent;->values()[Lorg/apache/commons/imaging/palette/ColorComponent;

    move-result-object v4

    array-length v0, v4

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    aget-object v7, v4, v15

    if-eqz p2, :cond_4

    sget-object v31, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    move-object/from16 v0, v31

    if-ne v7, v0, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    new-instance v32, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;

    move-object/from16 v0, v32

    invoke-direct {v0, v7}, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;-><init>(Lorg/apache/commons/imaging/palette/ColorComponent;)V

    invoke-static/range {v31 .. v32}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->round(D)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v12, v0

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    :goto_4
    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_5

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v0, v10, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v31, v0

    add-int v23, v23, v31

    move/from16 v0, v23

    if-ge v0, v12, :cond_5

    move/from16 v25, v23

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    add-int/lit8 v21, v21, -0x1

    :cond_6
    :goto_5
    new-instance v18, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v21, 0x1

    invoke-interface/range {v31 .. v33}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v27, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    add-int/lit8 v32, v21, 0x1

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    invoke-interface/range {v31 .. v33}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_3

    new-instance v19, Lorg/apache/commons/imaging/palette/ColorGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    new-instance v30, Lorg/apache/commons/imaging/palette/ColorGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v34, v0

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v28, v32, v34

    cmpg-double v31, v28, v8

    if-gez v31, :cond_3

    move-wide/from16 v8, v28

    move-object v5, v7

    move/from16 v6, v21

    goto/16 :goto_3

    :cond_7
    if-lez v21, :cond_6

    sub-int v31, v23, v12

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v24

    sub-int v31, v12, v25

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_5

    :cond_8
    if-nez v5, :cond_9

    const/16 v31, 0x0

    goto/16 :goto_1

    :cond_9
    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    new-instance v32, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;-><init>(Lorg/apache/commons/imaging/palette/ColorComponent;)V

    invoke-static/range {v31 .. v32}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v18, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v6, 0x1

    invoke-interface/range {v31 .. v33}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v27, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    add-int/lit8 v32, v6, 0x1

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    invoke-interface/range {v31 .. v33}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v19, Lorg/apache/commons/imaging/palette/ColorGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    new-instance v30, Lorg/apache/commons/imaging/palette/ColorGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/imaging/palette/ColorCount;

    sget-object v31, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$1;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    invoke-virtual {v5}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    new-instance v31, Ljava/lang/Error;

    const-string v32, "Bad mode."

    invoke-direct/range {v31 .. v32}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v31

    :pswitch_0
    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    move/from16 v17, v0

    :goto_6
    new-instance v31, Lorg/apache/commons/imaging/palette/ColorGroupCut;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/palette/ColorGroupCut;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V

    move-object/from16 v0, v31

    iput-object v0, v11, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    const/16 v31, 0x1

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    move/from16 v17, v0

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    move/from16 v17, v0

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    move/from16 v17, v0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
