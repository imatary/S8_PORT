.class public Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;
.super Ljava/lang/Object;
.source "GameToolsScreenshot.java"


# instance fields
.field private mAppTitle:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mAppTitle:Ljava/lang/String;

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

    return-void
.end method

.method public static isAvailableCapacity(Landroid/content/Context;)Z
    .locals 14

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v11, "storage"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    if-eqz v7, :cond_1

    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v0, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GameToolsScreenShot available Space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-wide/32 v12, 0x989680

    cmp-long v11, v2, v12

    if-gez v11, :cond_0

    const-string/jumbo v11, "GameToolsScreenShot not enough Space. under 10MB "

    invoke-static {v11}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    :goto_0
    return v10

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v11, "GameToolsScreenShot extStoragePath == null"

    invoke-static {v11}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewheight:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->mAppTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->appTitle:Ljava/lang/String;

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
