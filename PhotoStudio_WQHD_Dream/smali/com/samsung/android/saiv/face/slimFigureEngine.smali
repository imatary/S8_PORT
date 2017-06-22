.class public Lcom/samsung/android/saiv/face/slimFigureEngine;
.super Ljava/lang/Object;
.source "slimFigureEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "saiv_SlimFigure_JNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetFootPosition([IIII[I[I[I[I)I
.end method

.method public static native Init()I
.end method

.method public static native Release()I
.end method

.method public static native ResultCrop([III)I
.end method

.method public static native UpdateFootPosition()I
.end method

.method public static native slimBodyRun([I[IIIII)I
.end method
