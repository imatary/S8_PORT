.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelDetailInfoObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelDetailTitleObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->setSupportRtl(Z)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->resetLayout()V

    return-void
.end method

.method private drawTitle(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100214

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03a7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v8, v6

    invoke-static {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v10

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float v2, v8, v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    if-nez v7, :cond_4

    int-to-float v8, v6

    invoke-static {v1, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    invoke-virtual {v7, v12, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1, v7, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    invoke-virtual {v7, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_2
.end method

.method private resetLayout()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    add-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->setPos(FFF)V

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->getWidth(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v3, v6

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->getHeight(Z)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->drawTitle(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v6, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method
