.class public Lcom/android/gallery3d/glrenderer/GLES11IdImpl;
.super Ljava/lang/Object;
.source "GLES11IdImpl.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLId;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

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

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public glGenBuffers(I[II)V
    .locals 5

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    add-int v2, p3, v0

    :try_start_0
    sget v3, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    aput v3, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
