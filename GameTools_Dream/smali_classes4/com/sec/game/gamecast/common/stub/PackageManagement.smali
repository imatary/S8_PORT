.class public Lcom/sec/game/gamecast/common/stub/PackageManagement;
.super Ljava/lang/Object;
.source "PackageManagement.java"


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageInstaller:Landroid/content/pm/PackageInstaller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    return-void
.end method

.method private commitSession(I)V
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    throw v4
.end method

.method private createSession(Landroid/content/pm/PackageInstaller$SessionCallback;)I
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v1, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeSession(I)I
    .locals 17

    const-wide/16 v6, -0x1

    const-string/jumbo v15, "Name"

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mApkPath:Ljava/lang/String;

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

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mApkPath:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v12, v13

    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    return v3

    :cond_4
    :try_start_4
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v12, v13

    goto :goto_2

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v14, :cond_5

    :try_start_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_5
    throw v3

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v3

    move-object v12, v13

    goto :goto_4

    :catch_3
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public intstallPackage(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mApkPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/game/gamecast/common/stub/PackageManagement;->createSession(Landroid/content/pm/PackageInstaller$SessionCallback;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/game/gamecast/common/stub/PackageManagement;->writeSession(I)I

    invoke-direct {p0, v0}, Lcom/sec/game/gamecast/common/stub/PackageManagement;->commitSession(I)V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mApkPath:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/PackageManagement;->mApkPath:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method
