.class public Lcom/sec/android/gallery3d/ui/SelectionManager;
.super Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;
.source "SelectionManager.java"


# static fields
.field private static final INVALID_ID:I = -0x1

.field public static final SELECT_CHANNEL_ADD_MODE:I = 0xa

.field public static final SELECT_HIDE_MODE:I = 0x8

.field public static final SELECT_LONGPRESS_MODE:I = 0x7

.field public static final SELECT_NORMAL_MODE:I = 0x4

.field public static final SELECT_REMOVE_FROM_RESULT_MODE:I = 0xb

.field public static final SELECT_SELECT_MODE:I = 0x5

.field public static final SELECT_SHARE_MODE:I = 0x6

.field public static final SELECT_SHOW_MODE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SelectionManager"

.field private static final USE_NEW_SLIDESHOW:Z


# instance fields
.field private final indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCounter:I

.field private mDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mInCollageSelectionMode:Z

.field private mInExpansionMode:Z

.field private mInGifSelectionMode:Z

.field private mInNewAlbumMode:Z

.field private mIsBufferAnimation:Z

.field private mIsGroupCheckBoxSelected:Z

.field private mIsMultiPickMode:Z

.field private mIsPenSelectionMode:Z

.field private mIsSuggestionPickerMode:Z

.field private mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

.field private final mOrderMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

.field private final mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

.field private final mSelectedPaths:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

.field public mSelectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->USE_NEW_SLIDESHOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInCollageSelectionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsSuggestionPickerMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInGifSelectionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsBufferAnimation:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsGroupCheckBoxSelected:Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->indexMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    return-void
.end method

.method private findAgainByPathAndRemove(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/Path;)V

    return-void
.end method

.method private getSelectedItemId(Lcom/sec/android/gallery3d/data/MediaObject;)I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    instance-of v3, p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V
    .locals 3

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_0
    :goto_0
    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    if-ne p3, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method

.method private remove(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v3, :cond_3

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setParentSetPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->indexMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->setParentSetPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method

.method public add(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addFirst(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public clearSelectedCount()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public destroyedInSuggestionPickerMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsSuggestionPickerMode:Z

    return v0
.end method

.method public get(I)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SelectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBufferAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsBufferAnimation:Z

    return v0
.end method

.method public getCloneMediaList()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsGroupCheckBoxSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsGroupCheckBoxSelected:Z

    return v0
.end method

.method public getList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMediaItemArrayList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getMediaItemOrderMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaList()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaSetArrayList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getMediaTypeOfItems()I
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    or-int/2addr v1, v5

    :cond_1
    const/4 v5, 0x6

    if-ne v1, v5, :cond_0

    monitor-exit v4

    move v2, v1

    :goto_0
    return v2

    :cond_2
    monitor-exit v4

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMutiSelector()Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    return-object v0
.end method

.method public getNumberItemOfMarkedAsSelected()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    monitor-exit v4

    :goto_1
    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SelectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNumberItemOfMarkedAsSelected():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNumberOfMarkedAsSelected()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getProgressDialog()Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method public getSelectLogicalCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    sget v5, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedMediaSetMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectionBuffer()Lcom/sec/samsung/gallery/view/common/SelectionBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    return-object v0
.end method

.method public getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1
.end method

.method public getSetSelectedCount(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    if-nez v1, :cond_2

    const-string/jumbo v4, "SelectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "item is null, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    const-string/jumbo v4, "SelectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " total n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTotalItemList()Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getTotalSelectedItems()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    :goto_1
    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SelectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public inCollageSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInCollageSelectionMode:Z

    return v0
.end method

.method public inExpansionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInExpansionMode:Z

    return v0
.end method

.method public inGifSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInGifSelectionMode:Z

    return v0
.end method

.method public inNewAlbumMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInNewAlbumMode:Z

    return v0
.end method

.method public isCloudOnlyContentsIncluded()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isInMultiPickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    return v0
.end method

.method public isPenSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsPenSelectionMode:Z

    return v0
.end method

.method public isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    instance-of v3, p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SelectionManager"

    const-string/jumbo v4, "Attempt to read from field \'java.lang.Object java.util.LinkedList$Link.data\' on a null object reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSelectionBufferVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveSelectionMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInExpansionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInGifSelectionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInCollageSelectionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsPenSelectionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsGroupCheckBoxSelected:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsSuggestionPickerMode:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->leaveSelectionMode()V

    return-void
.end method

.method public remove(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v4, :cond_3

    instance-of v4, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    instance-of v4, p2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_5

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedItemId(Lcom/sec/android/gallery3d/data/MediaObject;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<+",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->removeAll()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mOrderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mCounter:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMapWithBucketID:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->clear()V

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedPaths:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public removeAllItemInMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 10

    const/4 v9, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v4, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v6, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v1

    if-eq v1, v9, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v6

    if-ne v1, v6, :cond_2

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    instance-of v6, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v6, :cond_5

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getBucketId()I

    move-result v1

    if-eq v1, v9, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v6

    if-ne v1, v6, :cond_5

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_6
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_7
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v6, :cond_c

    move-object v6, p1

    check-cast v6, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->isLogicalMergeAlbum()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_3

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    :cond_8
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_6
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v4, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v6, :cond_a

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getBucketId()I

    move-result v1

    if-eq v1, v9, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v6

    if-ne v1, v6, :cond_a

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V

    goto :goto_4

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    :cond_b
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    :cond_c
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/MtpDevice;

    if-nez v6, :cond_d

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    if-nez v6, :cond_d

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum;

    if-nez v6, :cond_d

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/CategoryAlbum;

    if-eqz v6, :cond_f

    :cond_d
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_5

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v6

    :cond_e
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V

    goto :goto_6

    :cond_11
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->findAgainByPathAndRemove(Lcom/sec/android/gallery3d/data/Path;)V

    goto :goto_6
.end method

.method public removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    sub-int v1, v0, p2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    if-lez v1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-void
.end method

.method public setBufferAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsBufferAnimation:Z

    return-void
.end method

.method public setCollageSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInCollageSelectionMode:Z

    return-void
.end method

.method public setExpansionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInExpansionMode:Z

    return-void
.end method

.method public setGifSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInGifSelectionMode:Z

    return-void
.end method

.method public setGroupCheckBoxSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsGroupCheckBoxSelected:Z

    return-void
.end method

.method public setLogicalSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 2

    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedLogicalCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method public setMultiPickMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsMultiPickMode:Z

    return-void
.end method

.method public setMutiSelector(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    return-void
.end method

.method public setNewAlbumMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mInNewAlbumMode:Z

    return-void
.end method

.method public setPenSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsPenSelectionMode:Z

    return-void
.end method

.method public setSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSelectionBuffer(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->addAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public setSuggestionPickerMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mIsSuggestionPickerMode:Z

    return-void
.end method

.method public toggle(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public update(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    const/4 v1, 0x1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final updateSelectedCountMap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v10, v11, :cond_1

    move v1, v8

    :goto_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v10

    if-ge v7, v10, :cond_7

    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mediaList:Ljava/util/LinkedList;

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v1, v9

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    move v5, v9

    :goto_3
    if-eq v5, v0, :cond_6

    move v1, v8

    :cond_3
    :goto_4
    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectedCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_6
    move v1, v9

    goto :goto_4

    :cond_7
    return v1
.end method
