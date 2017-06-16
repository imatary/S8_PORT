.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v29

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropWidth:F

    move/from16 v0, v29

    int-to-float v9, v0

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropHeight:F

    int-to-float v9, v15

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v5

    if-nez v5, :cond_3

    move/from16 v11, v29

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v29

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v15

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v8, v9, 0x4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$hFlip:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$vFlip:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v11, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perType:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perAngle:F

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->runRotateFlipPerspective([IIIIIIIF)V
    invoke-static/range {v4 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[IIIIIIIF)V

    move/from16 v11, v29

    :goto_3
    if-lez v34, :cond_0

    if-lez v28, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v28

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotation:F

    neg-float v4, v4

    move/from16 v0, v34

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v28

    int-to-float v10, v0

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    invoke-virtual {v8, v4, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    move/from16 v0, v34

    int-to-float v4, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    move/from16 v0, v28

    int-to-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerX:F

    neg-float v4, v4

    int-to-float v9, v11

    mul-float/2addr v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerY:F

    neg-float v9, v9

    int-to-float v10, v15

    mul-float/2addr v9, v10

    invoke-virtual {v8, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v9, v5

    move v14, v11

    invoke-virtual/range {v8 .. v17}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v4, v9

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v9

    if-ne v4, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v10

    mul-int/2addr v9, v10

    if-le v4, v9, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v4, v9

    const/high16 v9, 0x200000

    if-le v4, v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    const/high16 v9, 0x4a000000    # 2097152.0f

    div-float/2addr v4, v9

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLowResolutionDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getScreenRatio(IILandroid/content/Context;)F

    move-result v31

    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v31

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v33

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v31

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v32

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v4, v9

    new-array v0, v4, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, v21

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v9

    if-ne v4, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v4

    const/16 v9, 0x100

    if-ne v4, v9, :cond_6

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v23, v21

    move/from16 v24, v33

    move/from16 v25, v32

    invoke-virtual/range {v22 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZZ)V

    :cond_6
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    move/from16 v29, v6

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_9

    move v15, v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropWidth:F

    move/from16 v0, v29

    int-to-float v9, v0

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropHeight:F

    int-to-float v9, v15

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v5

    if-nez v5, :cond_a

    move/from16 v11, v29

    goto/16 :goto_2

    :cond_8
    move/from16 v29, v7

    goto :goto_5

    :cond_9
    move v15, v6

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v8, v9, 0x4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$hFlip:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$vFlip:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v11, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perType:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perAngle:F

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->runRotateFlipPerspective([IIIIIIIF)V
    invoke-static/range {v4 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[IIIIIIIF)V

    move/from16 v11, v29

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v9

    if-ne v4, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v4

    const/16 v9, 0x100

    if-ne v4, v9, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZZ)V

    goto/16 :goto_4
.end method
