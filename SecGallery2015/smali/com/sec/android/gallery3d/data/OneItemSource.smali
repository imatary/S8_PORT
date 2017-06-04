.class public Lcom/sec/android/gallery3d/data/OneItemSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "OneItemSource.java"


# static fields
.field private static final ONE_ITEM_LOCAL_BY_TYPE_AND_ID:I = 0x0

.field private static final ONE_ITEM_SCLOUD_BY_TYPE_AND_ID:I = 0x1

.field private static final ONE_ITEM_UNION_BY_TYPE_AND_ID:I = 0x64

.field public static final PATH_PREFIX:Ljava/lang/String; = "oneitem"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "oneitem"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/oneitem/local/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/oneitem/scloud/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/oneitem/union/*/*"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/OneItemAlbum;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;III)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    move-object v2, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/OneItemAlbum;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;III)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    const/16 v5, 0x64

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/OneItemAlbum;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;III)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
