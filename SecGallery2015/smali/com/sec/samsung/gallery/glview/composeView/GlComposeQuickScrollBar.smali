.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;
.source "GlComposeQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;
    }
.end annotation


# static fields
.field static final CENTER_POPUP_LIMITED_RATIO:F

.field private static final FADE_OUT_DELAY:I = 0x7d0

.field static final MSG_START_DELAY:I = 0x0

.field public static final QUICK_ITEM_SCALE:F = 0.92f

.field private static final RES_ID_BORDER:I = 0x5

.field private static final RES_ID_CENTER_POPUP:I = 0x3

.field private static final RES_ID_CENTER_SUBID_TITLE:I = 0x4

.field static final RES_ID_POPUP_BACKGROUND:I = 0x0

.field static final RES_ID_SCROLL_BAR:I = 0x1

.field static final RES_ID_SUBID_TITLE:I = 0x2


# instance fields
.field mCanvasH:I

.field mCanvasW:I

.field mCenterPopupCanvasH:I

.field mCenterPopupCanvasW:I

.field mCenterPopupObjH:F

.field mCenterPopupObjW:F

.field private final mCenterPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mEnabledQuickScroll:Z

.field mGroupLocation:Ljava/lang/String;

.field mGroupTitle:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field mObjH:F

.field mObjW:F

.field mQuickCenterPopupFontSize:F

.field mQuickScrollFontSize:F

.field mQuickScrollPopupPadding:I

.field mScrollBarCanvasH:I

.field mScrollBarCanvasW:I

.field mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field mScrollBarObjH:F

.field mScrollBarObjW:F

.field private mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field mScrollEndMargin:F

.field mScrollPopupCanvasH:I

.field mScrollPopupCanvasW:I

.field mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field mScrollPopupObjH:F

.field mScrollPopupObjW:F

.field mScrollPopupRightMargin:F

.field mScrollPopupRightMarginPixel:I

.field final mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mTextColor:I

.field mUpperLimit:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3eb33333    # 0.35f

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->CENTER_POPUP_LIMITED_RATIO:F

    return-void

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupLocation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mEnabledQuickScroll:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setSupportRtl(Z)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->handleMessageOnUiThread(I)V

    return-void
.end method

.method private createCenterPopup()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjH:F

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawCenterPopup(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjH:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTop:F

    div-float/2addr v2, v6

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v2, 0x0

    const/high16 v3, -0x3bb80000    # -800.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    return-void
.end method

.method private drawCenterPopup(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickCenterPopupFontSize:F

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupCanvasW:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v5, v12, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickCenterPopupFontSize:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTextColor:I

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    const-string/jumbo v5, "my"

    sget-object v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sCurrentLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_0
    invoke-virtual {v3, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v5, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020289

    invoke-virtual {v5, v6, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {p1, v2, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickCenterPopupFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    const-string/jumbo v5, "my"

    sget-object v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sCurrentLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_2
    invoke-virtual {v3, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickCenterPopupFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    goto :goto_2
.end method

.method private handleMessageOnUiThread(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public disableQuickScroll()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollCenterPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupLocation:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020214

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_0
.end method

.method drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-void
.end method

.method drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollFontSize:F

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasW:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v5, v11, v6, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_1

    const v5, 0x7f02028b

    :goto_0
    invoke-virtual {v6, v5, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollFontSize:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTextColor:I

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    invoke-virtual {v3, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollPopupTextBottomPadding()I

    move-result v5

    invoke-virtual {v3, v8, v5, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {p1, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasH:I

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v2, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p0, v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    :cond_0
    return-void

    :cond_1
    const v5, 0x7f02028c

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    goto :goto_1
.end method

.method public enableQuickScroll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setAlpha(F)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->createCenterPopup()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    return-void
.end method

.method public fadeOut(JJ)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->disableQuickScroll()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setQuickScrollEnabled(Z)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->fadeOut(JJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawCenterPopup(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    goto :goto_0
.end method

.method getHeight(FF)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjH:F

    return v0
.end method

.method getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f020286

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f020285

    goto :goto_0
.end method

.method public hideNow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    return-void
.end method

.method initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;)V

    return-object v0
.end method

.method initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;)V

    return-object v0
.end method

.method protected initScrollBar()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutDelay:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    return-void
.end method

.method public isQuickScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mEnabledQuickScroll:Z

    return v0
.end method

.method public reset(FFFFFF)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->resetQuickScroll(FFFF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setThickness()V

    return-void
.end method

.method resetQuickScroll(FFFF)V
    .locals 8

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0351

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollBarWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v6, v3, 0x2

    add-int v0, v4, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b033f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz v4, :cond_1

    mul-float v4, v5, p3

    div-float/2addr v4, p4

    :goto_1
    div-float v4, p3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjH:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjH:F

    int-to-float v4, v1

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjW:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->CENTER_POPUP_LIMITED_RATIO:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjW:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollCenterPopupHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCenterPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0348

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollEndMargin:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b034e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupRightMarginPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupRightMarginPixel:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupRightMargin:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHeightSpace:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTop:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mUpperLimit:F

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCanvasW:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mCanvasH:I

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    const v5, 0x7f1001b9

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTextColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollFontSize:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickCenterPopupFontSize:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollPopupPadding()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mQuickScrollPopupPadding:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->resetScrollBar()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->resetScrollPopup()V

    goto/16 :goto_0

    :cond_1
    move v4, v5

    goto/16 :goto_1
.end method

.method resetScrollBar()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollEndMargin:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObjH:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    goto :goto_0
.end method

.method resetScrollPopup()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjW:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupRightMargin:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    div-float/2addr v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto :goto_0
.end method

.method setFocusBorderVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setBorderColor(I)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setFocusBorderVisible(Z)V

    return-void
.end method

.method setQuickScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mEnabledQuickScroll:Z

    return-void
.end method

.method setThickness()V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mThickness:F

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setQuickScrollEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setFocusBorderVisible(Z)V

    :cond_1
    return-void
.end method

.method public update(FFF)V
    .locals 15

    sub-float v9, p3, p2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getHeight(FF)F

    move-result v8

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mThickness:F

    invoke-virtual {p0, v12, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setSize(FF)V

    const/4 v12, 0x0

    cmpg-float v12, v9, v12

    if-gtz v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mHeightSpace:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mTop:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mBottom:F

    add-float/2addr v12, v13

    add-float/2addr v12, v8

    sub-float/2addr v12, v2

    div-float v3, v12, v9

    neg-float v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v8, v13

    add-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mBottom:F

    add-float/2addr v12, v13

    mul-float v13, p3, v3

    sub-float v5, v12, v13

    mul-float v12, v3, p1

    add-float v11, v12, v5

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mWidthSpace:F

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mWidthSpace:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mPaddingRight:F

    sub-float v10, v12, v13

    const/high16 v12, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setPos(FFF)V

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mUpperLimit:F

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v13

    sub-float v4, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mObjW:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjW:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupRightMargin:F

    sub-float v6, v12, v13

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    cmpg-float v12, v4, v12

    if-gez v12, :cond_1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v4

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    sub-float v7, v12, v13

    :goto_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v7, v13}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto :goto_0

    :cond_1
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollPopupObjH:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v7, v12, v13

    goto :goto_1
.end method

.method updateScrollBarImage(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateScrollTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
