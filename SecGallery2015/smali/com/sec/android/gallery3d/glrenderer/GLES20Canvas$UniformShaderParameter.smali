.class Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;
.super Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniformShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->handle:I

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method
