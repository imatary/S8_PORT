.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposePhotoCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverDecorObject"
.end annotation


# instance fields
.field private final mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->mParenObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setCanvasMixRatio(F)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->resetLayout()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->updateDate()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->updateCoverView([I)V

    return-void
.end method

.method private drawDate(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "GlComposePhotoCoverObject"

    const-string/jumbo v4, "A latest item for event view is empty"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v17, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    const v8, 0x10014

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100195

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100196

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v3, v10

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    mul-int/lit8 v4, v14, 0x2

    sub-int/2addr v3, v4

    int-to-float v15, v3

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v9, v3, v15, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v11, :cond_3

    int-to-float v3, v10

    move/from16 v0, v19

    invoke-static {v9, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v11

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v11, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v14, v3, v4, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v4, v10

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v11, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetLayout()V
    .locals 6

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3800()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v4, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4100()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setSize(FF)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3800()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    goto :goto_1
.end method

.method private updateBackground([I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v4, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v6, v6, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method

.method private updateCoverView([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->updateDate()V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->updateBackground([I)V

    return-void
.end method

.method private updateDate()V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2700()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->drawDate(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    return-void
.end method
