.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doGPUOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

.field final synthetic val$doneTime:J

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$height:I

.field final synthetic val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$origBufId:I

.field final synthetic val$origMaskId:I

.field final synthetic val$progress:I

.field final synthetic val$stateId:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;JIIIIIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iput-wide p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$doneTime:J

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$origBufId:I

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$origMaskId:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$width:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$height:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$stateId:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$progress:I

    iput-object p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iput-object p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$doneTime:J

    sub-long/2addr v6, v14

    const-wide/16 v14, 0x190

    cmp-long v4, v6, v14

    if-gez v4, :cond_0

    const-wide/16 v6, 0x14

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "update_gpu_ori"

    invoke-static {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v28

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$origBufId:I

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$origMaskId:I

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getByteArray(I)[B

    move-result-object v24

    if-eqz v3, :cond_1

    if-nez v24, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$width:I

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$height:I

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v27, 0x0

    const/16 v26, 0x0

    int-to-float v4, v5

    int-to-float v6, v9

    div-float v26, v4, v6

    const/16 v4, 0x2000

    if-le v5, v4, :cond_8

    const/high16 v4, 0x46000000    # 8192.0f

    div-float v4, v4, v26

    float-to-int v9, v4

    const/16 v5, 0x2000

    const/4 v4, 0x1

    invoke-static {v2, v5, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, v27

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_3
    :goto_2
    mul-int v4, v5, v9

    new-array v11, v4, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v7, v11

    invoke-static {v3, v4, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$stateId:I

    invoke-static {v4, v6, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->doProcess(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    :cond_5
    sget-boolean v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-eqz v4, :cond_6

    invoke-static {v3, v11, v5, v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->copyInputAlpha([I[III)I

    :cond_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$progress:I

    mul-int/lit16 v4, v4, 0xff

    div-int/lit8 v4, v4, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x1

    move-object v13, v11

    move v15, v5

    move/from16 v18, v5

    move/from16 v19, v9

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, v25

    move-object v14, v11

    move/from16 v16, v5

    move/from16 v19, v5

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v25, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v16, v11

    move/from16 v17, v5

    move/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v6

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;->val$imageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4, v11, v5, v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_7
    const-string v4, "gpu_original"

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->releaseSecImaging(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x2000

    if-le v9, v4, :cond_3

    int-to-float v4, v9

    int-to-float v6, v5

    div-float v26, v4, v6

    const/high16 v4, 0x46000000    # 8192.0f

    div-float v4, v4, v26

    float-to-int v5, v4

    const/16 v9, 0x2000

    const/4 v4, 0x1

    invoke-static {v2, v5, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, v27

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_2
.end method
