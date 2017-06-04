.class public Lcom/sec/android/gallery3d/remote/slink/SLinkSource;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSource;
.source "SLinkSource.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "/slink"

.field public static final PATH_PREFIX:Ljava/lang/String; = "slink"

.field public static final PROTOCOL:Ljava/lang/String; = "slink://"

.field public static final SCHEME:Ljava/lang/String; = "slink"

.field private static final SLINK_DEVICE:I = 0x1

.field private static final SLINK_DEVICESET:I = 0x0

.field private static final SLINK_ITEM:I = 0x2

.field private static final SLINK_VIEWER_ALBUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SLinkSource"


# instance fields
.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "slink"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/remote/RemoteMediaSource;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    const-string/jumbo v0, "SLinkSource"

    const-string/jumbo v1, "Samsung link source created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slink"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slink/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slink/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slink/viewer"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSamsungLinkApi:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    :cond_0
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorageSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/slink/SLinkClient;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-direct {v1, p1, v0, v2, v6}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;-><init>(Lcom/sec/android/gallery3d/data/Path;ILcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/slink/SLinkClient;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v4

    new-instance v1, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;-><init>(Lcom/sec/android/gallery3d/data/Path;IJLcom/sec/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSLinkClient()Lcom/sec/android/gallery3d/remote/slink/SLinkClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    return-object v0
.end method
