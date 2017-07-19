.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "AutoEnhance"

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AutoEnhanceApply(JLcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceEyeROI;III)I
.end method

.method public static native AutoEnhanceDeInit(J)I
.end method

.method public static native AutoEnhanceDecision(J)I
.end method

.method public static native AutoEnhanceInit(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceParams;)J
.end method

.method public static native AutoEnhanceTiltApply(JLcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;)I
.end method

.method public static native AutoEnhanceTiltEstimation(J)I
.end method

.method public static native BeautyFace([B[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageROI;III)I
.end method

.method public static native CheckLibraryVersion()I
.end method

.method public static native ImageCSC(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceImageInfo;)I
.end method

.method public static native ImageCSCByte([I[BII)I
.end method

.method public static native ImageDecode(Ljava/lang/String;[BII)I
.end method

.method public static native ImageEncode(Ljava/lang/String;[BII)I
.end method

.method public static native ImageEncodeFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getAutoEnhanceDecision(J)I
.end method

.method public static native nativeByteRelease([B)I
.end method

.method public static native nativeIntAlloc(I)[I
.end method

.method public static native nativeIntRelease([I)I
.end method

.method public static native setAutoEnhanceDecision(JI)V
.end method
