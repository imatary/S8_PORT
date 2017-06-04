.class public Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;
.super Ljava/lang/Object;
.source "GLES20IdImpl.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/GLId;


# instance fields
.field private final mTempIntArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;->mTempIntArray:[I

    aget v0, v0, v2

    return v0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method
