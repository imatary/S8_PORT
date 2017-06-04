.class public Lcom/sec/android/gallery3d/glrenderer/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method
