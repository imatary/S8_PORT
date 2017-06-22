.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;
.super Landroid/os/AsyncTask;
.source "SuperImpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadCoverTask"
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
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-instance v10, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;

    invoke-direct {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    :goto_0
    if-ltz v9, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v4

    array-length v4, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I

    move-result-object v4

    array-length v4, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I

    move-result-object v5

    aget v5, v5, v9

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I

    move-result-object v5

    aget v5, v5, v9

    aget-object v4, v4, v5

    instance-of v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I

    move-result-object v5

    aget v5, v5, v9

    aget-object v11, v4, v5

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v1, v4, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverType()I

    move-result v3

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverStrength()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v2, v10

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getCoverData(II[III)[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v12

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZZ)V

    invoke-virtual {v11, v3, v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setPreviewData([III)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->enableDrawPreview(Z)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
