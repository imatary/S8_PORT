.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;
.super Ljava/lang/Object;
.source "GameToolsScreenshot.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCameraShutterSound:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

.field private mCaptureEffectLayout:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;",
            "Ljava/lang/Void;",
            "Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenShotBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mNotificationIconSize:I

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewWidth:I

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    invoke-static {p1, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewHeight:I

    const-string/jumbo v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mInflater:Landroid/view/LayoutInflater;

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    invoke-direct {v3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCameraShutterSound:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->playCameraShutterSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->playCameraShutterVibrate()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->removeScreenShotEffectLayout()V

    return-void
.end method

.method private doScreenShotEffect(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 10

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doScreenShotEffect"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$layout;->view_capture_effect:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d2

    const v6, 0x5000028

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->layout_capture_effect:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    const-string/jumbo v7, "Capture Effect Layout"

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    invoke-direct {v6, p0, v0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    const-wide/16 v8, 0x1e

    invoke-static {v5, v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAvailableCapacity()Z
    .locals 12

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v0, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GameToolsScreenShot available Space = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-wide/32 v10, 0x989680

    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    const-string/jumbo v10, "GameToolsScreenShot not enough Space. under 10MB "

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    :goto_0
    return v9

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "GameToolsScreenShot extStoragePath == null"

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playCameraShutterSound()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v4, v2

    int-to-float v5, v1

    div-float v3, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCameraShutterSound:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    invoke-virtual {v4, v3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->play(F)V

    :cond_0
    return-void
.end method

.method private playCameraShutterVibrate()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/16 v1, 0xc8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private removeScreenShotEffectLayout()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCaptureEffectLayout:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public doScreenShot(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "doScreenShot"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "appTitle null"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v5, 0x752f

    invoke-static {v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SurfaceControlProxy;->takeScreenshot(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->doScreenShotEffect(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->saveScreenshotInWorkerThread(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mScreenShotBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCameraShutterSound:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mCameraShutterSound:Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/CameraShutterSound;->release()V

    :cond_0
    return-void
.end method

.method public saveScreenshotInWorkerThread(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iput-object p1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p3, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewheight:I

    iput-object p2, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->appTitle:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_screenshot:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    return-void
.end method
