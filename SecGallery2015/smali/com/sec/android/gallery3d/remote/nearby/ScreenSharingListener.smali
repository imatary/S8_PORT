.class public Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;
.super Ljava/lang/Object;
.source "ScreenSharingListener.java"


# static fields
.field private static final DLNA_CONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

.field private static final DLNA_DISCONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

.field private static final GALLERY_PLAYER_TYPE:I = 0x1

.field private static final PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field private static final RESUME_REQUEST:Ljava/lang/String; = "resume_request"

.field private static final TAG:Ljava/lang/String; = "ScreenSharingListener"

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->startDLNAConnectionReq(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->startDLNADisconnectionReq(Ljava/lang/String;)V

    return-void
.end method

.method private startDLNAConnectionReq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->startDLNAConnection(Ljava/lang/String;)V

    return-void
.end method

.method private startDLNADisconnectionReq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->startDLNADisconnection(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mIsRegistered:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ScreenSharingListener"

    const-string/jumbo v2, "registerReceiver: already registered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mIsRegistered:Z

    const-string/jumbo v1, "ScreenSharingListener"

    const-string/jumbo v2, "RegisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mIsRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingListener;->mIsRegistered:Z

    const-string/jumbo v0, "ScreenSharingListener"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
