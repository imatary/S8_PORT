.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;
    }
.end annotation


# static fields
.field public static final BUTTON_DELETE:I = 0x2

.field public static final BUTTON_NONE:I = 0x0

.field public static final BUTTON_NOTIFICATION:I = 0x1

.field private static final DEFAULT_Z_POSITION:I = -0x320

.field private static final RES_ID_CANCEL_BUTTON:I = 0x5

.field private static final RES_ID_CANCEL_BUTTON_BORDER:I = 0x7

.field private static final RES_ID_DEFAULT_IMAGE:I = 0x2

.field private static final RES_ID_NOTIFICATION_BG:I = 0x1

.field private static final RES_ID_NOTIFICATION_BORDER:I = 0x6

.field private static final RES_ID_NOTIFICATION_CARD:I = 0x8

.field private static final RES_ID_NOTIFICATION_SUB_TEXT_LABEL:I = 0x4

.field private static final RES_ID_NOTIFICATION_TITLE_LABEL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlComposeChannelNoti"

.field private static final TEXT_TYPE_SUB_TITLE:I = 0x2

.field private static final TEXT_TYPE_TITLE:I = 0x1


# instance fields
.field private mActionbarHeight:F

.field private mButtonRippleSize:F

.field private mButtonSideMargin:F

.field private mButtonSize:F

.field private final mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

.field private final mContext:Landroid/content/Context;

.field private mCoverHeight:F

.field private mCoverWidth:F

.field private mDefaultImageSize:F

.field private mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

.field public mFoucsedBtnType:I

.field private mHeightViewRatio:F

.field private mNotiBGLeftPadding:F

.field private mNotiBGTopPadding:F

.field private final mResources:Landroid/content/res/Resources;

.field private mSubTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

.field private mTTSTitle:Ljava/lang/String;

.field private mTabViewHeight:F

.field private mThumbnailObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

.field private mTitleHeight:F

.field private mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

.field private mTitleStartLeftMargin:F

.field private mTitleStartTopMargin:F

.field private mTitleWidth:F

.field private mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mWidthViewRatio:F


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;)V
    .locals 3

    const/4 v2, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getChannelNotiItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonRippleSize:F

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleWidth:F

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartLeftMargin:F

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleHeight:F

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartTopMargin:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTTSTitle:Ljava/lang/String;

    return-object p1
.end method

.method private drawNotificationBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F

    float-to-int v3, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F

    float-to-int v1, v5

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const v6, 0x7f10006a

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private getChannelNotiItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNewChannelCoverFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private initNotificationBG()V
    .locals 6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v4, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->drawNotificationBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private resetAttributes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mActionbarHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTabViewHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleHeight:F

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleWidth:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartLeftMargin:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartTopMargin:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonRippleSize:F

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    goto/16 :goto_0
.end method

.method private setDeleteBtnFocusVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setRippleFocusVisible(Z)V

    :cond_0
    return-void
.end method

.method private setFocusVisible(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setRippleFocusVisible(Z)V

    return-void
.end method

.method private setVisibleRange()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mActionbarHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTabViewHeight:F

    sub-float v0, v1, v2

    const/4 v1, 0x0

    const/high16 v2, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setPos(FFF)V

    return-void
.end method


# virtual methods
.method public createNotificationBG()V
    .locals 14

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "GlComposeChannelNoti"

    const-string/jumbo v1, "createNotificationBG start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->resetAttributes(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->initNotificationBG()V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, p0, v1, p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mThumbnailObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mThumbnailObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ILcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;)V

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    const/4 v10, 0x2

    move-object v7, p0

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ILcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mSubTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mSubTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerNotiCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mActionbarHeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTabViewHeight:F

    sub-float v12, v0, v1

    const/4 v0, 0x0

    const/high16 v1, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v0, v12, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setPos(FFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setSize(FF)V

    invoke-virtual {p0, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    const-string/jumbo v0, "GlComposeChannelNoti"

    const-string/jumbo v1, "createNotificationBG end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v13

    goto/16 :goto_0
.end method

.method public drawDeleteFocusBorder(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setFocusBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->resetLayout()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public drawTotalFocusBorder(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusBorderVisible(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->initNotificationBG()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTTSTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTTSTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    return-object v0
.end method

.method public moveTo(ZI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    :goto_0
    return v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-nez v2, :cond_1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setDeleteBtnFocusVisible(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetLayout(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->resetAttributes(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mThumbnailObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mSubTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDeleteObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;)V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibleRange()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->initNotificationBG()V

    return-void
.end method

.method public setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    goto :goto_0
.end method

.method public setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    goto :goto_0
.end method

.method public setView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 3

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    goto :goto_0
.end method
