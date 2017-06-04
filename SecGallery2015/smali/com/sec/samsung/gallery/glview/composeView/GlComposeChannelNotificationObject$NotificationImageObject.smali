.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationImageObject"
.end annotation


# static fields
.field private static final CMD_UPDATE_NOTIFICATION_IMAGE:I


# instance fields
.field private final imageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field private final mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private final mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-direct {p0, p2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->imageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->setCanvasMixRatio(F)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mUseParentThumbTouchAnim:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->imageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/android/gallery3d/glcore/GlImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->drawDefaultImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->rotateAndCropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->resetLayout()V

    return-void
.end method

.method private drawDefaultImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string/jumbo v3, "GlComposeChannelNoti"

    const-string/jumbo v4, "drawDefaultImage start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10006a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const-string/jumbo v3, "GlComposeChannelNoti"

    const-string/jumbo v4, "drawDefaultImage end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mChannelNotiImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    return-void
.end method

.method private resetLayout()V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v4, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getChannelNotiItem()Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "GlComposeChannelNoti"

    const-string/jumbo v5, "The mediaItem for notification object is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->imageView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->drawDefaultImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v4, v6

    neg-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_2

    neg-float v3, v3

    :cond_2
    invoke-virtual {p0, v3, v7, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->setPos(FFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->setSize(FF)V

    goto :goto_0
.end method

.method private rotateAndCropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNewChannelCoverFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    float-to-int v1, v4

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v3, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method
