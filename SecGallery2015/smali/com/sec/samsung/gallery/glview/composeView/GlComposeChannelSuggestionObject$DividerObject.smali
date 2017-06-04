.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerObject"
.end annotation


# instance fields
.field private final mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->setCanvasMixRatio(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->resetLayout()V

    return-void
.end method

.method private drawDivider(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 5

    const/4 v4, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private resetLayout()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasWidthPixel:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGCanvasHeightPixel:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->drawDivider(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonHeight:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v5

    add-float v2, v4, v5

    invoke-virtual {p0, v7, v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->setPos(FFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbLeftMarginPixel:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v3, v4

    int-to-float v4, v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDividerHeightPixel:F
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$DividerObject;->setSize(FF)V

    return-void
.end method
