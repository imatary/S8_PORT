.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine$ContentData;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentData"
.end annotation


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getCaptureBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCaptureData()[B
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract isJpegDataAvailable()Z
.end method

.method public abstract setCaptureData([BI)V
.end method

.method public abstract setContentUri(Landroid/net/Uri;)V
.end method

.method public abstract setContentVideoType(Z)V
.end method
