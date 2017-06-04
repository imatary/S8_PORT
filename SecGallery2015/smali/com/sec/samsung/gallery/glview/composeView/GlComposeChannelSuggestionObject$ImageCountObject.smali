.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCountObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setUseTouchEvent(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->resetLayout()V

    return-void
.end method

.method private resetLayout()V
    .locals 18

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDefaultImageSizePixel:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mDefaultImageSizePixel:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f100079

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 v11, 0x20

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    const-string/jumbo v11, "ar"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string/jumbo v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mResources:Landroid/content/res/Resources;
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b02c4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f10007a

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v9, v10, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->IS_N_OS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$6400()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    :goto_1
    invoke-virtual {v12, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    const/16 v11, 0x20

    invoke-virtual {v4, v3, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    invoke-virtual {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setSize(FF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->moveToLast()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbGap:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    mul-float v8, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGWidth:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartLeftMarginPixel:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mWidthViewRatio:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    add-float v6, v11, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mBGHeight:F
    invoke-static {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mThumbHeightPixel:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mCardBGTopPaddingPixel:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleStartTopMarginPixel:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleBottomMarginPixel:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mHeightViewRatio:F
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mTitleHeight:F
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)F

    move-result v12

    sub-float v7, v11, v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->setPos(FFF)V

    return-void

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mSuggestionItem:Landroid/util/SparseArray;
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageCountObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->mMaxItemCount:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    goto/16 :goto_1
.end method
