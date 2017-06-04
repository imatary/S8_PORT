.class public Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;
.super Ljava/lang/Object;
.source "PostGalleryCmdBadgeUpdator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_NOTIFICATION_TAB:Z

.field private static final TAG:Ljava/lang/String; = "PostGallCmdBadgeUpdator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBadgeUpdateTask:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

.field private mDownloadStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->FEATURE_USE_NOTIFICATION_TAB:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mBadgeUpdateTask:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mBadgeUpdateTask:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->FEATURE_USE_NOTIFICATION_TAB:Z

    return v0
.end method


# virtual methods
.method public registerDownloadStateReceiver()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    return-void
.end method

.method public unregisterDownloadStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->mDownloadStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
