.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

.field final synthetic val$doneTime:J

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$progress:I

.field final synthetic val$stateId:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;JIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-wide p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$doneTime:J

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$stateId:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$progress:I

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalMaskId()I

    move-result v24

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$doneTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x190

    cmp-long v7, v14, v16

    if-gez v7, :cond_0

    const-wide/16 v14, 0x14

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v2

    invoke-static/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getByteArray(I)[B

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    array-length v7, v2

    new-array v4, v7, [I

    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$stateId:I

    packed-switch v7, :pswitch_data_0

    :goto_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    move v14, v5

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v7

    const/16 v8, 0x1022

    if-ne v7, v8, :cond_3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$progress:I

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v8, v13, v14}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_3
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$progress:I

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v7, v7, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x1

    move-object v13, v4

    move v15, v5

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v11

    move-object v14, v4

    move/from16 v16, v5

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v8

    if-ne v7, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    goto/16 :goto_1

    :pswitch_0
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVintagePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPopArt([I[III)V

    goto/16 :goto_2

    :pswitch_2
    const/16 v7, 0xa

    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlGreyscale([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySepiaPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_4
    const/4 v7, 0x4

    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySharpenPartial([I[B[IIIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_5
    const/16 v7, 0x32

    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySoftglowPartial([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyRainbowPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x1014

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    new-instance v13, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v13, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v10, v3

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyStardustPartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x1015

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    new-instance v13, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v13, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v10, v3

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightFlarePartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x1019

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    new-instance v13, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v13, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v10, v3

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightStreakPartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x1021

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    new-instance v13, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v13, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v10, v3

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySketchTexturePartial([I[I[I[BIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_b
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyInvert([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyCartoonizePartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x101f

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v10

    new-instance v14, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v13, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v14, v7, v8, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v11, v3

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v14}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyImpressionistPartial([I[I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_e
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDownlightPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_f
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyBluewashPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_10
    const/16 v7, 0x32

    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlFadedColour([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_11
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVignettePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_12
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyTurquoisePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_13
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyYellowglowPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/16 v8, 0x101d

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v10

    new-instance v14, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v13, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v14, v7, v8, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    move-object v8, v4

    move-object v11, v3

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v14}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDawnCastPartial([I[I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_15
    const/16 v7, 0x64

    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v5, -0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPosterizePartial([I[B[IIIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_16
    new-instance v16, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v13, v5, -0x1

    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v11, v2

    move-object v12, v4

    move-object v13, v3

    move v14, v5

    move v15, v6

    invoke-static/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyGothicNoirPartial([I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_17
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyMagicPenPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    :pswitch_18
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyNostalgiaPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1012
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
