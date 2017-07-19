.class public Lcom/samsung/android/media/face/SemFaceNativeApi;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceNativeApi"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "saiv_HprFace_cmh_support_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native detectionCreate()I
.end method

.method public static native detectionDestroy()V
.end method

.method public static native detectionGetFaceNum()I
.end method

.method public static native detectionGetFacePose(I)I
.end method

.method public static native detectionGetFaceRect(I)Landroid/graphics/Rect;
.end method

.method public static native recognitionCompareFeature(III)I
.end method

.method public static native recognitionCompareFeatures(I[I[I)I
.end method

.method public static native recognitionCreate()I
.end method

.method public static native recognitionDestroy()I
.end method

.method public static native recognitionDoClustering()I
.end method

.method public static native recognitionExtractFeature(Landroid/graphics/Rect;[Landroid/graphics/Point;I)I
.end method

.method public static native recognitionFindFace([BII)I
.end method

.method public static native recognitionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native recognitionFindLandmark(Landroid/graphics/Rect;)[Landroid/graphics/Point;
.end method

.method public static native recognitionGetClusterInfo()Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;
.end method

.method public static native recognitionLoadClusterData(Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;)V
.end method

.method public static native recognitionLoadFeature(I)I
.end method

.method public static native recognitionSaveFace(Landroid/graphics/Rect;II)V
.end method

.method public static native recognitionSetFaceDir(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native recognitionSetThumbnailSize(I)V
.end method
