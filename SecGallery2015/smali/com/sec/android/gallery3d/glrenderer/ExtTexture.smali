.class public Lcom/sec/android/gallery3d/glrenderer/ExtTexture;
.super Lcom/sec/android/gallery3d/glrenderer/BasicTexture;
.source "ExtTexture.java"


# instance fields
.field private final mTarget:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/sec/android/gallery3d/glrenderer/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->mId:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    invoke-interface {p1, p0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->setAssociatedCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->mState:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->uploadToCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
