.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreInfoBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;
    }
.end annotation


# static fields
.field static final SPERATOR:Ljava/lang/String; = ","


# instance fields
.field private final FILES_URI:Landroid/net/Uri;

.field private final SCLOUD_FILES_URI:Landroid/net/Uri;

.field final mActivity:Landroid/app/Activity;

.field mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

.field final mInflater:Landroid/view/LayoutInflater;

.field mInfo:Ljava/lang/String;

.field final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mInterim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->FILES_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->SCLOUD_FILES_URI:Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->initData(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0152

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public editCancel()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->notifyDirty()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public editDone()V
    .locals 0

    return-void
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->SCLOUD_FILES_URI:Landroid/net/Uri;

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->FILES_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method getNoInfoString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleDeviceCogCategoryDelete()V
    .locals 0

    return-void
.end method

.method initData(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfo:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method isDataSetChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDirty()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;->dataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    return-void
.end method
