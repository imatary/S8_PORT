.class public Lcom/sec/android/gallery3d/util/ImageEditorUtil;
.super Ljava/lang/Object;
.source "ImageEditorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPhotoRetouchingAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSamsungAppsAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
