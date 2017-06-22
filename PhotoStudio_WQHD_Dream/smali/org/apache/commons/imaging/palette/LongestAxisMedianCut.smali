.class public Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            "Lorg/apache/commons/imaging/palette/ColorComponent;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v5, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;-><init>(Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;Lorg/apache/commons/imaging/palette/ColorComponent;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v0, v2, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v16, v0

    add-int v12, v12, v16

    if-ge v12, v6, :cond_0

    move v14, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_2

    add-int/lit8 v9, v9, -0x1

    :cond_1
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v18, v9, 0x1

    invoke-interface/range {v16 .. v18}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-interface/range {v16 .. v18}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/palette/ColorCount;

    sget-object v16, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    new-instance v16, Ljava/lang/Error;

    const-string v17, "Bad mode."

    invoke-direct/range {v16 .. v17}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_2
    if-lez v9, :cond_1

    sub-int v16, v12, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sub-int v16, v6, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-ge v15, v13, :cond_1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    :pswitch_0
    iget v8, v10, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    :goto_2
    new-instance v16, Lorg/apache/commons/imaging/palette/ColorGroupCut;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v11, v1, v8}, Lorg/apache/commons/imaging/palette/ColorGroupCut;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    return-void

    :pswitch_1
    iget v8, v10, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    goto :goto_2

    :pswitch_2
    iget v8, v10, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    goto :goto_2

    :pswitch_3
    iget v8, v10, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 3
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

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorGroup;

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    if-le v1, v2, :cond_1

    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v1, v2, :cond_1

    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v1, v2, :cond_1

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v1, v2, :cond_2

    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v1, v2, :cond_2

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->RED:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    iget v2, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v1, v2, :cond_3

    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/apache/commons/imaging/palette/ColorComponent;->BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_1
.end method
