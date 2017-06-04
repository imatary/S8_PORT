.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationTextObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mTextType:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-direct {p0, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mUseParentThumbTouchAnim:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ILcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->resetLayout()V

    return-void
.end method

.method private drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 12

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a017a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100214

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100196

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTTSTitle:Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Ljava/lang/String;)Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v8, v6

    invoke-static {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartLeftMargin:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSize:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    sub-float v1, v8, v9

    const/4 v8, 0x0

    invoke-static {v5, v8, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_3

    int-to-float v8, v6

    invoke-static {v0, v8, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    sget-boolean v8, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f10006d

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b007c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100196

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v8, v6

    invoke-static {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartLeftMargin:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mButtonSideMargin:F
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v10

    add-float/2addr v9, v10

    sub-float v1, v8, v9

    const/4 v8, 0x0

    invoke-static {v5, v8, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_6

    int-to-float v8, v6

    invoke-static {v0, v8, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    sget-boolean v8, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_2
.end method

.method private resetLayout()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleWidth:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v8

    mul-float v6, v7, v8

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v7, v7

    add-float/2addr v7, v6

    div-float/2addr v7, v11

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mNotiBGLeftPadding:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mDefaultImageSize:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartLeftMargin:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    div-float/2addr v7, v11

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleStartTopMargin:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v5, v7, v8

    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_1

    neg-float v4, v4

    :cond_1
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setSize(FF)V

    invoke-virtual {p0, v4, v5, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setPos(FFF)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->getWidth(Z)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mWidthViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v2, v7

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->getHeight(Z)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mHeightViewRatio:F
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v1, v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->updateTitleView()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->mTextType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mTitleHeight:F
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setSize(FF)V

    neg-float v7, v5

    invoke-virtual {p0, v4, v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setPos(FFF)V

    goto :goto_0
.end method

.method private updateTitleView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationTextObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method
