.class Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;
.super Ljava/lang/Object;
.source "GlCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasItem"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mCanvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlCanvas;Lcom/sec/android/gallery3d/glcore/GlCanvas$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Lcom/sec/android/gallery3d/glcore/GlCanvas;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
