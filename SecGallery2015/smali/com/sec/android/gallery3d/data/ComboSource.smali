.class Lcom/sec/android/gallery3d/data/ComboSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "ComboSource.java"


# static fields
.field private static final COMBO_ALBUM:I = 0x1

.field private static final COMBO_ALBUMSET:I = 0x0

.field public static final PATH_PREFIX:Ljava/lang/String; = "combo"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "combo"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/combo/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/combo/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :pswitch_0
    new-instance v2, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/sec/android/gallery3d/data/ComboAlbum;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/android/gallery3d/data/ComboAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;[Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
