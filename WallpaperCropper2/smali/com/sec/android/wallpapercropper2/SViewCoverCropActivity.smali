.class public Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;
.super Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.source "SViewCoverCropActivity.java"


# static fields
.field public static final ACTION_CHANGE_COVER_BACKGROUND:Ljava/lang/String; = "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

.field public static final SETTINGS_COVER_WALLPAPER_INDEX:Ljava/lang/String; = "sview_color_wallpaper"

.field public static final SETTINGS_CURRENT_ACTIVE_THEMEPACKAGE_NAME:Ljava/lang/String; = "current_sec_active_themepackage"

.field private static final TAG:Ljava/lang/String; = "Cropper2_SViewCover"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;-><init>()V

    return-void
.end method

.method private isOpenThemeEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getCompleteToast()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    const v0, 0x7f040010

    return v0
.end method

.method protected getWallpaperTypeValue()I
    .locals 1

    const/16 v0, 0x405

    return v0
.end method

.method protected saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return v5

    :cond_0
    const-string/jumbo v0, "Cropper2_SViewCover"

    const-string/jumbo v1, "save sview cover image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_bg_wallpaper_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "rw"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    const-string/jumbo v2, "Cropper2_SViewCover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sview_bg_wallpaper_uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sview_color_wallpaper"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "Cropper2_SViewCover"

    const-string/jumbo v3, "fail to save image: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
