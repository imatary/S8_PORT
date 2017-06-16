.class public Lcom/sec/android/secvision/segmentation/IntelligentModeSelection;
.super Ljava/lang/Object;
.source "IntelligentModeSelection.java"


# static fields
.field private static MIN_LENGTH:D = 0.0

.field private static final TAG:Ljava/lang/String; = "PEDIT_IntelligentModeSelection"

.field private static THRESHOLD:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Lcom/sec/android/secvision/segmentation/IntelligentModeSelection;->THRESHOLD:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sput-wide v0, Lcom/sec/android/secvision/segmentation/IntelligentModeSelection;->MIN_LENGTH:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateFlatnessByBound(Lcom/sec/android/secvision/segmentation/ScribblePath;)D
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getPointArray()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v12, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v13, v11, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    iget v15, v11, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/sec/android/secvision/segmentation/ScribblePath;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-double v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    const-string v12, "PEDIT_IntelligentModeSelection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "flatness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dist = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", area = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "(sx:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "sy:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ey:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), (width:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :cond_0
    div-double v6, v4, v8

    goto/16 :goto_0
.end method

.method private static calculateFlatnessByLength(Lcom/sec/android/secvision/segmentation/ScribblePath;)D
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getPointArray()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v11, v1, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v12, v10, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v11, v1, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    iget v14, v10, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    sub-float/2addr v11, v14

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    const-wide/16 v6, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v12, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v13, v9, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    iget v15, v9, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    add-double/2addr v6, v12

    iget v12, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iput v12, v9, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v12, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    iput v12, v9, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    goto :goto_0

    :cond_0
    sget-wide v12, Lcom/sec/android/secvision/segmentation/IntelligentModeSelection;->MIN_LENGTH:D

    cmpg-double v11, v6, v12

    if-gez v11, :cond_1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    const-string v11, "PEDIT_IntelligentModeSelection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "flatness = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", distance = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_1
    div-double v4, v2, v6

    goto :goto_1
.end method

.method public static decideSegmentationMode(Lcom/sec/android/secvision/segmentation/ScribblePath;)Lcom/sec/android/secvision/segmentation/SegmentationMode;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/secvision/segmentation/IntelligentModeSelection$1;->$SwitchMap$com$sec$android$secvision$segmentation$SegmentationMode:[I

    invoke-virtual {v0}, Lcom/sec/android/secvision/segmentation/SegmentationMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_MANUAL_LOOP_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
