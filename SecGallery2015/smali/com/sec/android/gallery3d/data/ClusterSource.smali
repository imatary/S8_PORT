.class Lcom/sec/android/gallery3d/data/ClusterSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "ClusterSource.java"


# static fields
.field static final CLUSTER_ALBUMSET_ALL:I = 0x13

.field static final CLUSTER_ALBUMSET_CHANNEL:I = 0x12

.field static final CLUSTER_ALBUMSET_FACE:I = 0x4

.field static final CLUSTER_ALBUMSET_FACE_CONFIRMED:I = 0xc

.field static final CLUSTER_ALBUMSET_FACE_CONFIRMED_RECOMMEND:I = 0xd

.field static final CLUSTER_ALBUMSET_FACE_NAMED:I = 0xb

.field static final CLUSTER_ALBUMSET_FAVORITES:I = 0x9

.field static final CLUSTER_ALBUMSET_FESTIVAL:I = 0x10

.field static final CLUSTER_ALBUMSET_GALLERYSEARCH:I = 0xe

.field static final CLUSTER_ALBUMSET_GALLERYSEARCHALL:I = 0xf

.field static final CLUSTER_ALBUMSET_LOCATION:I = 0x1

.field static final CLUSTER_ALBUMSET_QUICKVIEW:I = 0x14

.field static final CLUSTER_ALBUMSET_SIZE:I = 0x3

.field static final CLUSTER_ALBUMSET_SMART:I = 0x11

.field static final CLUSTER_ALBUMSET_TAG:I = 0x2

.field static final CLUSTER_ALBUMSET_TIME:I = 0x0

.field static final CLUSTER_ALBUMSET_TIME_SEARCH:I = 0xa

.field private static final CLUSTER_ALBUM_CHANNEL:I = 0x116

.field static final CLUSTER_ALBUM_FACE:I = 0x104

.field private static final CLUSTER_ALBUM_FACE_NAMED:I = 0x112

.field private static final CLUSTER_ALBUM_FAVORITES:I = 0x110

.field private static final CLUSTER_ALBUM_FESTIVAL:I = 0x114

.field private static final CLUSTER_ALBUM_GALLERY_SEARCH:I = 0x113

.field private static final CLUSTER_ALBUM_GALLERY_SEARCH_MORE:I = 0x117

.field private static final CLUSTER_ALBUM_LOCATION:I = 0x101

.field private static final CLUSTER_ALBUM_SIZE:I = 0x103

.field private static final CLUSTER_ALBUM_SMART:I = 0x115

.field private static final CLUSTER_ALBUM_TAG:I = 0x102

.field static final CLUSTER_ALBUM_TIME:I = 0x100

.field public static final PATH_PREFIX:Ljava/lang/String; = "cluster"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "cluster"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/tag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/size"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/gallerysearchall"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/time/*"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/location/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/tag/*"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/size/*"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face/*"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face_named"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face_confirmed"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face_confirmed_recommend"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/festival"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/gallerysearch"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/time_search"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/favorites"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/face_named/*"

    const/16 v2, 0x112

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/gallerysearchall/children"

    const/16 v2, 0x113

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/gallerysearchall/childrenmore"

    const/16 v2, 0x117

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/festival/*"

    const/16 v2, 0x114

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/favorites/*"

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/smart"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/smart/*"

    const/16 v2, 0x115

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/channel"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/channel/*"

    const/16 v2, 0x116

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/albumall"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cluster/*/quick_view"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    sparse-switch v1, :sswitch_data_0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :goto_0
    return-object v5

    :sswitch_1
    new-instance v5, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_2
    new-instance v5, Lcom/sec/android/gallery3d/data/FestivalClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/FestivalClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_4
    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_5
    new-instance v5, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    new-instance v5, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/16 v6, 0x9

    invoke-direct {v5, p1, v0, v2, v6}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2, v7}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_9
    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :sswitch_b
    new-instance v5, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :sswitch_c
    new-instance v5, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_4
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_9
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x100 -> :sswitch_3
        0x101 -> :sswitch_3
        0x102 -> :sswitch_3
        0x103 -> :sswitch_3
        0x104 -> :sswitch_3
        0x110 -> :sswitch_7
        0x112 -> :sswitch_8
        0x113 -> :sswitch_6
        0x114 -> :sswitch_8
        0x115 -> :sswitch_3
        0x116 -> :sswitch_a
        0x117 -> :sswitch_6
    .end sparse-switch
.end method
