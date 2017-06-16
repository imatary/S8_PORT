.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;
.super Ljava/lang/Thread;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    if-gtz v4, :cond_1

    :cond_0
    monitor-exit v21

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartARGB:[I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v8, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v9, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v11, v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    invoke-direct {v6, v7, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, v20

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->doMatte(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    invoke-static {v4, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v8, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v9, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotation:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    if-gtz v4, :cond_4

    :cond_3
    monitor-exit v21

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotation:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-object v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxXX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxYY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxXX:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxYY:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minXX:I

    sub-int v5, v18, v5

    iput v5, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minYY:I

    sub-int v5, v19, v5

    iput v5, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v10, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v12, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v13, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minXX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v14, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minYY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v15, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
