.class public Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;
.super Landroid/os/AsyncTask;
.source "PlugInStickerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_UPLOADED_STICKER_LIST:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.CHECK_UPLOADED_STICKER_LIST"

.field private static final ACTION_REFRESH_ALL_STICKERS:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.REFRESH_STICKERS"

.field private static final ACTION_SYNC_UPLOADED_STICKER_LIST_DB:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider.action.SYNC_UPLOADED_STICKER_LIST_DB"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider"

.field private static final FACE_AR_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final FACE_AR_CURSOR_INDEX_SCENE_TYPE:I = 0x3

.field private static final FACE_AR_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final FACE_AR_CURSOR_INDEX_SUB_ORDER:I = 0x4

.field private static final FACE_AR_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2

.field private static final KEY_STICKER_TYPE:Ljava/lang/String; = "key_sticker_type"

.field private static final MATCH_PATH_QUERY_INSTALLED_FACE_AR:Ljava/lang/String; = "path_query_installed_face_ar"

.field private static final MATCH_PATH_QUERY_INSTALLED_STAMP:Ljava/lang/String; = "path_query_installed_stamp"

.field private static final MATCH_PATH_QUERY_INSTALLED_STICKER_PACKAGE:Ljava/lang/String; = "path_query_installed_sticker_package"

.field private static final MATCH_PATH_QUERY_INSTALLED_WATERMARK:Ljava/lang/String; = "path_query_installed_watermark"

.field private static final NOTIFY_INDEXER_NEW_STICKER_UPLOADED:Ljava/lang/String; = "new_sticker_uploaded"

.field private static final NOTIFY_INDEXER_REFRESH_ALL:Ljava/lang/String; = "refreshAll"

.field private static final NOTIFY_INDEXER_SEPARATOR:Ljava/lang/String; = "-"

.field private static final NOTIFY_INDEXER_UNINSTALL:Ljava/lang/String; = "uninstall"

.field private static final PACKAGE_STICKER_PROVIDER:Ljava/lang/String; = "com.samsung.android.provider.stickerprovider"

.field private static final PREFIX_PACKAGE_FACE_AR:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.facear"

.field private static final PREFIX_PACKAGE_STAMP:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.stamp"

.field private static final PREFIX_PACKAGE_WATERMARK:Ljava/lang/String; = "com.samsung.android.app.camera.sticker.watermark"

.field private static final STAMP_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final STAMP_CURSOR_INDEX_PREVIEW_RESOURCE_HEIGHT:I = 0x4

.field private static final STAMP_CURSOR_INDEX_PREVIEW_RESOURCE_WIDTH:I = 0x3

.field private static final STAMP_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final STAMP_CURSOR_INDEX_SUB_ORDER:I = 0x5

.field private static final STAMP_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2

.field private static final STICKER_PACKAGE_CURSOR_INDEX_IS_PRELOADED:I = 0x1

.field private static final STICKER_PACKAGE_CURSOR_INDEX_MAIN_ORDER:I = 0x4

.field private static final STICKER_PACKAGE_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final STICKER_PACKAGE_CURSOR_INDEX_REPRESENTATIVE_NORMAL_RESOURCE_ID:I = 0x2

.field private static final STICKER_PACKAGE_CURSOR_INDEX_REPRESENTATIVE_PRESSED_RESOURCE_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PlugInStickerLoader"

.field private static final URI_AUTHORITY:Landroid/net/Uri;

.field private static final WATERMARK_CURSOR_INDEX_CAPTURE_RESOURCE_ID:I = 0x6

.field private static final WATERMARK_CURSOR_INDEX_PACKAGE_NAME:I = 0x0

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_HEIGHT:I = 0x5

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_ID:I = 0x3

.field private static final WATERMARK_CURSOR_INDEX_PREVIEW_RESOURCE_WIDTH:I = 0x4

.field private static final WATERMARK_CURSOR_INDEX_STICKER_NAME:I = 0x1

.field private static final WATERMARK_CURSOR_INDEX_SUB_ORDER:I = 0x21

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_COLOR:I = 0x11

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_DEFAULT_TEXT:I = 0xd

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_FONT:I = 0x10

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_FONT_SIZE:I = 0xf

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_HEIGHT:I = 0xa

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_H_ALIGN:I = 0x12

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_IS_EDITABLE:I = 0xb

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_IS_VERTICAL:I = 0xc

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_LEFT:I = 0x7

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_TOP:I = 0x8

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_TYPE:I = 0xe

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_V_ALIGN:I = 0x13

.field private static final WATERMARK_CURSOR_INDEX_TEXT1_WIDTH:I = 0x9

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_COLOR:I = 0x1e

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_DEFAULT_TEXT:I = 0x1a

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_FONT:I = 0x1d

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_FONT_SIZE:I = 0x1c

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_HEIGHT:I = 0x17

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_H_ALIGN:I = 0x1f

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_IS_EDITABLE:I = 0x18

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_IS_VERTICAL:I = 0x19

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_LEFT:I = 0x14

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_TOP:I = 0x15

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_TYPE:I = 0x1b

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_V_ALIGN:I = 0x20

.field private static final WATERMARK_CURSOR_INDEX_TEXT2_WIDTH:I = 0x16

.field private static final WATERMARK_CURSOR_INDEX_THUMBNAIL_RESOURCE_ID:I = 0x2


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDBObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.provider.stickerprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;-><init>(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private checkUploadedStickerList()V
    .locals 3

    const-string v1, "PlugInStickerLoader"

    const-string v2, "checkUploadedStickerList"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.provider.stickerprovider.action.CHECK_UPLOADED_STICKER_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.provider.stickerprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static syncUploadedStickerListDBWithServer(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "PlugInStickerLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncUploadedStickerListDBWithServer, stickerType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->setNewStickerUploadInfo(IZ)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.provider.stickerprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.provider.stickerprovider.action.SYNC_UPLOADED_STICKER_LIST_DB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_sticker_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->loadStickers()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized loadStickers()V
    .locals 59

    monitor-enter p0

    :try_start_0
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loadStickers - START"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Ljava/util/LinkedHashMap;

    invoke-direct/range {v53 .. v53}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v9, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v10, "path_query_installed_sticker_package"

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v46

    const/16 v17, 0x0

    if-nez v46, :cond_a

    :try_start_2
    const-string v1, "PlugInStickerLoader"

    const-string v9, "return. cursor of package sticker info is null"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v46, :cond_0

    if-eqz v17, :cond_9

    :try_start_3
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_1
    move-exception v47

    :try_start_5
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading sticker packages"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_1
    :goto_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v10, "path_query_installed_face_ar"

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v46

    const/16 v16, 0x0

    const/16 v50, 0x0

    move/from16 v51, v50

    :goto_2
    :try_start_7
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :catch_2
    move-exception v1

    move/from16 v50, v51

    :goto_3
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v9

    move-object/from16 v58, v9

    move-object v9, v1

    move-object/from16 v1, v58

    :goto_4
    if-eqz v46, :cond_2

    if-eqz v9, :cond_1d

    :try_start_9
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_2
    :goto_5
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catch_3
    move-exception v47

    :try_start_b
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading face AR"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_3
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v9, "path_query_installed_stamp"

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v46

    const/4 v9, 0x0

    const/16 v54, 0x0

    move/from16 v55, v54

    :goto_7
    :try_start_d
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catch_4
    move-exception v1

    move/from16 v54, v55

    :goto_8
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v9

    move-object/from16 v58, v9

    move-object v9, v1

    move-object/from16 v1, v58

    :goto_9
    if-eqz v46, :cond_4

    if-eqz v9, :cond_21

    :try_start_f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_4
    :goto_a
    :try_start_10
    throw v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_5
    move-exception v47

    :try_start_11
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading stamp"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_5
    :goto_b
    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const-string v9, "path_query_installed_watermark"

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v46

    const/4 v9, 0x0

    const/16 v56, 0x0

    move/from16 v57, v56

    :goto_c
    :try_start_13
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catch_6
    move-exception v1

    move/from16 v56, v57

    :goto_d
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v9

    move-object/from16 v58, v9

    move-object v9, v1

    move-object/from16 v1, v58

    :goto_e
    if-eqz v46, :cond_6

    if-eqz v9, :cond_29

    :try_start_15
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_6
    :goto_f
    :try_start_16
    throw v1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_14
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catch_7
    move-exception v47

    :try_start_17
    const-string v1, "PlugInStickerLoader"

    const-string v9, "NullPointerException while loading watermark"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_10
    invoke-static/range {v53 .. v53}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->refreshAllStickers(Ljava/util/LinkedHashMap;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v48

    if-eqz v48, :cond_8

    const/16 v1, 0x67

    move-object/from16 v0, v48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loadStickers - END"

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_9
    :try_start_18
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto/16 :goto_0

    :catch_8
    move-exception v47

    :try_start_19
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading sticker packages is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_1

    :cond_a
    :try_start_1a
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "PlugInStickerLoader"

    const-string v9, "Sticker DB is empty. Start service. Return."

    invoke-static {v1, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Landroid/content/Intent;

    invoke-direct/range {v49 .. v49}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.provider.stickerprovider.action.REFRESH_STICKERS"

    move-object/from16 v0, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.provider.stickerprovider"

    move-object/from16 v0, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v49

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-eqz v46, :cond_0

    if-eqz v17, :cond_b

    :try_start_1b
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto/16 :goto_0

    :catch_9
    move-exception v1

    :try_start_1c
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto/16 :goto_0

    :cond_c
    :try_start_1d
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->checkUploadedStickerList()V

    :cond_e
    const/16 v52, 0x0

    const/16 v8, 0x2710

    :cond_f
    :goto_11
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :catch_a
    move-exception v1

    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :catchall_4
    move-exception v9

    move-object/from16 v58, v9

    move-object v9, v1

    move-object/from16 v1, v58

    :goto_12
    if-eqz v46, :cond_10

    if-eqz v9, :cond_19

    :try_start_1f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :cond_10
    :goto_13
    :try_start_20
    throw v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :cond_11
    const/4 v1, 0x0

    :try_start_21
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "true"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v4, 0x1

    :goto_14
    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "com.samsung.android.app.camera.sticker.facear"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    if-eqz v4, :cond_12

    const/16 v8, 0x2713

    :cond_12
    :goto_15
    if-eqz v4, :cond_16

    new-instance v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;-><init>(ILjava/lang/String;ZIIII)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :catchall_5
    move-exception v1

    move-object/from16 v9, v17

    goto :goto_12

    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    :cond_14
    const-string v1, "com.samsung.android.app.camera.sticker.stamp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x2

    if-eqz v4, :cond_12

    const/16 v8, 0x2711

    goto :goto_15

    :cond_15
    const-string v1, "com.samsung.android.app.camera.sticker.watermark"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x3

    if-eqz v4, :cond_12

    const/16 v8, 0x2712

    goto :goto_15

    :cond_16
    new-instance v9, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    add-int/lit8 v52, v52, 0x1

    add-int v16, v8, v52

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;-><init>(ILjava/lang/String;ZIIII)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/16 :goto_11

    :cond_17
    if-eqz v46, :cond_1

    if-eqz v17, :cond_18

    :try_start_22
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto/16 :goto_1

    :catch_b
    move-exception v1

    :try_start_23
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_18
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_c
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_19
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    goto/16 :goto_13

    :cond_1a
    const/4 v1, 0x0

    :try_start_24
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v9, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    add-int/lit8 v50, v51, 0x1

    move/from16 v0, v51

    add-int/lit16 v15, v0, 0x2af8

    move-object v10, v3

    :try_start_25
    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v1, v11, v9}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_18
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    move/from16 v51, v50

    goto/16 :goto_2

    :cond_1b
    if-eqz v46, :cond_3

    if-eqz v16, :cond_1c

    :try_start_26
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto/16 :goto_6

    :catch_d
    move-exception v1

    :try_start_27
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_6

    :catch_e
    move-exception v47

    :try_start_28
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading face AR is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_6

    :cond_1c
    :try_start_29
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catch_f
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_1d
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto/16 :goto_5

    :cond_1e
    const/4 v1, 0x0

    :try_start_2a
    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v1, 0x5

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v15, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    add-int/lit8 v54, v55, 0x1

    move/from16 v0, v55

    add-int/lit16 v0, v0, 0x2ee0

    move/from16 v22, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v21, v14

    :try_start_2b
    invoke-direct/range {v15 .. v22}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v1, v11, v15}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    move/from16 v55, v54

    goto/16 :goto_7

    :cond_1f
    if-eqz v46, :cond_5

    if-eqz v9, :cond_20

    :try_start_2c
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_2c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_11
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    goto/16 :goto_b

    :catch_10
    move-exception v1

    :try_start_2d
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_11
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto/16 :goto_b

    :catch_11
    move-exception v47

    :try_start_2e
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading stamp is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    goto/16 :goto_b

    :cond_20
    :try_start_2f
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :catch_12
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_21
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_2f} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_11
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    goto/16 :goto_a

    :cond_22
    const/4 v1, 0x2

    :try_start_30
    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    move-object/from16 v43, v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    aput-object v10, v43, v1

    const/4 v1, 0x1

    const/4 v10, 0x0

    aput-object v10, v43, v1

    const/4 v1, 0x0

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v1, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const/4 v1, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v1, 0x5

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v1, 0x6

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    const/4 v1, 0x7

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    const/16 v1, 0x8

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    const/16 v1, 0x9

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v24

    const/16 v1, 0xa

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    const/16 v1, 0xb

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v26, 0x1

    :goto_16
    const/16 v1, 0xc

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v27, 0x1

    :goto_17
    const/16 v1, 0xd

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v1, 0xe

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v1, 0xf

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v30

    const/16 v1, 0x10

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/16 v1, 0x11

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v1, 0x12

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v1, 0x13

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/4 v1, 0x0

    new-instance v21, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    invoke-direct/range {v21 .. v34}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;-><init>(FFFFZZLjava/lang/String;IFIIII)V

    aput-object v21, v43, v1

    const/16 v1, 0x14

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    const/16 v1, 0x15

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    const/16 v1, 0x16

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v24

    const/16 v1, 0x17

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    const/16 v1, 0x18

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v26, 0x1

    :goto_18
    const/16 v1, 0x19

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v27, 0x1

    :goto_19
    const/16 v1, 0x1a

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v1, 0x1b

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v1, 0x1c

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v30

    const/16 v1, 0x1d

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/16 v1, 0x1e

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v1, 0x1f

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v1, 0x20

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/4 v1, 0x1

    new-instance v21, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    invoke-direct/range {v21 .. v34}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;-><init>(FFFFZZLjava/lang/String;IFIIII)V

    aput-object v21, v43, v1

    const/16 v1, 0x21

    move-object/from16 v0, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    new-instance v35, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_6
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    add-int/lit8 v56, v57, 0x1

    move/from16 v0, v57

    add-int/lit16 v0, v0, 0x32c8

    move/from16 v45, v0

    move-object/from16 v36, v3

    move-object/from16 v37, v11

    move/from16 v38, v12

    move/from16 v40, v19

    move/from16 v41, v20

    move/from16 v44, v14

    :try_start_31
    invoke-direct/range {v35 .. v45}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;II)V

    move-object/from16 v0, v35

    invoke-virtual {v1, v11, v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    move/from16 v57, v56

    goto/16 :goto_c

    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_16

    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_17

    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_18

    :cond_26
    const/16 v27, 0x0

    goto :goto_19

    :cond_27
    if-eqz v46, :cond_7

    if-eqz v9, :cond_28

    :try_start_32
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_32} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_14
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    goto/16 :goto_10

    :catch_13
    move-exception v1

    :try_start_33
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_33} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_14
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    goto/16 :goto_10

    :catch_14
    move-exception v47

    :try_start_34
    const-string v1, "PlugInStickerLoader"

    const-string v9, "loading watermark is cancelled"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_3

    goto/16 :goto_10

    :cond_28
    :try_start_35
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    :catch_15
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_29
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_35} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_14
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    goto/16 :goto_f

    :catchall_6
    move-exception v1

    goto/16 :goto_e

    :catch_16
    move-exception v1

    goto/16 :goto_d

    :catchall_7
    move-exception v1

    goto/16 :goto_9

    :catch_17
    move-exception v1

    goto/16 :goto_8

    :catchall_8
    move-exception v1

    move-object/from16 v9, v16

    goto/16 :goto_4

    :catch_18
    move-exception v1

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->URI_AUTHORITY:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
