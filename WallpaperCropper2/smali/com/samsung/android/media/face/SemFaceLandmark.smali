.class public Lcom/samsung/android/media/face/SemFaceLandmark;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;,
        Lcom/samsung/android/media/face/SemFaceLandmark$Settings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceLandmark"

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mLdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "saiv_HprFace_LD_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method private checkEngineBeforeRun()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkInputBufferBeforeRun([BII)V
    .locals 3

    if-eqz p1, :cond_1

    if-gtz p2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dimension of image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez p3, :cond_0

    return-void
.end method

.method private static native landmarkCopyImageToNative([J[BIII)I
.end method

.method private static landmarkCreate([J)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I

    move-result v0

    return v0
.end method

.method private static native landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I
.end method

.method private static native landmarkDestroy([J)V
.end method

.method private static native landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkRemoveImageFromNative([J)I
.end method

.method private static printNotSupportedFeatureMessage()V
    .locals 2

    const-string/jumbo v0, "SemFaceLandmark"

    const-string/jumbo v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public findEyes([BIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "DMC"

    const-string/jumbo v2, "DMC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v6

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1, p1, p2, p3, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No available face information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFace;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face rect information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    array-length v4, v0

    if-eqz v4, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findEyes([BIILandroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p4, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    return-object v3
.end method

.method public findEyes([BIILcom/samsung/android/media/face/SemFace;)[Landroid/graphics/Point;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v3
.end method

.method public findEyes4Orientation([BIILjava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "DMC"

    const-string/jumbo v2, "DMC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v6

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No available face information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFace;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face rect information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    array-length v4, v0

    if-eqz v4, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findEyes4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p4, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    return-object v3
.end method

.method public findEyes4Orientation([BIILcom/samsung/android/media/face/SemFace;I)[Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v3
.end method

.method public init()I
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aget-wide v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SemFaceLandmark"

    const-string/jumbo v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([J)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lcom/samsung/android/media/face/SemFaceLandmark$Settings;)I
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aget-wide v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SemFaceLandmark"

    const-string/jumbo v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aget-wide v0, v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const-string/jumbo v0, "SemFaceLandmark"

    const-string/jumbo v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkDestroy([J)V

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aput-wide v4, v0, v2

    goto :goto_0
.end method

.method public run([BIILjava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "DMC"

    const-string/jumbo v2, "DMC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v6

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No available face information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFace;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Face rect information of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-th face is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    array-length v4, v0

    if-eqz v4, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public run([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p4, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    return-object v3
.end method

.method public run([BIILcom/samsung/android/media/face/SemFace;I)[Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "DMC"

    const-string/jumbo v1, "DMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    array-length v1, v0

    if-eqz v1, :cond_4

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v3
.end method
