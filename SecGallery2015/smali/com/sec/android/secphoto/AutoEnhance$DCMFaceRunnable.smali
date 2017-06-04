.class Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;
.super Ljava/lang/Object;
.source "AutoEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secphoto/AutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DCMFaceRunnable"
.end annotation


# instance fields
.field final DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

.field final context:Landroid/content/Context;

.field final imgFaces:[I

.field final isThreadComplete:[Z

.field mfacedetector:Lcom/sec/samsung/gallery/lib/libinterface/FaceDetectorInterface;

.field final resizedBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;[ILcom/sec/samsung/gallery/lib/libinterface/FaceDetectorInterface;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    iput-object p4, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->mfacedetector:Lcom/sec/samsung/gallery/lib/libinterface/FaceDetectorInterface;

    iput-object p5, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

    iput-object p6, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->context:Landroid/content/Context;

    iput-object p7, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->isThreadComplete:[Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    new-instance v11, Lcom/sec/android/secphoto/Profiling;

    invoke-direct {v11}, Lcom/sec/android/secphoto/Profiling;-><init>()V

    invoke-virtual {v11}, Lcom/sec/android/secphoto/Profiling;->Start()J

    iget-object v0, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    new-instance v8, Lcom/arcsoft/beautyface/BeautyFaceInterface;

    invoke-direct {v8}, Lcom/arcsoft/beautyface/BeautyFaceInterface;-><init>()V

    iget-object v0, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8, v1, v0, v3}, Lcom/arcsoft/beautyface/BeautyFaceInterface;->findFace([III)[Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_0

    aget-object v0, v9, v2

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    # invokes: Lcom/sec/android/secphoto/AutoEnhance;->setFaceRect(Landroid/graphics/Rect;[I)V
    invoke-static {v0, v3}, Lcom/sec/android/secphoto/AutoEnhance;->access$100(Landroid/graphics/Rect;[I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>> 1. AE_Framework: Get Face time -Faces are"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    aget v3, v3, v12

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->imgFaces:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    invoke-virtual {v11}, Lcom/sec/android/secphoto/Profiling;->Start()J

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->resizedBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

    iget-object v4, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->context:Landroid/content/Context;

    # invokes: Lcom/sec/android/secphoto/AutoEnhance;->getDCMParametersFromIS(Landroid/graphics/Bitmap;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;)V
    invoke-static {v0, v3, v4}, Lcom/sec/android/secphoto/AutoEnhance;->access$200(Landroid/graphics/Bitmap;Lcom/sec/android/secphoto/DCMParameters;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>> 2. AE: Get ImageScreener Parameters from engine time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

    iget v3, v3, Lcom/sec/android/secphoto/DCMParameters;->BlurStrength:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

    iget v3, v3, Lcom/sec/android/secphoto/DCMParameters;->ContrastStrength:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->DCMInfo:Lcom/sec/android/secphoto/DCMParameters;

    iget v3, v3, Lcom/sec/android/secphoto/DCMParameters;->OutFocusBgStrength:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sec/android/secphoto/AutoEnhance$DCMFaceRunnable;->isThreadComplete:[Z

    aput-boolean v12, v0, v2

    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v0, "AutoEnhance"

    const-string/jumbo v3, "getDCMParametersFromIS throws IOException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "AutoEnhance"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
