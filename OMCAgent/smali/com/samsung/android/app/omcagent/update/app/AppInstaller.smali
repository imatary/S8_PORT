.class public Lcom/samsung/android/app/omcagent/update/app/AppInstaller;
.super Ljava/lang/Object;
.source "AppInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;,
        Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private installObserver:Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mApkPath:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

.field private mPackageName:Ljava/lang/String;

.field private packageInstaller:Landroid/content/pm/PackageInstaller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->listeners:Ljava/util/Vector;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->installObserver:Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->listeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->notifyResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->installObserver:Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->destroyReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->getInstallErrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private commitSession(I)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->getListener()Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->getListener()Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.intent.OPERATOR_APP_INSTALL_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    throw v2

    :catch_3
    move-exception v0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.OPERATOR_APP_INSTALL_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    return-object v1
.end method

.method private createSession()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    if-eqz v15, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->destroyReceiver()V

    :cond_0
    new-instance v10, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v15, 0x1

    invoke-direct {v10, v15}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    const/4 v7, 0x2

    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v8, v15

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aput-object v16, v2, v15

    const-string v15, "android.content.pm.PackageManager"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v8, v2, v0}, Lcom/samsung/android/common/util/Reflection;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    const-string v15, "android.content.pm.PackageManager"

    const-string v16, "INSTALL_SKIP_VERIFICATION"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/common/util/Reflection;->getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    or-int/2addr v7, v14

    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v12, 0x0

    :try_start_1
    const-string v15, "installFlags"

    invoke-virtual {v3, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    or-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v10, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v13, 0x0

    :try_start_3
    const-string v15, "installFlags"

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual {v13, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "2 skipFlag : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_4
    const/4 v11, -0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v15, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v11

    :goto_5
    return v11

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v5

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v15, v5}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private destroyReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->getListener()Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    return-void
.end method

.method private getInstallErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v4, 0x2d

    new-array v0, v4, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "INSTALL_REPLACE_EXISTING"

    aput-object v5, v4, v7

    const-string v5, "2"

    aput-object v5, v4, v8

    aput-object v4, v0, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "INSTALL_SUCCEEDED"

    aput-object v5, v4, v7

    const-string v5, "1"

    aput-object v5, v4, v8

    aput-object v4, v0, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_ALREADY_EXISTS"

    aput-object v5, v4, v7

    const-string v5, "-1"

    aput-object v5, v4, v8

    aput-object v4, v0, v9

    const/4 v4, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_INVALID_APK"

    aput-object v6, v5, v7

    const-string v6, "-2"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_INVALID_URI"

    aput-object v6, v5, v7

    const-string v6, "-3"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    aput-object v6, v5, v7

    const-string v6, "-4"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    aput-object v6, v5, v7

    const-string v6, "-5"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/4 v4, 0x7

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_NO_SHARED_USER"

    aput-object v6, v5, v7

    const-string v6, "-6"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    aput-object v6, v5, v7

    const-string v6, "-7"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x9

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    aput-object v6, v5, v7

    const-string v6, "-8"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xa

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    aput-object v6, v5, v7

    const-string v6, "-9"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xb

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    aput-object v6, v5, v7

    const-string v6, "-10"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xc

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_DEXOPT"

    aput-object v6, v5, v7

    const-string v6, "-11"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xd

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_OLDER_SDK"

    aput-object v6, v5, v7

    const-string v6, "-12"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xe

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    aput-object v6, v5, v7

    const-string v6, "-13"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0xf

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_NEWER_SDK"

    aput-object v6, v5, v7

    const-string v6, "-14"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x10

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_TEST_ONLY"

    aput-object v6, v5, v7

    const-string v6, "-15"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x11

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    aput-object v6, v5, v7

    const-string v6, "-16"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x12

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_MISSING_FEATURE"

    aput-object v6, v5, v7

    const-string v6, "-17"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x13

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_CONTAINER_ERROR"

    aput-object v6, v5, v7

    const-string v6, "-18"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x14

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    aput-object v6, v5, v7

    const-string v6, "-19"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x15

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    aput-object v6, v5, v7

    const-string v6, "-20"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x16

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    aput-object v6, v5, v7

    const-string v6, "-21"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x17

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_VERIFICATION_FAILURE"

    aput-object v6, v5, v7

    const-string v6, "-22"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x18

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_PACKAGE_CHANGED"

    aput-object v6, v5, v7

    const-string v6, "-23"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x19

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_UID_CHANGED"

    aput-object v6, v5, v7

    const-string v6, "-24"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_VERSION_DOWNGRADE"

    aput-object v6, v5, v7

    const-string v6, "-25"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE"

    aput-object v6, v5, v7

    const-string v6, "-26"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_NOT_APK"

    aput-object v6, v5, v7

    const-string v6, "-100"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    aput-object v6, v5, v7

    const-string v6, "-101"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    aput-object v6, v5, v7

    const-string v6, "-102"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    aput-object v6, v5, v7

    const-string v6, "-103"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x20

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    aput-object v6, v5, v7

    const-string v6, "-104"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x21

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    aput-object v6, v5, v7

    const-string v6, "-105"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x22

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    aput-object v6, v5, v7

    const-string v6, "-106"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x23

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    aput-object v6, v5, v7

    const-string v6, "-107"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x24

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    aput-object v6, v5, v7

    const-string v6, "-108"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x25

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    aput-object v6, v5, v7

    const-string v6, "-109"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x26

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_INTERNAL_ERROR"

    aput-object v6, v5, v7

    const-string v6, "-110"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x27

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_USER_RESTRICTED"

    aput-object v6, v5, v7

    const-string v6, "-111"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x28

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    aput-object v6, v5, v7

    const-string v6, "-112"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x29

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_NO_MATCHING_ABIS"

    aput-object v6, v5, v7

    const-string v6, "-113"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x2a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "NO_NATIVE_LIBRARIES"

    aput-object v6, v5, v7

    const-string v6, "-114"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x2b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_ABORTED"

    aput-object v6, v5, v7

    const-string v6, "-115"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    const/16 v4, 0x2c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "INSTALL_FAILED_EAS_POLICY_REJECTED_PERMISSION"

    aput-object v6, v5, v7

    const-string v6, "-116"

    aput-object v6, v5, v8

    aput-object v5, v0, v4

    array-length v2, v0

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v3, v7

    aget-object v5, v0, v1

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    aget-object v4, v4, v8

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "0"

    goto :goto_1
.end method

.method private getListener()Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;-><init>(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mListener:Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;

    return-object v0
.end method

.method private notifyResult(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;-><init>(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private writeSession(I)I
    .locals 17

    const-wide/16 v6, -0x1

    const-string v15, "Name"

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mApkPath:Landroid/net/Uri;

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

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mApkPath:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "Name"

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v12, v13

    :goto_1
    :try_start_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_4
    const/4 v3, 0x0

    return v3

    :cond_4
    :try_start_6
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_5

    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_5
    if-eqz v13, :cond_6

    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    move-object v12, v13

    goto :goto_4

    :catch_1
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v12, v13

    goto :goto_4

    :catch_4
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v10

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v14, :cond_8

    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_8
    :goto_8
    if-eqz v12, :cond_9

    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    :try_start_c
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_a
    throw v3

    :catch_7
    move-exception v10

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_8
    move-exception v10

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_9
    move-exception v10

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v10}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_1
    move-exception v3

    move-object v12, v13

    goto :goto_7

    :catch_a
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->createSession()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->writeSession(I)I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->commitSession(I)V

    return-void
.end method

.method public installPackage(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->mApkPath:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->execute()V

    return-void
.end method

.method public removeListener(Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
