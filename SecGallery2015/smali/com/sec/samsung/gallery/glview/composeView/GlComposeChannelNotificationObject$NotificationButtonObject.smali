.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationButtonObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-direct {p0, p2, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->resetLayout()V

    return-void
.end method

.method private drawCancelButton(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonRippleSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v1, v3, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020121

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setPaddings(IIII)V

    invoke-virtual {v2, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private resetLayout()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v1, v5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->drawCancelButton(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->getFocusBorderVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float v3, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCoverHeight:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGTopPadding:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float v4, v5, v6

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_1

    neg-float v3, v3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setPos(FFF)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonRippleSize:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonRippleSize:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public drawBorder(Lcom/sec/android/gallery3d/glcore/GlImageView;Z)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_4

    if-nez v0, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method
