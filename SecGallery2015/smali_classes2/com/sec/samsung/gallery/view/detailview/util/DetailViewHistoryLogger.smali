.class public Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;
.super Ljava/lang/Object;
.source "DetailViewHistoryLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;
    }
.end annotation


# static fields
.field private static final DATE_ACCESS:Ljava/lang/String; = "date_accessed"

.field private static final FILES_URI:Landroid/net/Uri;

.field private static final MEDIA_DB_DATE_ACCESSED_AVAILABLE_VERSION_CODE:I = 0x33d

.field private static final MEDIA_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.media"

.field private static final TAG:Ljava/lang/String; = "DetailViewHistoryLogger"

.field private static mNeedToUpdateAccesssTime:Z


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mLastHitTime:J

.field private mLastViewedMediaId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->FILES_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mNeedToUpdateAccesssTime:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastViewedMediaId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastHitTime:J

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->getMediaDBVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x33d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mNeedToUpdateAccesssTime:Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastHitTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastViewedMediaId:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastViewedMediaId:I

    return p1
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method


# virtual methods
.method public getMediaDBVersionCode(Landroid/content/Context;)I
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.providers.media"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public update(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mNeedToUpdateAccesssTime:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastViewedMediaId:I

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iput-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->mLastHitTime:J

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
