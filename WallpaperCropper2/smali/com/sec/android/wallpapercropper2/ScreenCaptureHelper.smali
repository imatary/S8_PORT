.class public Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "ScreenCaptureHelper.java"


# static fields
.field protected static final DUMMY_HOME_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

.field protected static final DUMMY_HOME_PREVIEW_PATH_CHN:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy_chn"

.field protected static final DUMMY_HOME_PREVIEW_PATH_CTC:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy_ctc"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_LAND:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_LAND_SBROWSER:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land_sbrowser"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_LAND_WIFI:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land_wifi"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT_SBROWSER:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_sbrowser"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT_WIFI:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_wifi"

.field private static final DUMMY_LOCK_PREVIEW_KEYBOARD_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_keyboard"

.field private static final DUMMY_SVIEW_PREVIEW_IMAGE:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/s_view_cover_capture_dummy"

.field protected static final HOME_PREVIEW_IMAGE_LAND:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/homescreenPreviewLand.png"

.field protected static final HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

.field private static final LOCK_PREVIEW_IMAGE_LAND:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_land.png"

.field private static final LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

.field private static final LOCK_PREVIEW_KEYBOARD_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_port_keyboard.png"

.field protected static final STR_DUMMY_HOME_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/"

.field private static final STR_DUMMY_LOCK_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/"

.field protected static final STR_HOME_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/"

.field protected static final STR_HOME_PREVIEW_PATH_EASY_LAND:Ljava/lang/String; = "/Android/data/com.sec.android.app.easylauncher/cache/EasyhomescreenPreviewLand.png"

.field protected static final STR_HOME_PREVIEW_PATH_EASY_PORT:Ljava/lang/String; = "/Android/data/com.sec.android.app.easylauncher/cache/EasyhomescreenPreview.png"

.field protected static final STR_HOME_PREVIEW_ROOT:Ljava/lang/String; = "/storage/emulated/"

.field private static final STR_LOCK_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/"

.field private static final STR_SVIEW_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/"

.field private static final SVIEW_PREVIEW_IMAGE:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/s_view_cover_capture.png"

.field private static final TAG:Ljava/lang/String; = "Cropper2_ScreenCapture"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDummyBitmap(Landroid/content/Context;IZIZ)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmapForHome(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmapForSViewCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmapForHome(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p3, p4}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmapForLock(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getDummyBitmapForHome(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    const-string/jumbo v2, "CHINA"

    const-string/jumbo v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "CTC"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy_ctc"

    :cond_0
    :goto_0
    const-string/jumbo v2, "Cropper2_ScreenCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dummy Preview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy_chn"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1
.end method

.method private static getDummyBitmapForLock(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isNotSupportCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_1

    const-string/jumbo v0, "com.sec.android.app.sbrowser"

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land_sbrowser"

    :goto_0
    :try_start_0
    const-string/jumbo v2, "Cropper2_ScreenCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dummy Preview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land_wifi"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.sec.android.app.sbrowser"

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_sbrowser"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_wifi"

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_land"

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port_keyboard"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1
.end method

.method private static getDummyBitmapForSViewCover(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "android.resource://com.android.systemui/drawable/s_view_cover_capture_dummy"

    :try_start_0
    const-string/jumbo v2, "Cropper2_ScreenCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dummy Preview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static getRealPreviewFileName(IZZZZ)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getRealPreviewFileNameForHome(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getRealPreviewFileNameForSViewCover()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getRealPreviewFileNameForHome(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p4, p2, p3}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getRealPreviewFileNameForLock(ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getRealPreviewFileNameForHome(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreviewLand.png"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    goto :goto_0
.end method

.method private static getRealPreviewFileNameForLock(ZZZ)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isLockScreenRotateDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/lockscreen_capture_port_keyboard.png"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_4

    if-eqz p1, :cond_2

    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/lockscreen_capture_land.png"

    return-object v0

    :cond_2
    if-eqz p0, :cond_3

    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/lockscreen_capture_port_keyboard.png"

    :goto_1
    return-object v0

    :cond_3
    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRealPreviewFileNameForSViewCover()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "/Android/data/com.android.systemui/cache/s_view_cover_capture.png"

    return-object v0
.end method

.method public static getScreenCaptureBitmap(Landroid/content/Context;IZZZ)Landroid/graphics/Bitmap;
    .locals 7

    const v4, 0x3d23d70a    # 0.04f

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1, p2, v1, p3, p4}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getRealPreviewFileName(IZZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/storage/emulated/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "Cropper2_ScreenCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Home|Lock|SView Preview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_0
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cropper2_ScreenCapture"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, v0, p4}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmap(Landroid/content/Context;IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, v0, p4}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getDummyBitmap(Landroid/content/Context;IZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static isLandscape(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
