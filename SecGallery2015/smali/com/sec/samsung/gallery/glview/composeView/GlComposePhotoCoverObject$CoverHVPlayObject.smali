.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposePhotoCoverObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverHVPlayObject"
.end annotation


# instance fields
.field private final mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mSize:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mSize:F

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->resetLayout()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->updateHVPlayIcon(Z)V

    return-void
.end method

.method private getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const v1, 0x7f02012a

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$3800()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)I

    move-result v4

    invoke-static {v2, v1, v3, v4}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private resetAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mSize:F

    return-void
.end method

.method private resetLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->getVideoPlayIconCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->resetAttributes()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mSize:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->mSize:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->setSize(FF)V

    goto :goto_0
.end method

.method private updateHVPlayIcon(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->setVisibility(Z)V

    return-void
.end method
