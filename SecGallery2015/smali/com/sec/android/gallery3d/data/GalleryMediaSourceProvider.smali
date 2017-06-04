.class public Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;
.super Lcom/sec/android/gallery3d/data/MediaSourceProvider;
.source "GalleryMediaSourceProvider.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized initializeSourceMap()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->mSourceClassMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "local"

    const-class v1, Lcom/sec/android/gallery3d/data/LocalSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "mtp"

    const-class v1, Lcom/sec/android/gallery3d/data/MtpSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "combo"

    const-class v1, Lcom/sec/android/gallery3d/data/ComboSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "cluster"

    const-class v1, Lcom/sec/android/gallery3d/data/ClusterSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "filter"

    const-class v1, Lcom/sec/android/gallery3d/data/FilterSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "secure"

    const-class v1, Lcom/sec/android/gallery3d/data/SecureSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "face"

    const-class v1, Lcom/sec/android/gallery3d/data/FaceSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "search"

    const-class v1, Lcom/sec/android/gallery3d/data/SearchSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearby:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nearby"

    const-class v1, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    const-string/jumbo v0, "slink"

    const-class v1, Lcom/sec/android/gallery3d/remote/slink/SLinkSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "uriList"

    const-class v1, Lcom/sec/android/gallery3d/data/UriListSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "cloud"

    const-class v1, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "scloud"

    const-class v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_3
    const-string/jumbo v0, "allinone"

    const-class v1, Lcom/sec/android/gallery3d/data/AllInOneSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "union"

    const-class v1, Lcom/sec/android/gallery3d/data/UnionSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "UnionAllInOne"

    const-class v1, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_4
    const-string/jumbo v0, "timeall"

    const-class v1, Lcom/sec/android/gallery3d/data/TimeAllSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "channel"

    const-class v1, Lcom/sec/android/gallery3d/data/ChannelSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_5
    const-string/jumbo v0, "oneitem"

    const-class v1, Lcom/sec/android/gallery3d/data/OneItemSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "slideshow"

    const-class v1, Lcom/sec/android/gallery3d/data/SlideShowSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_6
    const-string/jumbo v0, "uri"

    const-class v1, Lcom/sec/android/gallery3d/data/UriSource;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;->addSourceClass(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
