.class public Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "NoItemIcon.java"


# instance fields
.field private mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b01d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mContext:Landroid/content/Context;

    const v4, 0x7f100182

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mContext:Landroid/content/Context;

    const v4, 0x7f0a015e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIZ)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/NoItemIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    return-object v3
.end method
