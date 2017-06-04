.class public Lcom/sec/android/app/ve/export/Export;
.super Ljava/lang/Object;
.source "Export.java"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/export/Export$ExportAdapter;,
        Lcom/sec/android/app/ve/export/Export$ThreadHandler;,
        Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;
    }
.end annotation


# static fields
.field private static resEnumValue:I

.field private static final sHWResourceMongers:[Ljava/lang/String;


# instance fields
.field private IsSytemPausedExport:Z

.field private estimatedSize:F

.field private expFile:Ljava/io/File;

.field private exportState:I

.field private exportedFileURI:Landroid/net/Uri;

.field private isBGExport:Z

.field private mActivity:Landroid/app/Activity;

.field public mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

.field private final mConnection:Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;

.field private mFileName:Ljava/lang/String;

.field private final mHandler:Lcom/sec/android/app/ve/export/Export$ThreadHandler;

.field private mService:Lcom/sec/android/app/ve/export/IExportService;

.field private mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    sput v3, Lcom/sec/android/app/ve/export/Export;->resEnumValue:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.sec.android.app.vefull"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.sec.android.app.vepreload"

    aput-object v2, v0, v1

    const-string/jumbo v1, "com.samsung.app.slowmotion"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "com.samsung.app.highlightplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.sec.android.app.clipvideo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.samsung.android.video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/ve/export/Export;->sHWResourceMongers:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;-><init>(Lcom/sec/android/app/ve/export/Export;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mConnection:Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;

    new-instance v0, Lcom/sec/android/app/ve/export/Export$ThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;-><init>(Lcom/sec/android/app/ve/export/Export;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mHandler:Lcom/sec/android/app/ve/export/Export$ThreadHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/export/Export;->isBGExport:Z

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/Export;->exportState:I

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->expFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/ve/export/Export;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/Export;->exportedFileURI:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/ve/export/Export;Lcom/sec/android/app/ve/export/IExportService;)Lcom/sec/android/app/ve/export/IExportService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/ve/export/Export;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/export/Export;->setExportState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/Export$ThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mHandler:Lcom/sec/android/app/ve/export/Export$ThreadHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/ve/export/Export;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->releaseService()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/ve/export/Export;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/ve/export/Export;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->runMediaScanner()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/ve/export/Export;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/ve/export/Export;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->getExportState()I

    move-result v0

    return v0
.end method

.method private getExportState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    invoke-interface {v1}, Lcom/sec/android/app/ve/export/IExportService;->isEThreadAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/export/Export;->setExportState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/ve/export/Export;->exportState:I

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseService()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mConnection:Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->unbindFromService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->unregisterProcessMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runMediaScanner()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/export/Export;->getFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/app/ve/export/Export$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/export/Export$1;-><init>(Lcom/sec/android/app/ve/export/Export;)V

    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private setExportState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/ve/export/Export;->exportState:I

    return-void
.end method

.method private setIsSytemPausedExport()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/export/Export;->IsSytemPausedExport:Z

    return-void
.end method

.method private unregisterProcessMonitor()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->changeNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Z)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getExportMode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->getExportMode()I

    move-result v0

    return v0
.end method

.method public getExportParameters()Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->getExportParameters()Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    move-result-object v0

    return-object v0
.end method

.method public getExportProgress()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    invoke-interface {v1}, Lcom/sec/android/app/ve/export/IExportService;->getExportProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mHandler:Lcom/sec/android/app/ve/export/Export$ThreadHandler;

    return-object v0
.end method

.method public getIsBackgroundExport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/ve/export/Export;->isBGExport:Z

    return v0
.end method

.method public getMediaDBUriOfExportedFile()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->exportedFileURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOngoingNotificationStringID()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->getOngoingNotificationStringID()I

    move-result v0

    return v0
.end method

.method public getTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v0
.end method

.method public initExportProgress(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/ve/export/Export;->expFile:Ljava/io/File;

    sget v2, Lcom/sec/android/app/ve/export/Export;->resEnumValue:I

    invoke-static {v2}, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->getVideoBitRate(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    const/high16 v2, 0x44800000    # 1024.0f

    int-to-float v3, v0

    mul-float/2addr v3, v1

    const/high16 v4, 0x43000000    # 128.0f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/ve/export/Export;->estimatedSize:F

    return-void
.end method

.method public initiateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->initiateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method public isExportAfterAutoEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->isExportAfterAutoEdit()Z

    move-result v0

    return v0
.end method

.method public isExportRunning()Z
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    invoke-interface {v2}, Lcom/sec/android/app/ve/export/IExportService;->isEThreadAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->getExportState()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/export/Export;->pauseExport(Z)V

    :cond_1
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 11

    iget-object v8, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x9

    new-array v5, v8, [I

    const/4 v1, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/ve/export/Export;->mActivity:Landroid/app/Activity;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v2, 0x0

    :goto_1
    sget-object v9, Lcom/sec/android/app/ve/export/Export;->sHWResourceMongers:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_2

    sget-object v9, Lcom/sec/android/app/ve/export/Export;->sHWResourceMongers:[Ljava/lang/String;

    aget-object v9, v9, v2

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v9, v5, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const/16 v8, 0x9

    if-ge v2, v8, :cond_6

    aget v8, v5, v2

    if-ne v8, p1, :cond_5

    sget-object v8, Lcom/sec/android/app/ve/export/Export;->sHWResourceMongers:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_9

    const/4 v2, 0x0

    :goto_3
    const/16 v8, 0x9

    if-ge v2, v8, :cond_9

    aget v8, v5, v2

    if-eqz v8, :cond_7

    sget-object v8, Lcom/sec/android/app/ve/export/Export;->sHWResourceMongers:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->isExportPauseSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->setIsSytemPausedExport()V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/export/Export;->pauseExport(Z)V

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string/jumbo v9, "com.sec.android.app.camera"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string/jumbo v9, "com.samsung.android.video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const-string/jumbo v9, "com.samsung.everglades.video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->isExportPauseSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->setIsSytemPausedExport()V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/export/Export;->pauseExport(Z)V

    goto/16 :goto_0
.end method

.method public onNotifyClick()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onNotifyClick()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method

.method public pauseExport(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/export/Export;->getExportState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mService:Lcom/sec/android/app/ve/export/IExportService;

    invoke-interface {v1, p1}, Lcom/sec/android/app/ve/export/IExportService;->pauseExport(Z)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/export/Export;->setExportState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeSavedTranscode(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getexportHM()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getexportHM()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public saveexportedtranscode(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mTrans:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getexportHM()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/ve/export/Export;->setExportedTranscode(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExportedTranscode(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;
    .locals 1

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;->setfilePath(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;->setexportedTE(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    return-object v0
.end method

.method public updateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->updateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;II)V

    return-void
.end method
