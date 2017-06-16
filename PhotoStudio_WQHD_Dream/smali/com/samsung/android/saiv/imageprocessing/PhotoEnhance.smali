.class public Lcom/samsung/android/saiv/imageprocessing/PhotoEnhance;
.super Ljava/lang/Object;
.source "PhotoEnhance.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v1, "PhotoEnhance"

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

.method public static native Blc([I[IIIF)I
.end method

.method public static native RunAdaptiveCE([I[IIIF)I
.end method

.method public static native TiltEstimation([III)F
.end method
