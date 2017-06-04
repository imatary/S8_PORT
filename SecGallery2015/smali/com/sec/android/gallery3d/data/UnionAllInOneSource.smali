.class public Lcom/sec/android/gallery3d/data/UnionAllInOneSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "UnionAllInOneSource.java"


# static fields
.field private static final ALLINONE_ALBUMSET:I = 0x0

.field private static final ALLINONE_BY_TYPE:I = 0x1

.field public static final PATH_PREFIX:Ljava/lang/String; = "UnionAllInOne"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "UnionAllInOne"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/unionallinone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/unionallinone/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionAllInOneAlbum;

    invoke-direct {v3, v0, p1}, Lcom/sec/android/gallery3d/data/UnionAllInOneAlbum;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;)V

    :goto_0
    return-object v3

    :pswitch_0
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionAllInOneAlbumSet;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v3, p1, v4}, Lcom/sec/android/gallery3d/data/UnionAllInOneAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    :pswitch_1
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionAllInOneLocalAlbum;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionAllInOneSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/sec/android/gallery3d/data/UnionAllInOneLocalAlbum;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
