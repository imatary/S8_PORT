.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LatestMedia"
.end annotation


# static fields
.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1


# virtual methods
.method public abstract getCloudThumbPath()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getImagePath()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getType()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVideoThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract isUsingCloudContent()Z
.end method
