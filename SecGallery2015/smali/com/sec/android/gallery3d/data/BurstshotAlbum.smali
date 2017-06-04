.class public Lcom/sec/android/gallery3d/data/BurstshotAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "BurstshotAlbum.java"


# static fields
.field protected static final COUNT_PROJECTION:[Ljava/lang/String;

.field protected static final INVALID_COUNT:I = -0x1

.field protected static final ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field static final WHERE:Ljava/lang/String; = "bucket_id = ? AND group_id = ? "


# instance fields
.field protected final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field protected final mBucketId:I

.field protected mCachedCount:I

.field protected final mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

.field protected final mGroupId:J

.field private final mName:Ljava/lang/String;

.field protected mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field mPathOnFileSystem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IJ)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mCachedCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mPathOnFileSystem:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput p3, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mBucketId:I

    iput-wide p4, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mGroupId:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    const-string/jumbo v0, "BurstShotAlbum"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mCachedCount:I

    invoke-static {}, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/BurstshotAlbum;->mDataVersion:J

    return-wide v0
.end method
