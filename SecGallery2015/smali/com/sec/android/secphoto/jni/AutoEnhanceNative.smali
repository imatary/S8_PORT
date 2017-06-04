.class public Lcom/sec/android/secphoto/jni/AutoEnhanceNative;
.super Ljava/lang/Object;
.source "AutoEnhanceNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "AutoEnhance"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AutoEnhanceNative"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AutoEnhanceApply(JLcom/sec/android/secphoto/jni/ImageInfo;Lcom/sec/android/secphoto/jni/ImageInfo;)I
.end method

.method public static native AutoEnhanceDeInit(J)I
.end method

.method public static native AutoEnhanceDecision(J)I
.end method

.method public static native AutoEnhanceInit(Lcom/sec/android/secphoto/jni/ImageInfo;Lcom/sec/android/secphoto/jni/Params;)J
.end method

.method public static native ImageDecode(Ljava/lang/String;[III)I
.end method

.method public static native ImageEncode(Ljava/lang/String;[IIII)I
.end method

.method public static native getAutoEnhanceDecision(J)I
.end method

.method public static native nativeIntAlloc(I)[I
.end method

.method public static native nativeIntRelease([I)I
.end method

.method public static native setAutoEnhanceDecision(JI)V
.end method
