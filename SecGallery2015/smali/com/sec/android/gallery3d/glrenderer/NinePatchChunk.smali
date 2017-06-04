.class Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"


# static fields
.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public mColor:[I

.field public mDivX:[I

.field public mDivY:[I

.field public final mPaddings:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-void
.end method

.method private static checkDivCount(I)V
    .locals 3

    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static deserialize([B)Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;
    .locals 5

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mColor:[I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->checkDivCount(I)V

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->checkDivCount(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    iget-object v3, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mColor:[I

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
