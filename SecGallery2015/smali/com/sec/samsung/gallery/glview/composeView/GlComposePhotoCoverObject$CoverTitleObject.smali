.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposePhotoCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverTitleObject"
.end annotation


# instance fields
.field private mBottomMargin:F

.field private mLeftMargin:F

.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mPreviousScreenMode:Z

.field private mTitleHeight:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mPreviousScreenMode:Z

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mPreviousScreenMode:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->useMultiLine()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->updateTitleView()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->resetLayout()V

    return-void
.end method

.method private drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 27

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitlePaddingforSSFont()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100195

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100196

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v23

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v26

    check-cast v26, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move/from16 v0, v24

    int-to-float v4, v0

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b01ea

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v17, v0

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-static {v3, v4, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v3

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mPreviousScreenMode:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    if-lt v4, v5, :cond_9

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    if-ne v15, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mPreviousScreenMode:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3502(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Z)Z

    :cond_3
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v25, v0

    new-instance v2, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v17, v7

    float-to-int v7, v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v14

    const/4 v4, 0x2

    if-le v14, v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v16

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v4, :cond_a

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v21

    int-to-float v4, v0

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v6, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_3
    if-eqz v26, :cond_5

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v17, v4

    float-to-int v8, v4

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, v3

    move/from16 v10, v22

    invoke-static/range {v7 .. v13}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v26

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v4, v5, v7, v8, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_5
    return-object p1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v4

    iget-object v0, v4, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    goto/16 :goto_2

    :cond_b
    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float v5, v17, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    move/from16 v0, v19

    int-to-float v4, v0

    sub-float v4, v17, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v6, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method

.method private resetAttributes()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mTitleHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLeftMargin:F

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mBottomMargin:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->resetAttributes()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->useMultiLine()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mTitleHeight:F

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLeftMargin:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mTitleHeight:F

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mBottomMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mTitleHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v7, v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setPos(FFF)V

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->getWidth(Z)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->getHeight(Z)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method

.method private updateTitleView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->drawTitle(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private useMultiLine()Z
    .locals 10

    const/4 v6, 0x0

    const-string/jumbo v3, ""

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v7, v4

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v7, :cond_4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01ea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    if-lt v5, v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v7

    iget-object v1, v7, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    goto :goto_1
.end method
