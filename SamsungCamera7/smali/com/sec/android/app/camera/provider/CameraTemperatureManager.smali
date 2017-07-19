.class public Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
.super Ljava/lang/Object;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;,
        Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;
    }
.end annotation


# static fields
.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final SIOP_SYS_PROP:Ljava/lang/String; = "sys.siop.curlevel"

.field private static final TAG:Ljava/lang/String; = "CameraTemperatureMgr"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;


# instance fields
.field private mBatteryTemp:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraAvailTemp:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraLimitTemp:I

.field private mCameraTemp:I

.field private mFlashLimitTemp:I

.field private mFlashTemp:I

.field private mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

.field private mIsTunning:Z

.field protected mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

.field private mThermistorDuration:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashTemp:I

    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemp:I

    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_LIMITATION_TEMP:I

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraLimitTemp:I

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_AVAILABLE_TEMP:I

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraAvailTemp:I

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->FLASH_OVERHEAT_LIMITATION_TEMP:I

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashLimitTemp:I

    const/16 v0, 0x1b58

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mThermistorDuration:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTunning:Z

    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;-><init>(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addIntentFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private checkCameraTemperatureCheck()V
    .locals 3

    const-string v0, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    const-string v0, "CameraTemperatureMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraTemperatureCheck : cameraTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    iget v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraLimitTemp:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    :cond_0
    return-void
.end method

.method private checkFlashTemperatureCheck()V
    .locals 3

    const-string v0, "/sys/class/sec/sec-cf-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashTemp:I

    const-string v0, "CameraTemperatureMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFlashTemperatureCheck : flashTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashTemp:I

    iget v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashLimitTemp:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerLimitFlash(Z)V

    :cond_0
    return-void
.end method

.method private checkTemperatureFile(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraTemperatureMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTemperatureFile : file not found, path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    return-void
.end method

.method private getCameraTemperature(Ljava/lang/String;)I
    .locals 13

    const/16 v7, 0xa

    new-array v3, v7, [C

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, -0x1

    :goto_0
    return v7

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    const/4 v10, 0x0

    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v9, 0x0

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x0

    const/4 v7, -0x1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    if-ne v7, v11, :cond_4

    const-string v7, "CameraTemperatureMgr"

    const-string v11, "getCameraTemperature : file is empty"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_1

    if-eqz v8, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    if-eqz v9, :cond_a

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    if-eqz v10, :cond_c

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_3
    :goto_4
    move v7, v1

    goto :goto_0

    :cond_4
    :try_start_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_8
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_5
    if-eqz v5, :cond_5

    if-eqz v8, :cond_b

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_5
    :goto_6
    :try_start_b
    throw v7
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_2
    move-exception v7

    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_7
    if-eqz v4, :cond_6

    if-eqz v8, :cond_d

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_a

    :cond_6
    :goto_8
    :try_start_e
    throw v7
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_a

    :catch_3
    move-exception v2

    const-string v7, "CameraTemperatureMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCameraTemperature - failed to open file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto/16 :goto_0

    :cond_7
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    move-object v8, v9

    goto :goto_5

    :catch_4
    move-exception v7

    :try_start_10
    throw v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_9
    if-eqz v0, :cond_8

    if-eqz v8, :cond_9

    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_8
    :goto_a
    :try_start_12
    throw v7

    :catch_5
    move-exception v11

    invoke-virtual {v8, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_a

    :catch_6
    move-exception v7

    :try_start_13
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_4
    move-exception v7

    move-object v8, v10

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    goto/16 :goto_3

    :catch_7
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_6

    :catch_8
    move-exception v7

    :try_start_14
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_4

    :catch_9
    move-exception v2

    const-string v7, "CameraTemperatureMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCameraTemperature - failed to read file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_4

    :catch_a
    move-exception v2

    const-string v7, "CameraTemperatureMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCameraTemperature - failed to parse string : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_b
    move-exception v9

    :try_start_16
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_8

    :catchall_5
    move-exception v7

    goto :goto_9
.end method

.method public static getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    return-object v0
.end method

.method private getTemperatureFromPreference()V
    .locals 11

    const-string v8, "CameraTemperatureMgr"

    const-string v9, "getTemperatureFromPreference"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v8, :cond_1

    const-string v8, "CameraTemperatureMgr"

    const-string v9, "mCameraContext is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "pref_camera_overheat_limitation_temp"

    const-string v1, "pref_camera_overheat_available_temp"

    const-string v0, "pref_camera_flash_overheat_limitation_temp"

    const-string v3, "pref_camera_polling_time_temp"

    const/4 v4, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.sec.android.app.camtemperaturetester"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, "cam_temperature_tester_preferences"

    const/4 v9, 0x5

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_LIMITATION_TEMP:I

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraLimitTemp:I

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_AVAILABLE_TEMP:I

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraAvailTemp:I

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->FLASH_OVERHEAT_LIMITATION_TEMP:I

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashLimitTemp:I

    iget v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mThermistorDuration:I

    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mThermistorDuration:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera Limit temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraLimitTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nCamera Avail temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraAvailTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nFlash Limit temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashLimitTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nPolling Time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mThermistorDuration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v8, "CameraTemperatureMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTemperatureFromPreference : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "temperature"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemp:I

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerLimitFlash(Z)V

    return-void
.end method

.method private handleCameraTemperatureFirstCheck()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    const-string v1, "CameraTemperatureMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCameraTemperatureFirstCheck : mCameraTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCameraAvailTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraAvailTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    const-string v1, "CameraTemperatureMgr"

    const-string v2, "mCameraContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraAvailTemp:I

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "CameraTemperatureMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->checkCameraTemperatureCheck()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->checkFlashTemperatureCheck()V

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mThermistorDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera temp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nFlash temp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mFlashTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSIOPLevelChanged(Landroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "camera_start_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "flash_led_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "camera_recording_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "CameraTemperatureMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSIOPLevelChanged : camera_start_disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",flash_led_disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",camera_recording_disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-interface {v4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-interface {v4, v1, v2}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;->onTemperatureManagerChanged(ZZ)V

    goto :goto_0
.end method

.method private removeIntentFilter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private startTemperatureCheckTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private stopTemperatureCheckTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBattTemp()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemp:I

    return v0
.end method

.method public isOverHeatedBySIOP()Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "sys.siop.curlevel"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CameraTemperatureMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverHeatedBySIOP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerTemperatureManagerListener(Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->addIntentFilter()V

    return-void
.end method

.method public start()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_THERMISTOR_TEMPERATURE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/sec/sec-cf-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTunning:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getTemperatureFromPreference()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleCameraTemperatureFirstCheck()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "start : Overheated case!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->startTemperatureCheckTimer()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_THERMISTOR_TEMPERATURE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->stopTemperatureCheckTimer()V

    :cond_0
    return-void
.end method

.method public unregisterTemperatureManagerListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->removeIntentFilter()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;

    :cond_0
    return-void
.end method
