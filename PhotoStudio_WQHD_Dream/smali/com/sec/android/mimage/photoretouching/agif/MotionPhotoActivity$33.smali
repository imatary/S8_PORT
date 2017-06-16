.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveFunc(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentIndex:I

.field private currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isCancelled:[Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/app/ProgressDialog;Landroid/content/Intent;[Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$isCancelled:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    return-void
.end method

.method private getNextIndex(I)I
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$50;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIRECTION:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$50;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$CustomAnimationController$TREND:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isFaceFound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public doInBackground()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v14, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/16 v21, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v4, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPriavtePath:Z
    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeSpeedToDuration(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I
    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDuration:I
    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5302(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)I

    new-instance v12, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v12}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDuration:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setWriteFunc(I)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDither(I)V

    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    new-instance v22, Ljava/io/File;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_GRACE_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_GRACE_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getSaveFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2502(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->start(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "agif start error"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v13, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v4, :cond_a

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v11, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-ne v2, v4, :cond_c

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkAgifSameSize(Ljava/util/ArrayList;)Z
    invoke-static {v2, v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;)Z

    move-result v16

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$isCancelled:[Z

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    if-ltz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getOrgBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v4, :cond_10

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    invoke-virtual {v2, v15, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v10, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v11, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    :goto_5
    if-eqz v23, :cond_12

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "addFrame error"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    :cond_7
    :goto_6
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v23, 0x0

    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->getNextIndex(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v10, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v11, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v10, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    int-to-float v2, v2

    div-float/2addr v2, v13

    float-to-int v11, v2

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentTrend:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    invoke-virtual {v2, v15, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v10, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v11, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int v2, v27, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    mul-int/2addr v4, v5

    if-gt v2, v4, :cond_f

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDW:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->HDH:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    mul-int v4, v27, v20

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move/from16 v0, v27

    int-to-double v4, v0

    mul-double v4, v4, v24

    double-to-int v10, v4

    move/from16 v0, v20

    int-to-double v4, v0

    mul-double v4, v4, v24

    double-to-int v11, v4

    const/4 v2, 0x1

    invoke-static {v15, v10, v11, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v15, v11, v10, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleCenterCropFaceRect(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2, v15, v11, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleCenterCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_5

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap null ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->currentIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v12}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finish()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$isCancelled:[Z

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " File deleted + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    :cond_15
    const-string v2, "finish error"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v26, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    add-int/lit8 v5, v26, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v3

    invoke-static/range {v2 .. v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public onPostExecute()V
    .locals 8

    const v5, 0x7f07027e

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSaveUnderProcess:Z
    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$4902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$isCancelled:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDirFromSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const-string v3, "AgifSave"

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getNewIntent(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$isCancelled:[Z

    aput-boolean v6, v2, v6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z
    invoke-static {v2, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2702(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0088

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z
    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V
    invoke-static {v2, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSaveUnderProcess:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$4902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
