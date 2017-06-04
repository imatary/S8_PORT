.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionTextObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->resetLayout()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method private drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 13

    const v9, 0x7f0a0436

    const/4 v12, 0x4

    const/4 v11, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6400()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100214

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b02c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v8, v6

    invoke-static {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGWidthPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartLeftMarginPixel:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCancelButtonSizePixel:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    sub-float v1, v8, v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_3

    int-to-float v8, v6

    invoke-static {v0, v8, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6400()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v11, v8, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v7, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-object p1

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private resetLayout()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleWidth:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartLeftMarginPixel:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartTopMarginPixel:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleWidth:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->setPos(FFF)V

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->getWidth(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->getHeight(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v1, v6

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionTextObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method
