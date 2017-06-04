.class public interface abstract Lcom/sec/android/gallery3d/glrenderer/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_CLIP:I = 0x4

.field public static final SAVE_FLAG_MATRIX:I = 0x2


# virtual methods
.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract drawCubicBezierCurve(FFFFFFFFFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
.end method

.method public abstract drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
.end method

.method public abstract drawMesh(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
.end method

.method public abstract dumpStatisticsAndClear()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAllTextures()Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getGLId()Lcom/sec/android/gallery3d/glrenderer/GLId;
.end method

.method public abstract getUploadedCount()I
.end method

.method public abstract initializeTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
.end method

.method public abstract initializeTextureSize(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;II)V
.end method

.method public abstract invalidateAllTextures()V
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract resetUploadLimit()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAllTextues(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setTextureParameters(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
.end method

.method public abstract setUploadedCount(I)V
.end method

.method public abstract texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z
.end method

.method public abstract uploadBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract uploadBuffer(Ljava/nio/FloatBuffer;)I
.end method

.method public abstract uploadLimitReached()Z
.end method

.method public abstract yieldAllTextures()V
.end method
