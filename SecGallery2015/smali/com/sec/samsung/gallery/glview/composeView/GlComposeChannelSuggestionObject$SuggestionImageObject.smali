.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionImageObject"
.end annotation


# instance fields
.field private mDecodeTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsDecoded:Z

.field private final mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setCanvasMixRatio(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setReuseObj(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIsDecoded:Z

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIsDecoded:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->resetLayout()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)Lcom/sec/android/gallery3d/util/ThreadPool;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->cancelDecode()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->drawSuggestionImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private cancelDecode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    return-void
.end method

.method private drawSuggestionImage(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x2

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v4

    float-to-int v1, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-static {p1, v1, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v7

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIsDecoded:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->drawSuggestionImage(Landroid/graphics/Bitmap;)V

    move-object v3, p0

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;

    invoke-direct {v8, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V

    invoke-virtual {v7, v1, v8}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mDecodeTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setVertexRotation(I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float v6, v7, v8

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v10

    neg-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    div-float/2addr v8, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float v4, v7, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    div-float/2addr v8, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    sub-float v5, v7, v8

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setPos(FFF)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setSize(FF)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected drawBorder(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setBorderColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2402(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method

.method protected moveLeft()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v1

    :cond_2
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->drawBorder(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3006(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    goto :goto_0
.end method

.method protected moveRight()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3004(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    :cond_2
    return-void
.end method
