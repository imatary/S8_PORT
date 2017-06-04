.class public Lcom/sec/samsung/gallery/util/BrightnessModeHelper;
.super Ljava/lang/Object;
.source "BrightnessModeHelper.java"


# static fields
.field private static final BRIGHTNESS_DELAY_OFF:I = 0xc8

.field private static final BRIGHTNESS_DELAY_ON:I = 0x64

.field public static final DEFAULT_LIMIT_BRIGHTNESS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BrightnessModeHelper"

.field private static final mBinder:Landroid/os/IBinder;

.field private static mBrightnessMode:I

.field private static final mState:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mState:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ZZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setClearViewBrightnessMode(Landroid/content/Context;ZZI)V

    return-void
.end method

.method public static checkBrightnessMode(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mBrightnessMode:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BrightnessModeHelper"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V

    return-void
.end method

.method public static setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V
    .locals 7

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mState:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    :goto_2
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v2, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    const-string/jumbo v2, "BrightnessModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set setClearViewBrightnessMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0xc8

    goto :goto_2
.end method

.method private static setClearViewBrightnessMode(Landroid/content/Context;ZZI)V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    new-instance v7, Lcom/sec/samsung/gallery/lib/factory/PowerManagerFactory;

    invoke-direct {v7}, Lcom/sec/samsung/gallery/lib/factory/PowerManagerFactory;-><init>()V

    invoke-virtual {v7, p0}, Lcom/sec/samsung/gallery/lib/factory/PowerManagerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/lib/libinterface/PowerManagerInterface;

    if-eqz p2, :cond_2

    sget v7, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mBrightnessMode:I

    if-ne v7, v8, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v7, "persist.sys.default_brightness"

    invoke-static {v7, p3}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v7, -0x1

    invoke-interface {v6, v1, v7}, Lcom/sec/samsung/gallery/lib/libinterface/PowerManagerInterface;->setAutoBrightnessLimit(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/sec/samsung/gallery/lib/libinterface/PowerManagerInterface;->setAutoBrightnessLimit(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BrightnessModeHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    :try_start_1
    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v3, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setClearViewBrightnessMode"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mBinder:Landroid/os/IBinder;

    aput-object v8, v0, v7

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v3, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setClearViewBrightnessMode"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mBinder:Landroid/os/IBinder;

    aput-object v8, v0, v7

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setState(Z)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->mState:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
