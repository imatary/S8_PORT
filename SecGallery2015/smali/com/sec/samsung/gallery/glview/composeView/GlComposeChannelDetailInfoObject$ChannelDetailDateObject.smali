.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelDetailInfoObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelDetailDateObject"
.end annotation


# instance fields
.field private mAddedMargin:I

.field private mDividerCnt:I

.field private final mDividerHeight:I

.field private final mDividerMarginStartEnd:I

.field private final mDividerWidth:I

.field private final mIconSize:I

.field private mMaxDateViewWidth:I

.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mTextColor:I

.field private final mTextSize:I

.field private final mTextViewMargin:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100214

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextColor:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerWidth:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerHeight:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->resetLayout()V

    return-void
.end method

.method private calcDateLength()V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mMaxDateViewWidth:I

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->sharedContactSize()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mMaxDateViewWidth:I

    return-void
.end method

.method private drawDate(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDatePeriod:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDatePeriod:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mMaxDateViewWidth:I

    int-to-float v5, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextColor:I

    invoke-static {v0, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v4, v7, v5, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1, v4, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    return-void

    :cond_1
    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mMaxDateViewWidth:I

    int-to-float v1, v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v4, v7, v5, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto :goto_3
.end method

.method private drawInfo(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->calcDateLength()V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->drawDate(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->drawPhotoCount(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->drawVideoCount(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-object p1
.end method

.method private drawPhotoCount(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerCnt:I

    if-nez v2, :cond_4

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0200dc

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerHeight:I

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v4, v6

    invoke-virtual {v2, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v4, 0x7

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    if-nez v3, :cond_5

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f020134

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v3, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    :goto_3
    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    if-nez v1, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextColor:I

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v1, v4, v6, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v4, v6

    invoke-virtual {v2, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v1, v4, v6, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto :goto_5
.end method

.method private drawVideoCount(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 11

    const/4 v10, 0x6

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerCnt:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerCnt:I

    if-le v4, v8, :cond_4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    :goto_1
    if-nez v2, :cond_5

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0200dc

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerHeight:I

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v2, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v4, 0x8

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    if-nez v3, :cond_6

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f020137

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mIconSize:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    :goto_4
    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextColor:I

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    :goto_5
    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v1, v4, v6, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v1, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mDividerMarginStartEnd:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v2, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto/16 :goto_2

    :cond_6
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    goto :goto_3

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mAddedMargin:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mTextViewMargin:I

    invoke-virtual {v1, v4, v6, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_0
.end method

.method private resetLayout()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleWidth:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartLeftMarginPixel:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    add-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartTopMarginPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateTopMarginPixel:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleWidth:F
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->setPos(FFF)V

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->getWidth(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v3, v6

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->getHeight(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->drawInfo(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v6, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method
