.class public Lcom/sec/samsung/gallery/controller/SyncContactsCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SyncContactsCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncContactsCmd"


# instance fields
.field private bNeedSync:Z

.field private bNowSync:Z

.field private mActivity:Landroid/app/Activity;

.field private volatile mAlreadyInitFaceTag:Z

.field private mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mContactContentObserver:Landroid/database/ContentObserver;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNowSync:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mAlreadyInitFaceTag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNowSync:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->syncContactsOnThread()V

    return-void
.end method

.method private registerContactObserver()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$3;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private startSyncContacts()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mAlreadyInitFaceTag:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncContactsCmd"

    const-string/jumbo v2, "already initialized faceTag. Skip init."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mAlreadyInitFaceTag:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SyncContacts"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "looper is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->registerContactObserver()V

    goto :goto_0
.end method

.method private stopSyncContacts()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->unregisterContactObserver()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mSyncHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method private syncContactsOnThread()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNowSync:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNowSync:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)V

    const-string/jumbo v3, "SyncContactThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->PEOPLE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SyncContactsCmd"

    const-string/jumbo v2, "need to reload people media set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateMediaSet()V

    goto :goto_0
.end method

.method private unregisterContactObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mContactContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-object v2, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$4;->$SwitchMap$com$sec$samsung$gallery$controller$SyncContactsCmd$SyncContactsCmdType:[I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "SyncContactsCmd"

    const-string/jumbo v3, "START_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->startSyncContacts()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "SyncContactsCmd"

    const-string/jumbo v3, "STOP_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->stopSyncContacts()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
