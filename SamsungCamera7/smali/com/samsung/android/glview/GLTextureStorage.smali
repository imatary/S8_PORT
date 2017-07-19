.class public Lcom/samsung/android/glview/GLTextureStorage;
.super Ljava/lang/Object;
.source "GLTextureStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;
    }
.end annotation


# instance fields
.field private mTextureMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected addTexture(IIFF)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3, p3, p4}, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;-><init>(IIFF)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v3, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p2, v3, p3, p4}, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;-><init>(IIFF)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    if-eqz v1, :cond_0

    const-string v2, "GLTextureStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mTextureID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "GLTextureStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no info at key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected getTextureInfo(I)Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTexture(I)I
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLTextureStorage;->mTextureMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v3, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mTextureID:I

    iget v4, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    iget v6, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;-><init>(IIFF)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
