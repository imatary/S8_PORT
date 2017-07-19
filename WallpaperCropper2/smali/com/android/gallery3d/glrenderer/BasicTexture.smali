.class public abstract Lcom/android/gallery3d/glrenderer/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    iput p2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    iput p3, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    sget-object v1, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private freeResource()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    if-eq v1, v2, :cond_0

    invoke-interface {v0, p0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    iput v2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    sget-object v1, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/BasicTexture;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static yieldAllTextures()V
    .locals 3

    sget-object v1, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->yield()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    sget-object v0, Lcom/android/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/glrenderer/GLCanvas;

    return-void
.end method

.method protected setBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return-void
.end method

.method public setSize(II)V
    .locals 5

    const/16 v2, 0x1000

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    iput p2, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    if-lez p1, :cond_2

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    if-lez p2, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    if-le v0, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "BasicTexture"

    const-string/jumbo v2, "texture is too large: %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public yield()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method
