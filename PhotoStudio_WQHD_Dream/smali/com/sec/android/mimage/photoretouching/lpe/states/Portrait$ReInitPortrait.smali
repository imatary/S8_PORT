.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;
.super Landroid/os/AsyncTask;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReInitPortrait"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iput v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iput v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iput v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iput v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->setProperty(IIII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v3, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2102(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III[I)[B

    move-result-object v1

    const-string v3, "PEDIT_Portrait"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReInit with image ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;

    aget v4, v2, v7

    aget v5, v2, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v6

    aget v6, v6, v0

    invoke-static {v1, v4, v5, v6}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->runFD([BIII)I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2202(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I

    move-result-object v4

    aget v4, v4, v0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->result_face_orientation:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2402(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v4

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->addFaceRectFromEngine(I)V
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z
    invoke-static {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initCircles(Z)V
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v3

    if-eq v3, v10, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgressWithUpdate(F)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I
    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z
    invoke-static {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
