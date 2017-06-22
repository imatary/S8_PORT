.class public Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceNativePE;
.super Ljava/lang/Object;
.source "SemAutoEnhanceNativePE.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v1, "AutoEnhancePE"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
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

.method public static native ARGBToYUV420([I[BII)I
.end method

.method public static native AutoEnhanceApply(JLcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;I)I
.end method

.method public static native AutoEnhanceDeInit(J)I
.end method

.method public static native AutoEnhanceDecision(J)I
.end method

.method public static native AutoEnhanceInit(Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceImageInfoPE;Lcom/samsung/android/media/imageprocessingPE/SemAutoEnhanceParamsPE;)J
.end method

.method public static native ImageDecode(Ljava/lang/String;[III)I
.end method

.method public static native ImageEncode(Ljava/lang/String;[III)I
.end method

.method public static native YUV420ToARGB([B[III)I
.end method

.method public static native getAutoEnhanceDecision(J)I
.end method

.method public static native nativeByteRelease([B)I
.end method

.method public static native nativeIntRelease([I)I
.end method
