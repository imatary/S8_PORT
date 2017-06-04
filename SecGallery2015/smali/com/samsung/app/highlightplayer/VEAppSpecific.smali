.class public Lcom/samsung/app/highlightplayer/VEAppSpecific;
.super Lcom/sec/android/app/ve/VEApp;
.source "VEAppSpecific.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;
    }
.end annotation


# static fields
.field public static final EXPORT_PATH_DEFAULT:Ljava/lang/String;

.field public static EXPORT_PATH_PERSONALPAGE:Ljava/lang/String;

.field public static appDataMgr:Lcom/samsung/app/highlightplayer/AppDataManager;

.field private static final mAdapter:Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;

.field public static mIsAppSurveyLoggingNeeded:Z

.field public static sIsUHDSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;-><init>(Lcom/samsung/app/highlightplayer/VEAppSpecific$1;)V

    sput-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->mAdapter:Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->EXPORT_PATH_DEFAULT:Ljava/lang/String;

    const-string/jumbo v0, "/storage/Private/"

    sput-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->EXPORT_PATH_PERSONALPAGE:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->sIsUHDSupported:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->mIsAppSurveyLoggingNeeded:Z

    new-instance v0, Lcom/samsung/app/highlightplayer/AppDataManager;

    invoke-direct {v0}, Lcom/samsung/app/highlightplayer/AppDataManager;-><init>()V

    sput-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->appDataMgr:Lcom/samsung/app/highlightplayer/AppDataManager;

    return-void
.end method

.method public static appInit()V
    .locals 6

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getInitialApplication()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/app/highlightplayer/VEAppSpecific;->EXPORT_PATH_PERSONALPAGE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/MovieMakerLib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/RW_LIB/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_3
    const-string/jumbo v4, "caption_background.jpg"

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->copyFileFromAssetsToFilesDir(Ljava/lang/String;)V

    const-string/jumbo v4, "Transition_Diagonal_sliding_A.png"

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->copyFileFromAssetsToFilesDir(Ljava/lang/String;)V

    const-string/jumbo v4, "Transition_Diagonal_sliding_B.png"

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->copyFileFromAssetsToFilesDir(Ljava/lang/String;)V

    const-string/jumbo v4, "Transition_Diagonal_sliding_C.png"

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->copyFileFromAssetsToFilesDir(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static copyFileFromAssetsToFilesDir(Ljava/lang/String;)V
    .locals 10

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getFilesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getAppAsset()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    :goto_0
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    const/4 v4, 0x0

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    const/4 v5, 0x0

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_6
    const/4 v4, 0x0

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_8
    const/4 v5, 0x0

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_0
    move-exception v8

    :goto_9
    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_a
    const/4 v4, 0x0

    if-eqz v5, :cond_9

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_9
    :goto_b
    if-eqz v5, :cond_a

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_a
    :goto_c
    const/4 v5, 0x0

    throw v8

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_9

    :catch_a
    move-exception v2

    move-object v5, v6

    goto :goto_5
.end method

.method public static getAppAsset()Landroid/content/res/AssetManager;
    .locals 5

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getAppPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v4, "com.samsung.app.highlightplayer"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static nativeInit()V
    .locals 2

    sget-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->EXPORT_PATH_DEFAULT:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/ve/common/ConfigUtils;->EXPORT_PATH:Ljava/lang/String;

    sget-object v0, Lcom/samsung/app/highlightplayer/VEAppSpecific;->mAdapter:Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->init(Lcom/sec/android/app/ve/VEAdapter;)V

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->initDimensions()V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->launchSDK()V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    sget-object v1, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_HIGHLIGHT:Lcom/samsung/app/video/editor/external/AppName;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->setAppName(Lcom/samsung/app/video/editor/external/AppName;)Z

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFilesDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->updatePackagePath(Ljava/lang/String;)Z

    return-void
.end method
