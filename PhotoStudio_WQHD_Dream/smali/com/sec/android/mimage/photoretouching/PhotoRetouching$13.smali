.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->applyDummyBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v15, 0x7f0e02fc

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v14

    const/high16 v15, 0x80000

    if-ne v14, v15, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getPreViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getPreViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    # setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v14, v15}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$502(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v14

    const/high16 v15, 0x20000

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPreviewSizeForAdjustment(Landroid/content/Context;)[I

    move-result-object v10

    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    const/16 v16, 0x2

    aget v16, v10, v16

    const/16 v17, 0x3

    aget v17, v10, v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v14, v15, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v12, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v13, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isInMultiWindowMode()Z

    move-result v14

    if-nez v14, :cond_3

    if-ne v5, v12, :cond_2

    if-eq v13, v7, :cond_3

    :cond_2
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v12, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v13, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/widget/ImageView;->requestLayout()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;

    invoke-direct {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v13, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->setWidths(II)V

    invoke-virtual {v3, v12, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->setHeights(II)V

    const-wide/16 v14, 0x12c

    invoke-virtual {v3, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->setDuration(J)V

    new-instance v14, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v14}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v3, v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/SizeChangeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x1

    sput-boolean v14, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isApplyDummy:Z

    return-void
.end method
