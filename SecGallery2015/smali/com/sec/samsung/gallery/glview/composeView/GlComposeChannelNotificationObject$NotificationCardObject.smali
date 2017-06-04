.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationCardObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-direct {p0, p2, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->resetLayout()V

    return-void
.end method

.method private drawNotificationBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 9

    const/16 v8, 0x8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    float-to-int v2, v6

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const v7, 0x7f10006a

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f020079

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v3, v2, v4, v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v3, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private resetLayout()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v4, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->drawNotificationBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->getFocusBorderVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverWidth:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setSize(FF)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    float-to-int v5, v5

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    float-to-int v5, v5

    sub-int v3, v4, v5

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_3

    if-nez v0, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020061

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationCardObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method
