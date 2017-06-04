.class public Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

.field private mDownLoadPathList:[Ljava/lang/String;

.field private mDownloadPath:Ljava/lang/String;

.field private mFocusedIndex:I

.field private mGenericFocusIndex:I

.field private mInSelectionMode:Z

.field private final mIsBurstShotViewer:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

.field private final mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/sec/android/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;IZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mFocusedIndex:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mGenericFocusIndex:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;

    invoke-direct {v0, p4}, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/sec/android/gallery3d/glrenderer/ColorTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/sec/android/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    iput-boolean p5, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mIsBurstShotViewer:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/sec/android/gallery3d/ui/SlotView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/sec/android/gallery3d/glrenderer/Texture;)Lcom/sec/android/gallery3d/glrenderer/Texture;
    .locals 1

    instance-of v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private renderOverlay(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;ILcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawSlotStrokeFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mFocusedIndex:I

    if-ne v1, p2, :cond_3

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawFocusFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    iget-object v2, p3, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;->isItemSelected(Lcom/sec/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mGenericFocusIndex:I

    if-ne v1, p2, :cond_1

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawGenericFocusFrame(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_1
.end method


# virtual methods
.method public addSelectionIndex(I)V
    .locals 1

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    goto :goto_0
.end method

.method public clearAllSelectionIndex()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->destroy()V

    return-void
.end method

.method public getBSDownload(J)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getBurstshotDownlod(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "item_path"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownloadPath:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownloadPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownloadPath:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownLoadPathList:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getFocusIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mFocusedIndex:I

    return v0
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    return-void
.end method

.method public renderSlot(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)I
    .locals 14

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v13, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/sec/android/gallery3d/glrenderer/Texture;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/sec/android/gallery3d/glrenderer/Texture;)Lcom/sec/android/gallery3d/glrenderer/Texture;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/sec/android/gallery3d/glrenderer/ColorTexture;

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    :cond_1
    :goto_1
    iget v7, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/Texture;III)V

    iget-object v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_6

    const/4 v12, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x1000

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mIsBurstShotViewer:Z

    if-eqz v2, :cond_2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1, v12}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawBestPhotoIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V

    add-int/lit8 v12, v12, 0x1

    :cond_2
    iget-object v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    if-eqz v2, :cond_3

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawCameraShortcut(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownloadPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownLoadPathList:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDownLoadPathList:[Ljava/lang/String;

    array-length v5, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v11, v3, v2

    iget-object v6, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1, v12}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->drawBurstShotDownloadedIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    goto :goto_1

    :cond_6
    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;ILcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v2

    or-int/2addr v13, v2

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    return-void
.end method

.method public setFocusIndex(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mFocusedIndex:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mFocusedIndex:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setGenericFocusIndex(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mGenericFocusIndex:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mGenericFocusIndex:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/app/AlbumDataLoader;IZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    :cond_1
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method public setSlotPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView;->setStartIndex(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/sec/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    return-void
.end method
