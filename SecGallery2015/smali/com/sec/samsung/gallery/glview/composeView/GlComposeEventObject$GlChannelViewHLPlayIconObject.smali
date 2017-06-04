.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlChannelViewHLPlayIconObject"
.end annotation


# instance fields
.field private mChannelId:I

.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

.field private mSize:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mSize:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mChannelId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mChannelId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;ILcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->resetLayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->updateHVPlayIconVisivilty(Z)V

    return-void
.end method

.method private getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const v2, 0x7f02016e

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    goto :goto_0
.end method

.method private resetAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidthViewRatio:F
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeightViewRatio:F
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mSize:F

    return-void
.end method

.method private resetLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->resetAttributes()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mSize:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mSize:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setSize(FF)V

    goto :goto_0
.end method

.method private updateHVPlayIconVisivilty(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public getChannelViewHLPlayIconObjectChannelID()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->mChannelId:I

    return v0
.end method
