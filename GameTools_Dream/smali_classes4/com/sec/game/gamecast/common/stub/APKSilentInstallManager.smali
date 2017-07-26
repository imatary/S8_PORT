.class public Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;
.super Ljava/lang/Object;
.source "APKSilentInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;
    }
.end annotation


# static fields
.field private static final GAME_TOOLS_INSTALL_INTENT:Ljava/lang/String; = "com.samsung.android.game.gamehome.action.INSTALL"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApkPath:Landroid/net/Uri;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private packageInstaller:Landroid/content/pm/PackageInstaller;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->writeSession(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->commitSession(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->updateNotification(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->destroyReceiver()V

    return-void
.end method

.method private commitSession(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "commitSession: "

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->getListener()Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->install(Z)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->makeInstallNotification()V

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->getListener()Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.android.game.gamehome.action.INSTALL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    throw v3

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.game.gamehome.action.INSTALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    return-object v1
.end method

.method private createSession()I
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createSession: "

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v1, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private destroyReceiver()V
    .locals 4

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "destroyReceiver: "

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getListener()Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;-><init>(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mListener:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;

    return-object v0
.end method

.method private makeInstallNotification()V
    .locals 6

    const/16 v5, 0x3ea

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    sget v1, Lcom/sec/game/gamecast/common/R$drawable;->stat_gametools_nmr:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/game/gamecast/common/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_BUTTON_INSTALLING_ING_14:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateNotification(I)V
    .locals 9

    const/16 v8, 0x3ea

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    sget v3, Lcom/sec/game/gamecast/common/R$drawable;->stat_gametools_nmr:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->app_name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/game/gamecast/common/R$drawable;->game_tools:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_INSTALLED_M_NOUN:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TPOP_FAILED_TO_INSTALL_PS:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/game/gamecast/common/R$string;->DREAM_GH_TMBODY_GAME_TOOLS:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private writeSession(I)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeSession: "

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    const-string/jumbo v15, "Name"

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mApkPath:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    :cond_0
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->packageInstaller:Landroid/content/pm/PackageInstaller;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mApkPath:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "Name"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v14

    const/16 v16, 0x0

    const/high16 v3, 0x10000

    new-array v8, v3, [B

    :goto_0
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    add-int v16, v16, v9

    const/4 v3, 0x0

    invoke-virtual {v14, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v12, v13

    :goto_1
    :try_start_2
    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v3, 0x0

    if-eqz v14, :cond_1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    return v3

    :cond_4
    :try_start_4
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v12, v13

    goto :goto_2

    :catch_1
    move-exception v10

    :goto_4
    :try_start_5
    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v14, :cond_5

    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_7
    :goto_6
    throw v3

    :catch_2
    move-exception v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_5
    move-exception v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v12, v13

    goto :goto_5

    :catch_6
    move-exception v10

    move-object v12, v13

    goto :goto_4

    :catch_7
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public installPackage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mApkPath:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mNotifyManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->createSession()I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$1;-><init>(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
