.class Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;
.super Ljava/lang/Object;
.source "GlCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasSetInfo"
.end annotation


# instance fields
.field private mCount:[I

.field private mItem:[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

.field private mKeySet:[I

.field private mTypeCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mKeySet:[I

    new-array v0, p1, [[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mItem:[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mCount:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mTypeCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mKeySet:[I

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mKeySet:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mTypeCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mTypeCount:I

    return p1
.end method

.method static synthetic access$104(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mTypeCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mItem:[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mItem:[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mCount:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->mCount:[I

    return-object p1
.end method
