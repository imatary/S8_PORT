.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIntentToLPE(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 19

    const/4 v11, 0x1

    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v14, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v11

    :cond_0
    if-nez v11, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "fails to create"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v14, ".collage_temp.jpg"

    invoke-direct {v8, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    const/4 v9, 0x0

    new-instance v14, Ljava/io/File;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7100()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRects()V
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->clearArray()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->addBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectForCurrentAGIFFrame(Landroid/graphics/Bitmap;F)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setFaceRect(Landroid/graphics/RectF;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v14, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setAspectRatio(F)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.sec.android.mimage.photoretouching"

    const-string v15, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "service"

    const-string v15, "decoration"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "filepath"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->writeOriginalBmpToFile(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/16 v15, 0xfa4

    invoke-virtual {v14, v10, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const-string v15, "Decoration"

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v15, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setFaceRect(Landroid/graphics/RectF;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v15, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setAspectRatio(F)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectForCurrentAGIFFrame(Landroid/graphics/Bitmap;F)Landroid/graphics/RectF;

    move-result-object v3

    :goto_3
    new-instance v13, Landroid/graphics/Rect;

    iget v14, v3, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v3, Landroid/graphics/RectF;->top:F

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v14, 0x0

    iput v14, v5, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    iput v14, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    rem-int/lit8 v14, v14, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    add-int/lit8 v14, v14, -0x1

    :goto_4
    iput v14, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    rem-int/lit8 v14, v14, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    add-int/lit8 v14, v14, -0x1

    :goto_5
    iput v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v13, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v12}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->setPreViewBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v15, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_5
.end method

.method public onPostExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2102(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentMotionOrientation:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonInvisible()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    return-void
.end method
