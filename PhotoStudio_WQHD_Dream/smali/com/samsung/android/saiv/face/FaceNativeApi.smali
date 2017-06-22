.class Lcom/samsung/android/saiv/face/FaceNativeApi;
.super Ljava/lang/Object;
.source "FaceNativeApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_FaceNativeApi"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "saiv_face_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native detectionCreate()I
.end method

.method static native detectionCreateSupportMultiInstance([J)I
.end method

.method static native detectionDestroy()V
.end method

.method static native detectionDestroySupportMultiInstance([J)V
.end method

.method static native detectionFindFace([BII)I
.end method

.method static native detectionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I
.end method

.method static native detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation
.end method

.method static native detectionFindFaceSupportMultiInstance([J[BII)I
.end method

.method static native detectionGetFaceNum()I
.end method

.method static native detectionGetFaceNumSupportMultiInstance([J)I
.end method

.method static native detectionGetFacePose(I)I
.end method

.method static native detectionGetFacePoseSupportMultiInstance([JI)I
.end method

.method static native detectionGetFaceRect(II)Landroid/graphics/Rect;
.end method

.method static native detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;
.end method

.method static native gaeCreate()I
.end method

.method static native gaeDestroy()I
.end method

.method static native gaeFindExpression([BIILandroid/graphics/Rect;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation
.end method

.method static native gaeFindExpressionOnBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation
.end method

.method static native gaeFindFace([BII)I
.end method

.method static native gaeFindFaceOnBitmap(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation
.end method

.method static native gaeGetFaceNum()I
.end method

.method static native gaeGetFaceRect(II)Landroid/graphics/Rect;
.end method

.method static native landmarkCreate()I
.end method

.method static native landmarkDestroy()V
.end method

.method static native landmarkFind([BIILandroid/graphics/Rect;)[Landroid/graphics/Point;
.end method

.method static native landmarkFind4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method static native landmarkFind4OrientationWithPose([BIILandroid/graphics/Rect;II)[Landroid/graphics/Point;
.end method

.method static native recognitionCompareFeature(III)I
.end method

.method static native recognitionCompareFeatures(I[I[I)I
.end method

.method static native recognitionCreate()I
.end method

.method static native recognitionDestroy()I
.end method

.method static native recognitionDoClustering()I
.end method

.method static native recognitionExtractFeature(Landroid/graphics/Rect;I)I
.end method

.method static native recognitionFindFace([BII)I
.end method

.method static native recognitionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I
.end method

.method static native recognitionGetClusterIdAddedFace(I)I
.end method

.method static native recognitionGetClusterInfo()Lcom/samsung/android/saiv/face/Face$ClusterInfo;
.end method

.method static native recognitionLoadClusterData(Lcom/samsung/android/saiv/face/Face$ClusterInfo;)V
.end method

.method static native recognitionLoadFeature(I)I
.end method

.method static native recognitionReleaseCluster()V
.end method

.method static native recognitionReleaseClusterData()V
.end method

.method static native recognitionSaveFace(Landroid/graphics/Rect;II)V
.end method

.method static native recognitionSetFaceDir(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native recognitionSetThumbnailSize(I)V
.end method

.method static declared-synchronized synchronizedDetectionFindFace([BIILandroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/saiv/face/Face;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v5, Lcom/samsung/android/saiv/face/FaceNativeApi;

    monitor-enter v5

    if-nez p4, :cond_0

    :try_start_0
    const-string v4, "PEDIT_FaceNativeApi"

    const-string v6, "ArrayList<Face> should be valid for saving results..."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionCreate()I

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionFindFace([BII)I

    move-result v2

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionGetFaceRect(II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionGetFacePose(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/saiv/face/Face;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/saiv/face/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I

    move-result v2

    goto :goto_1

    :cond_3
    const-string v4, "PEDIT_FaceNativeApi"

    const-string v6, "Currently, FD can run on byte array or bitmap... One of them should be not-null..."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/saiv/face/FaceNativeApi;->detectionDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized synchronizedLandmarkFindEye([BIILcom/samsung/android/saiv/face/Face;Landroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 8

    const-class v7, Lcom/samsung/android/saiv/face/FaceNativeApi;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/saiv/face/FaceNativeApi;->landmarkCreate()I

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    iget-object v3, p3, Lcom/samsung/android/saiv/face/Face;->rect:Landroid/graphics/Rect;

    iget v5, p3, Lcom/samsung/android/saiv/face/Face;->pose:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->landmarkFind4OrientationWithPose([BIILandroid/graphics/Rect;II)[Landroid/graphics/Point;

    move-result-object v6

    :goto_0
    invoke-static {}, Lcom/samsung/android/saiv/face/FaceNativeApi;->landmarkDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    :goto_1
    monitor-exit v7

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/face/FaceNativeApi;->landmarkFind4OrientationWithPose([BIILandroid/graphics/Rect;II)[Landroid/graphics/Point;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v0, "PEDIT_FaceNativeApi"

    const-string v1, "Currently, FD can run on byte array or bitmap... One of them should be not-null..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/saiv/face/FaceNativeApi;->landmarkDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
