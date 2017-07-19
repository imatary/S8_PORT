.class public Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;
.super Ljava/lang/Object;
.source "OmcPackageManager.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAsset(Landroid/content/Context;)Z
    .locals 14

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "publicc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v11

    :cond_1
    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "publicc"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v0, v9, [B

    new-instance v7, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "publicc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_1
    const/4 v12, -0x1

    if-eq v1, v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_3
    :try_start_4
    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_4
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_7
    throw v11

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v11

    move-object v3, v4

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method

.method public static getPreloadOMCPath()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Do not exist targetDir. check single operator."

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_SINGLE_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Do not exist targetDir"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v1, ""

    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelInstall(Landroid/content/Context;)V
    .locals 5

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "User cancel to Installing OMC package"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const-string v3, "512"

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readUserCancelResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    const/16 v3, 0xc8

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v2, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.omcagent.intent.USER_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public checkNetworkBearerAndCharging(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Need to check information of network bearer and charing"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "omc.info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getTextInFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;-><init>()V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppWidgetSize(Landroid/content/Context;I)V

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;->read(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public checkNetworkBearerAndCharging(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Need to check information of network bearer and charing"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v1, "omc.info"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getTextInZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;-><init>()V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppWidgetSize(Landroid/content/Context;I)V

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;->read(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public checkPackageList(Landroid/content/Context;)Z
    .locals 22

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v18

    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v20, "Do not exist targetDir."

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    new-instance v14, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "omc.info"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "apps.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "resources.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "customer.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "others.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "cscfeature.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "cscfeature_network.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v10, 0x1

    :cond_3
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v9, 0x1

    :cond_5
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v5, 0x1

    :cond_7
    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\nomc info : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n, res : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", app : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n, customer : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", others : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n, bExtra : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n, cscfeature : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cscfeature_network : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    if-nez v8, :cond_8

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v20, "omc.info missed!!"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v19, "4"

    const-string v20, "4"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    if-nez v5, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_1
    if-nez v4, :cond_a

    const/16 v19, 0x1

    :goto_2
    or-int v19, v19, v20

    if-eqz v19, :cond_c

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v20, "configuration missed!!"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_1

    :cond_a
    const/16 v19, 0x0

    goto :goto_2

    :cond_b
    if-nez v9, :cond_c

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v20, "configuration missed!!"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_c
    if-nez v6, :cond_d

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v20, "configuration missed!!"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_d
    sget-object v19, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v10, v7}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPackageInfo(Landroid/content/Context;ZZZ)Z

    move-result v19

    goto/16 :goto_0
.end method

.method public checkPackageList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 23

    :try_start_0
    new-instance v19, Ljava/util/zip/ZipInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "omc.info"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-eqz v20, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v16

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/16 v20, 0x0

    :goto_1
    return v20

    :cond_0
    :try_start_2
    const-string v20, "customer.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const-string v20, "others.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const-string v20, "cp.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const-string v20, "resources.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const-string v20, "apps.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const-string v20, "default_application_order.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const-string v20, "default_workspace.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v20, "language.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v20, "enforceskippingpackages.txt"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v20, "cscfeature.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v20, "cscfeature_network.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "extra files included : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_c
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "omc info : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", customer : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", others : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cp : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n, lang : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", bSkipPackages : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", bExtra : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n, res : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n, app : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " appOrder : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " appWorkspace : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n, cscfeature : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " cscfeature_network : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    sget-object v20, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getContentType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    if-nez v9, :cond_d

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v21, "omc.info missed!!"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v16

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v16

    :try_start_4
    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v20, 0x0

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v16

    sget-object v21, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v20

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    throw v20

    :catch_4
    move-exception v16

    sget-object v21, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    const-string v20, "4"

    const-string v21, "4"

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    if-nez v6, :cond_e

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_4
    if-nez v5, :cond_f

    const/16 v20, 0x1

    :goto_5
    or-int v20, v20, v21

    if-eqz v20, :cond_11

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v21, "configuration missed!!"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_e
    const/16 v20, 0x0

    move/from16 v21, v20

    goto :goto_4

    :cond_f
    const/16 v20, 0x0

    goto :goto_5

    :cond_10
    if-nez v11, :cond_11

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v21, "configuration missed!!"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_11
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    if-nez v7, :cond_13

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v21, "configuration missed!!"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_12
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    if-nez v3, :cond_13

    sget-object v20, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v21, "apps.xml missed!!"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_13
    sget-object v20, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPackageInfo(Landroid/content/Context;ZZZ)Z

    move-result v20

    goto/16 :goto_1
.end method

.method public clearSourcePackage(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPacakgeFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearTargetETCPackage()Z
    .locals 6

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_ETC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearTargetOMCPackage(Ljava/lang/String;)Z
    .locals 5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->deleteFiles(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public compose(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Request to Compose Package"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/omcagent/update/ComposingPackageIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public copyPackages(Ljava/lang/String;Z)Z
    .locals 14

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v12, "Update in case of Sim Changed"

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->makeDir(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_1
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 775 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "omc.zip"

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###files : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v12, "Directory traversal attack!"

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v6, v7}, Lcom/samsung/android/app/omcagent/common/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/samsung/android/app/omcagent/common/FileUtils;->setReadable(Ljava/io/File;ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/samsung/android/app/omcagent/common/FileUtils;->setExecutable(Ljava/io/File;ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v11, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    :try_start_1
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v8}, Lcom/samsung/android/app/omcagent/common/FileUtils;->makeDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v11, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 775 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "META-INF/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz p2, :cond_5

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "etc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_5
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###files : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "cp.xml"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "default_application_order.xml"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "default_workspace.xml"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_6
    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v12, "Directory traversal attack!"

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 664 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x1000

    new-array v0, v11, [B

    :goto_3
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v11

    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    throw v11
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_4
    move-exception v2

    :try_start_9
    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v11, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v11, 0x0

    :try_start_a
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_4

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_6
    move-exception v2

    :try_start_c
    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v11, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v11, 0x0

    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    :try_start_e
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_8
    move-exception v2

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v11, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v11

    :try_start_f
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :goto_5
    throw v11

    :catch_9
    move-exception v2

    sget-object v12, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v12, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public getPacakgeFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omc.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecZipFromGalaxyApps(Landroid/content/Context;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getResources(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getOmcResourceDownload(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Fail to make URL to connect omcResDownload.as - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v4, 0x190

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v2, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v15}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->execute()Z

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v13, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;

    invoke-direct {v13}, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v4, v12}, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;->readResourceDownload(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: success in GalaxyRestClient omcResDownload - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_1
    new-instance v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager$1;

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    const-string v5, "sec.zip"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->getSecFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentSize()J

    move-result-wide v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager$1;-><init>(Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: user cancel in DownloadResourceRestClient - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v4, 0x200

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Fail to parsing omcResDownload response - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: fail in GalaxyRestClient omcResDownload - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v4, 0x190

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResultCode()I

    move-result v4

    add-int/lit16 v4, v4, 0x4e20

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: success in DownloadResourceRestClient - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v4, 0xb4

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: fail in DownloadResourceRestClient - CIQ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v4, 0x190

    invoke-virtual {v12, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    const/16 v14, 0x193

    :goto_3
    invoke-virtual {v12, v14}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Prepare State: Fail to Verify package installation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    const/16 v5, 0xc8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.omcagent.intent.INSTALL_PACKAGE_ERROR"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :sswitch_0
    const/16 v14, 0x194

    goto :goto_3

    :sswitch_1
    const/16 v14, 0x1f5

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_0
        0x78 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method public install(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Request to Install OMC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.OMCUPDATE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public isChecksumMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Source Hash is Empty"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Checksum is Empty"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hash matched successfully: server["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash Match failed: server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not exist!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/omcagent/common/FileUtils;->makeDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not exist!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadPreloadPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to load Preload Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/omcagent/update/PreparePreloadPackageIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public readOmcStatus()Ljava/lang/String;
    .locals 10

    const-string v2, "/data/misc/radio/omc/omc.status"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v6, "506"

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v6, "509"

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "resultCode is empty"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const-string v6, "509"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v6, "509"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v6, "509"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v7

    :catch_5
    move-exception v0

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v8, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v4, v5

    goto :goto_2
.end method

.method public replacePackagesFromTemp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkPackageList(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Packages doesn\'t exist in Temp folder."

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Remove previous packages and resources"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/common/FileUtils;->copyFolder(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v3, p3}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public report(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Request to Report result"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/omcagent/update/ReportOMCResultIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public startInstall(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Request to Copy & Install"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public updateDeviceOmcVersion(Landroid/content/Context;)V
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "omc.info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v7, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->read(Ljava/io/InputStream;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "targetOmcVersion : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DeviceOmcInfoVersion : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "OMC.configuration.version"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/common/Device;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "not Firmware update, OOBE state."

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v7, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    sget-object v8, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->updateVersionOnly(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v7, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Device OMC Info: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v4, v5

    :goto_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_3
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### Dectect: Software is Upgraded... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v9, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Firmware and omc version was updated or Not finished yet omc update"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setVersionUpdatedByFOTA(Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v7

    :cond_2
    :try_start_5
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "only firmware version was updated."

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "only firmware version was updated."

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public verifySignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkAsset(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "publicc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "publicKey missed"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "packcage missed"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v2, v5, v3}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "verifySignature success"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v5, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public writeOmcStatus(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/data/misc/radio/omc/"

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/FileUtils;->makeDir(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chown system:radio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 770 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v3, "/data/misc/radio/omc/omc.status"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Fail to create OMC state"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chown system:radio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 660 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v4, 0x0

    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    move-object v4, v5

    goto/16 :goto_0

    :catch_2
    move-exception v1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v4, v5

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :goto_3
    :try_start_6
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_5
    throw v6

    :catch_6
    move-exception v1

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method
