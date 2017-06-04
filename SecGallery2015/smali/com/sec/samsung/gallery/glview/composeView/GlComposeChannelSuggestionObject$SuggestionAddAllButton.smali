.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAddAllButton"
.end annotation


# instance fields
.field private mHeightButton:F

.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mWidthButton:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mWidthButton:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mHeightButton:F

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setSupportButtonShape(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->resetLayout()V

    return-void
.end method

.method private drawAddAllText()Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100112

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isLowStorageStatus()Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x66ffffff

    and-int/2addr v2, v6

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAddAllTextLongLanguage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "el"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b03a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v5, :cond_3

    int-to-float v6, v4

    invoke-static {v3, v6, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6400()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v5, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v0, v5, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonPadding:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonPadding:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mWidthButton:F

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mHeightButton:F

    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b02bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_2
.end method

.method private resetLayout()V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->drawAddAllText()Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGSidePaddingPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbRightMarginPixel:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mWidthButton:F

    div-float/2addr v8, v10

    sub-float v5, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v10

    neg-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mAddAllButtonHeight:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    div-float/2addr v8, v10

    add-float v6, v7, v8

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setPos(FFF)V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mWidthButton:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->mHeightButton:F

    invoke-virtual {p0, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setSize(FF)V

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->getWidth(Z)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v3, v7

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->getHeight(Z)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v2, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method


# virtual methods
.method protected drawBorder(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setBorderColor(I)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setRippleFocusVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mNextFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2402(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbnailObjArray:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mPrevFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionAddAllButton;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mLastFocus:I
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;I)I

    return-void
.end method
