.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionButtonObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setSupportButtonShape(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->resetLayout()V

    return-void
.end method

.method private drawCancelButton(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000e2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonPixelSize:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonPixelSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    return-object p1
.end method

.method private resetLayout()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->drawCancelButton(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonTopMarginPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float v5, v6, v7

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setSize(FF)V

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->getWidth(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->getHeight(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v1, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method


# virtual methods
.method protected drawBorder(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setFocusBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setRippleFocusVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setBorderColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->setBorderWidth(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2402(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionButtonObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method
