.class public Lcom/sec/android/gallery3d/data/UriListSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "UriListSource.java"


# static fields
.field public static final PATH_PREFIX:Ljava/lang/String; = "uriList"

.field public static final SCHEME:Ljava/lang/String; = "uriList"

.field private static final URI_LIST:I


# instance fields
.field private final mApp:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "uriList"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mApp:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/uriList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/sec/android/gallery3d/data/UriListSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriListSource;->mApp:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/data/UriListSet;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
