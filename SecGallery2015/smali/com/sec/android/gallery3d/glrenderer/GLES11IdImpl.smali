.class public Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;
.super Ljava/lang/Object;
.source "GLES11IdImpl.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/GLId;


# static fields
.field private static final BASE_ID:I = 0x403

.field private static final sLock:Ljava/lang/Object;

.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x403

    sput v0, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 5

    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2

    move v0, p1

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_0

    add-int v1, p3, p1

    :try_start_0
    sget v3, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    aput v3, p2, v1

    move v0, p1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
