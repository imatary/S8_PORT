.class public final Lcom/android/providers/media/ContentApp;
.super Ljava/lang/Object;
.source "ContentApp.java"


# static fields
.field private static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_SIOP_LEVEL"

.field private static final ACTION_SSRM_GAME_START:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_GAME_START"

.field protected static final FACE_THUMBNAILS_SIZE:I = 0x190

.field private static final GAME_START_BROADCAST:Ljava/lang/String; = "game_start"

.field protected static final MAX_GROUPING_FACE_COUNT:I = 0x12c

.field protected static final RECOMMEND_FACE_SIMILITUDE_CRITICAL:I = 0x157c

.field protected static final RECOMMEND_GROUP_SIMILITUDE_CRITICAL:I = 0x157c

.field private static final SIOP_LEVEL_BROADCAST:Ljava/lang/String; = "siop_level_broadcast"

.field private static final TAG:Ljava/lang/String; = "ContentApp"

.field protected static volatile mFaceCacheMgr:I

.field protected static mFaceDir:Ljava/lang/String;

.field private static mFaceScanner:Lcom/android/providers/media/FaceScanner;

.field protected static volatile mRestartScanner:Z

.field public static mStopScan:Z

.field protected static volatile mUseArcsoftFR:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mSyncThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0()Lcom/android/providers/media/FaceScanner;
    .locals 1

    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/providers/media/ContentApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->createCacheIfMediaMounted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    const-string/jumbo v6, "ContentApp"

    const-string/jumbo v7, "ContentApp()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/.face"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/providers/media/ContentApp$1;

    invoke-direct {v3, p0}, Lcom/android/providers/media/ContentApp$1;-><init>(Lcom/android/providers/media/ContentApp;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.sec.android.intent.action.SSRM_GAME_START"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/providers/media/ContentApp$2;

    invoke-direct {v5, p0}, Lcom/android/providers/media/ContentApp$2;-><init>(Lcom/android/providers/media/ContentApp;)V

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "file"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/providers/media/ContentApp$3;

    invoke-direct {v1, p0}, Lcom/android/providers/media/ContentApp$3;-><init>(Lcom/android/providers/media/ContentApp;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->createCacheIfMediaMounted()V

    return-void
.end method

.method private create()V
    .locals 4

    sget-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/face"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/providers/media/NativeApi;->createFaceCacheMgr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    :cond_2
    return-void
.end method

.method private createCacheIfMediaMounted()V
    .locals 3

    const-string/jumbo v0, "ContentApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create cache if media mounted.. media : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/providers/media/ContentApp;->setFaceCache()V

    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->create()V

    :cond_0
    return-void
.end method

.method protected static setFaceCache()V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "facerecognition"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    goto :goto_0
.end method


# virtual methods
.method protected SingleRestore(I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "ContentApp"

    const-string/jumbo v4, "SingleRestore() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "select A.image_id from (select * from faces ) A inner join (select * from files where reusable = 1 AND _id =%d) B on A.data = B._data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {p0, v7, p1}, Lcom/android/providers/media/ContentApp;->updateSingleNewImageID(II)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected SingleScan(ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ContentApp"

    const-string/jumbo v1, "SingleScan() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/providers/media/FaceScanner;

    invoke-direct {v0, p0}, Lcom/android/providers/media/FaceScanner;-><init>(Lcom/android/providers/media/ContentApp;)V

    sput-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    :cond_0
    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/media/FaceScanner;->scanSingleFile(ILjava/lang/String;)V

    return-void
.end method

.method protected destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ContentApp"

    const-string/jumbo v1, "destroy() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/providers/media/ContentApp;->stopScan()V

    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v0}, Lcom/android/providers/media/NativeApi;->destroyFaceCacheMgr(I)V

    sput v2, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    :cond_0
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized startScan(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ContentApp"

    const-string/jumbo v2, "startScan() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.siop.level"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string/jumbo v1, "ContentApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " level return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "dev.ssrm.app.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    sget-object v1, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/providers/media/FaceScanner;

    invoke-direct {v1, p0}, Lcom/android/providers/media/FaceScanner;-><init>(Lcom/android/providers/media/ContentApp;)V

    sput-object v1, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    const-string/jumbo v1, "ContentApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "face_restore mRestartScanner 1 FINISHED_TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "ContentApp"

    const-string/jumbo v2, "startScan() is end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    new-instance v1, Lcom/android/providers/media/ContentApp$4;

    const-string/jumbo v2, "syncThread"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/providers/media/ContentApp$4;-><init>(Lcom/android/providers/media/ContentApp;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected stopScan()V
    .locals 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    const-string/jumbo v1, "ContentApp"

    const-string/jumbo v2, "stopScan() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSingleNewImageID(II)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eq p1, p2, :cond_0

    const-string/jumbo v5, "ContentApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "face restore - updateNewImageID :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "image_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v5, "usable"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "image_id = ?"

    :try_start_0
    sget-object v5, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v4, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eq p1, p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://media/external/face_scanning_progress/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.media.FACE_SCANNER_PROGRESS"

    invoke-direct {v6, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v10

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v9
.end method
