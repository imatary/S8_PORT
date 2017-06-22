.class public Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;
.super Ljava/lang/Object;
.source "AgifFrameContainer.java"


# static fields
.field private static singleton:Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;


# instance fields
.field aspectRatio:F

.field bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public faceRect:Landroid/graphics/RectF;

.field mPreViewBitmap:Landroid/graphics/Bitmap;

.field speed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->singleton:Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->speed:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->mPreViewBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->aspectRatio:F

    return-void
.end method

.method public static getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->singleton:Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    return-object v0
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearArray()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->aspectRatio:F

    return v0
.end method

.method public getBitmapWidth()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getBitmapheight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->bitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->mPreViewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->aspectRatio:F

    return-void
.end method

.method public setFaceRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->faceRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setPreViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->mPreViewBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->speed:I

    return-void
.end method
