.class public Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
.super Ljava/lang/Object;
.source "QuramAGIFEncoder.java"


# instance fields
.field protected mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->loadLib()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, p0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeInitHandle(Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;)V

    return-void
.end method

.method public static loadLib()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "quramagifencoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QuramAGIFEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load library fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static native nativeMakeContactBuffer([BIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactImage(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method protected static native nativeMakeContactImageRect(Ljava/lang/String;Ljava/lang/String;IIII)I
.end method

.method protected static native nativeMakeContactRectBuffer([BIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactRectResizeBuffer([BIIIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactResizeImageRect(Ljava/lang/String;Ljava/lang/String;IIIIII)I
.end method


# virtual methods
.method public addFrameTP(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public finish()Z
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeFinish(J)Z

    move-result v0

    return v0
.end method

.method protected native nativeAddFrame(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddFrameMP(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddIntBufferTP(J[I)Z
.end method

.method protected native nativeFinish(J)Z
.end method

.method protected native nativeInitHandle(Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;)V
.end method

.method protected native nativeSetDelay(JI)V
.end method

.method protected native nativeSetDispose(JI)V
.end method

.method protected native nativeSetDither(JI)V
.end method

.method protected native nativeSetFrameRate(JF)V
.end method

.method protected native nativeSetGlobalSize(JII)V
.end method

.method protected native nativeSetMaxResolution(JI)V
.end method

.method protected native nativeSetMaxTask(JI)V
.end method

.method protected native nativeSetMaxTaskTP(JI)V
.end method

.method protected native nativeSetPosition(JII)V
.end method

.method protected native nativeSetQuality(JI)V
.end method

.method protected native nativeSetRepeat(JI)V
.end method

.method protected native nativeSetSize(JII)V
.end method

.method protected native nativeSetTransparent(JI)V
.end method

.method protected native nativeSetWriteFunc(JI)V
.end method

.method protected native nativeStart(JLjava/lang/String;)Z
.end method

.method protected native nativeStartFD(JLjava/io/FileDescriptor;)Z
.end method

.method public setDelay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetDelay(JI)V

    return-void
.end method

.method public setDispose(I)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetDispose(JI)V

    return-void
.end method

.method public setGlobalSize(II)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetGlobalSize(JII)V

    return-void
.end method

.method public setMaxTaskTP(I)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetMaxTaskTP(JI)V

    return-void
.end method

.method public setPosition(II)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetPosition(JII)V

    return-void
.end method

.method public setRepeat(I)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetRepeat(JI)V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetSize(JII)V

    return-void
.end method

.method public setTransparent(I)V
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetTransparent(JI)V

    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeStart(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method
