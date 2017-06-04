.class public Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "SLinkStorageSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SLinkStorageSet"


# instance fields
.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/slink/SLinkClient;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    const-string/jumbo v0, "SLinkStorageSet"

    const-string/jumbo v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

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

    const-string/jumbo v0, "SLinkStorageSet"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    return-object v1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSamsungLinkApi:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;->mDataVersion:J

    return-wide v0
.end method
