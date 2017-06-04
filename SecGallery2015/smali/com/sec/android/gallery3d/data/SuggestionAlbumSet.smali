.class public Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "SuggestionAlbumSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SuggestionAlbumSet"


# instance fields
.field private isFirstLoading:Z

.field private mContext:Landroid/content/Context;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SuggestionAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchUri:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;J)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p2, p4, p5}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mWatchUri:[Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->isFirstLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mWatchUri:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private exitCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet$1;-><init>(Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addSetList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SuggestionAlbum;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItemByPosition(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getMediaItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mSetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reload()J
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SuggestionAlbumSet"

    const-string/jumbo v4, "isDirty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->isFirstLoading:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->isFirstLoading:Z

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "TAG_UPDATE"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->exitCurrentState()V

    goto :goto_0
.end method
