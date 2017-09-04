.class public Lcom/android/launcher3/home/WorkspaceDragController;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field private static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field private static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final WIDGET_DROP_ANIMATION_DELAY:I = 0xc8


# instance fields
.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iput v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceDragController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnLastItem(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private addItemOnLastItem(Ljava/util/ArrayList;Z)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v24, -0x64

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v22, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_0
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/16 v29, 0x0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->itemFromAppsController(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v26

    if-eqz p2, :cond_6

    if-nez v26, :cond_6

    const/16 v33, 0x1

    :goto_1
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v6, :cond_8

    :cond_0
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v6, :cond_7

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v35

    :goto_2
    if-eqz v29, :cond_d

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_d

    move-object/from16 v7, v29

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    move-object/from16 v0, v35

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v27, v35

    check-cast v27, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v8}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v22, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    :cond_2
    :goto_4
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-eqz v30, :cond_3

    const/4 v6, 0x1

    move-object/from16 v0, v30

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    const/4 v14, -0x1

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v6, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_5

    if-eqz p2, :cond_4

    if-nez v33, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v9, Ljava/util/ArrayList;

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v12, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_5

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v18, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x1

    aget v19, v6, v8

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, v35

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_0

    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v35, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v33, :cond_9

    move-object/from16 v6, v28

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v29

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v29

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v8, v9, v6}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v35

    goto/16 :goto_2

    :cond_9
    move-object/from16 v29, v28

    goto :goto_5

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v6, v28

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v29

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v8, v29

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v35

    goto/16 :goto_2

    :cond_a
    move-object/from16 v29, v28

    goto :goto_6

    :cond_b
    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v34

    move/from16 v23, v22

    move-object/from16 v36, v27

    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$12;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v23

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$12;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;IZLcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    move-object/from16 v7, v28

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v4, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method private findEmptyCellForExtraDragObject([IZZZZ)Z
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v14

    :goto_0
    move v10, v11

    :goto_1
    if-ge v10, v14, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v8, :cond_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v5

    if-ne v10, v11, :cond_7

    if-eqz p2, :cond_3

    if-eqz p3, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    :goto_2
    if-ltz v6, :cond_4

    if-gez v7, :cond_5

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    const-wide/16 v0, -0xc9

    cmp-long v0, v12, v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v9

    if-eqz v9, :cond_8

    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    if-eqz p4, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x2

    :goto_0
    move v3, v2

    :goto_1
    if-lez v3, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v1, :cond_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    :cond_3
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v9, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v1, v5, v8, v9, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([IIIZ)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :goto_2
    return-void

    :cond_4
    if-ne v3, v2, :cond_6

    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v8, -0xc9

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aput v10, v5, v10

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aput v10, v5, v11

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V
    .locals 10

    iget v4, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v5, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v0, 0x0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    if-eqz p7, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    :goto_0
    instance-of v0, p5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    :goto_1
    const/4 v0, 0x0

    mul-float v1, v7, v6

    aput v1, p2, v0

    const/4 v0, 0x1

    mul-float v1, v8, v6

    aput v1, p2, v0

    return-void

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    goto :goto_1
.end method

.method private isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x1030132

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/HomeLoader;->checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f090038

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v6, v7

    :cond_2
    return v6

    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f09007d

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private itemFromAppsController(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_0

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v20, Lcom/android/launcher3/home/WorkspaceDragController$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$6;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v3, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v36, v0

    const/16 v29, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v35

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v38, 0x1

    :goto_1
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v38, :cond_5

    :cond_3
    const/16 v37, 0x1

    :goto_2
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/16 v38, 0x0

    goto :goto_1

    :cond_5
    const/16 v37, 0x0

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v38, :cond_a

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v39

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v3, v39

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v41

    :goto_4
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v35, v39

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v4, v5

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v6, v0, v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->acceptDrop([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)Z

    move-result v34

    if-nez v34, :cond_e

    new-instance v2, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v5, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v6, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-ltz v3, :cond_d

    const/16 v34, 0x1

    :goto_5
    if-nez v34, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    if-eqz v38, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :cond_7
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v39, v35

    goto/16 :goto_3

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v39

    :goto_6
    if-eqz v39, :cond_b

    move-object/from16 v3, v39

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v39

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v41

    goto/16 :goto_4

    :cond_c
    move-object/from16 v39, v35

    goto :goto_6

    :cond_d
    const/16 v34, 0x0

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v6, v41

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v36, :cond_f

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_f
    const/4 v8, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v6, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v36, :cond_10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_10
    const/4 v8, 0x1

    :cond_11
    if-eqz v8, :cond_16

    if-nez v36, :cond_13

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_12
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_14
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_15
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v35

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_17

    check-cast v33, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    :cond_17
    const-wide/16 v30, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v3, v6, v14

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v16, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v17, v3, v5

    const/16 v18, -0x1

    move-object/from16 v11, v35

    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v35

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v3, :cond_19

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v16, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v17, v3, v5

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    move-object/from16 v11, v41

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v17, v0

    const/16 v19, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v18, v41

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v21, p0

    move/from16 v26, v8

    invoke-direct/range {v21 .. v28}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_8

    :cond_1b
    move/from16 v8, v29

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 44

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const/16 v37, 0x1

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v7, v6, v8, v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/16 v37, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    :cond_2
    const/16 v39, 0x1

    :goto_1
    if-eqz v39, :cond_8

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v24, v0

    :goto_2
    const/16 v41, 0x0

    if-eqz v37, :cond_b

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v14

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v13, v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x3

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v41, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ltz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ltz v6, :cond_9

    const/4 v6, 0x0

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/16 v38, 0x1

    :goto_3
    if-nez v38, :cond_a

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    :goto_4
    return-void

    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v11

    const-string v12, "IWAR"

    const-string v13, "Home_Background_Longpress"

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v38, 0x0

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    :cond_b
    const-wide/16 v34, -0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v42

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v6, v6, v42

    if-eqz v6, :cond_c

    new-instance v40, Lcom/android/launcher3/home/WorkspaceDragController$3;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$3;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;J)V

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    :goto_5
    const/16 v36, 0xc8

    :cond_c
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$4;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    move-object/from16 v0, v24

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_d

    if-eqz v41, :cond_d

    move-object/from16 v33, v24

    check-cast v33, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v33

    invoke-static {v6, v0, v7, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    :cond_d
    if-eqz v39, :cond_f

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_f

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_f

    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v21, v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/launcher3/home/WorkspaceDragController$5;

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v24}, Lcom/android/launcher3/home/WorkspaceDragController$5;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;)V

    move/from16 v0, v36

    int-to-long v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    goto/16 :goto_4

    :cond_e
    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_f
    if-eqz v39, :cond_10

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6

    :cond_10
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZZZZZ)V"
        }
    .end annotation

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz p7, :cond_1

    move/from16 v28, v24

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_0
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p5, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v4, :cond_2

    add-int/lit8 v24, v24, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v28, v24, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    or-int p3, p3, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz p3, :cond_3

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v22, 0x1

    :goto_2
    const/16 v18, 0x0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    :cond_4
    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v4, v4, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v4, :cond_b

    :cond_5
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v29

    :goto_3
    if-eqz v23, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v21, v23

    :cond_6
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v10, v4, v5

    :goto_4
    if-eqz p3, :cond_7

    if-nez v22, :cond_15

    :cond_7
    if-eqz p3, :cond_13

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :goto_5
    if-eqz p3, :cond_14

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, -0x1

    move-object/from16 v5, v21

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    if-eqz p6, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v10, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v29

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v12, v29

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown item type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v23

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v23

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v10, v4}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_3

    :cond_c
    move-object/from16 v23, v21

    goto :goto_7

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v23

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v23

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v29

    goto/16 :goto_3

    :cond_d
    move-object/from16 v23, v21

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-eqz v4, :cond_f

    if-eqz p4, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v20

    :goto_9
    if-nez v20, :cond_12

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_10

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    const/16 v20, 0x0

    goto :goto_9

    :cond_12
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_4

    :cond_13
    const-wide/16 v6, -0x64

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    goto/16 :goto_6

    :cond_15
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    :cond_17
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_19

    new-instance v16, Lcom/android/launcher3/home/WorkspaceDragController$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$7;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V

    new-instance v26, Lcom/android/launcher3/home/WorkspaceDragController$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$8;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V

    :cond_18
    :goto_a
    return-void

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz p6, :cond_18

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_18

    check-cast v18, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 69

    new-instance v51, Lcom/android/launcher3/home/WorkspaceDragController$1;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$1;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    const/16 v64, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v58, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v62, v0

    const/16 v48, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_23

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-eqz v5, :cond_2

    const/16 v54, 0x1

    :goto_0
    if-eqz v54, :cond_0

    if-eqz v58, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v54, :cond_5

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v58, :cond_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/16 v54, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual/range {v57 .. v57}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v57 .. v57}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v17, v62

    goto :goto_2

    :cond_6
    const/16 v49, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v58, :cond_a

    if-nez v54, :cond_8

    if-eqz v62, :cond_8

    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_8
    if-nez v54, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v8, v14

    if-nez v5, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_3

    :cond_a
    const/16 v49, 0x1

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static/range {v57 .. v57}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v23

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v26, v0

    if-eqz v49, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_c

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    :cond_c
    new-instance v67, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v67 .. v67}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->copyFrom(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-eqz v62, :cond_e

    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_f

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    invoke-interface/range {v51 .. v51}, Ljava/lang/Runnable;->run()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v18, p0

    move/from16 v23, v49

    invoke-direct/range {v18 .. v25}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    goto/16 :goto_3

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aput v6, v26, v5

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ltz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ltz v5, :cond_13

    const/4 v5, 0x0

    aget v5, v26, v5

    if-lez v5, :cond_13

    const/4 v5, 0x1

    aget v5, v26, v5

    if-lez v5, :cond_13

    const/16 v53, 0x1

    :goto_6
    if-nez v53, :cond_1a

    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v50

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-nez v5, :cond_14

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v62, :cond_11

    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v61

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v8, v14

    if-nez v5, :cond_15

    move-object/from16 v0, v65

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v25, v0

    const/16 v27, 0x2

    move-object/from16 v24, v16

    invoke-virtual/range {v20 .. v27}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    goto/16 :goto_5

    :cond_13
    const/16 v53, 0x0

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    :cond_16
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_17
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    :cond_18
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_19
    invoke-interface/range {v51 .. v51}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, v16

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    aget v5, v26, v5

    move-object/from16 v0, v57

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    aget v5, v26, v5

    move-object/from16 v0, v57

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-eq v5, v6, :cond_1c

    :cond_1b
    const/16 v64, 0x1

    const/4 v5, 0x0

    aget v5, v26, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v5, 0x1

    aget v5, v26, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v4, v16

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x0

    aget v6, v26, v6

    const/4 v8, 0x1

    aget v8, v26, v8

    invoke-static {v5, v4, v6, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v62

    if-ne v0, v5, :cond_1d

    if-eqz v49, :cond_25

    :cond_1d
    const/16 v55, 0x1

    :goto_9
    const-wide/16 v30, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gez v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v32, v0

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v32

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v66

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v66

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_1e
    if-eqz v55, :cond_1f

    if-nez v54, :cond_27

    if-eqz v62, :cond_27

    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v34, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v35, v5, v6

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v36, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v37, v0

    move-object/from16 v29, v16

    invoke-virtual/range {v28 .. v37}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f0901ad

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f09017a

    move-object/from16 v0, v63

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v60

    check-cast v60, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object/from16 v0, v60

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-nez v55, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_20
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v5, :cond_21

    move-object/from16 v56, v16

    check-cast v56, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v48, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v28, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v34, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v35, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v36, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v37, v0

    move-object/from16 v29, v50

    invoke-virtual/range {v28 .. v37}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    const/4 v6, 0x1

    if-eqz v55, :cond_28

    if-nez v54, :cond_28

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v60

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v60

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v32, v8

    if-nez v5, :cond_23

    if-nez v55, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, v60

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, v60

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v5, v6, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_23
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v48, :cond_29

    move-object/from16 v68, v56

    new-instance v38, Lcom/android/launcher3/home/WorkspaceDragController$2;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$2;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    :goto_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_2d

    move-object/from16 v0, v50

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_24

    move-object/from16 v0, v50

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2a

    :cond_24
    const/16 v59, 0x1

    :goto_e
    if-eqz v59, :cond_2c

    if-eqz v64, :cond_2b

    const/16 v39, 0x2

    :goto_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v37, v0

    const/16 v41, 0x0

    move-object/from16 v34, p0

    move-object/from16 v35, v50

    move-object/from16 v36, v17

    move-object/from16 v40, v16

    invoke-virtual/range {v34 .. v41}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    if-nez v49, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v43, v0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v40, p0

    move/from16 v45, v49

    invoke-direct/range {v40 .. v47}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    goto/16 :goto_3

    :cond_25
    const/16 v55, 0x0

    goto/16 :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v32

    goto/16 :goto_a

    :cond_27
    const-string v5, "DropTarget"

    const-string v6, "mDragInfo.cell has null parent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_29
    move-object/from16 v38, v51

    goto :goto_d

    :cond_2a
    const/16 v59, 0x0

    goto :goto_e

    :cond_2b
    const/16 v39, 0x0

    goto :goto_f

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v41, v0

    const/16 v43, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v45, v0

    move-object/from16 v42, v16

    move-object/from16 v44, v38

    invoke-virtual/range {v40 .. v45}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    invoke-interface/range {v38 .. v38}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_10
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    return-void
.end method

.method private restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-nez v2, :cond_0

    const-string v2, "DropTarget"

    const-string v3, "dragView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, -0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move v9, v13

    move v8, v12

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_2

    :cond_6
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private restoreItems(Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    iget-object v5, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-boolean v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v6, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900cc

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0900c9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const v4, 0x7f0900ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0900c9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    return-void
.end method

.method private setCurrentDropOverCell(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setDragMode(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8

    const-wide/16 v2, -0x64

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBindController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 42

    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x2

    new-array v6, v4, [F

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v4, :cond_5

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v4, 0x7f0d0023

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v20, v0

    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    :cond_1
    const/16 v38, 0x1

    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    if-eqz p7, :cond_7

    :cond_2
    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v41

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p6

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v8, 0x0

    aget v8, v41, v8

    const/4 v9, 0x1

    aget v9, v41, v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v40

    if-eqz v40, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    aput v7, v41, v4

    const/4 v4, 0x1

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    aput v7, v41, v4

    :cond_3
    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    move/from16 v0, v20

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->crossFade(I)V

    :cond_4
    :goto_2
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v15, 0x0

    const v16, 0x3dcccccd    # 0.1f

    const v17, 0x3dcccccd    # 0.1f

    const/16 v18, 0x0

    move-object/from16 v13, p3

    move-object v14, v5

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    :goto_3
    return-void

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v38, 0x0

    goto :goto_1

    :cond_7
    if-eqz v38, :cond_4

    if-eqz p7, :cond_4

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    const/16 v33, 0x2

    :goto_4
    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$10;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    const/4 v4, 0x0

    aget v25, v5, v4

    const/4 v4, 0x1

    aget v26, v5, v4

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v30, v6, v4

    const/4 v4, 0x1

    aget v31, v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v35, v0

    move-object/from16 v22, p3

    move/from16 v34, v20

    invoke-virtual/range {v21 .. v35}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    :cond_9
    const/16 v33, 0x0

    goto :goto_4
.end method

.method public canOpenFolder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    return v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move v6, p3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v8, -0x64

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$11;

    invoke-direct {v4, p0, v1, v10, v11}, Lcom/android/launcher3/home/WorkspaceDragController$11;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v8, :cond_12

    move v0, v6

    :goto_1
    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    move v1, v6

    :goto_2
    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_14

    :cond_1
    move v5, v6

    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v5, :cond_2

    or-int/lit8 v4, v4, 0x1

    :cond_2
    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x20

    :cond_3
    if-eqz v2, :cond_4

    if-nez v5, :cond_4

    or-int/lit16 v4, v4, 0x1000

    :cond_4
    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    or-int/lit16 v4, v4, 0x2000

    :cond_5
    if-eqz v0, :cond_6

    or-int/lit8 v4, v4, 0x40

    :cond_6
    if-nez v0, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    or-int/lit16 v4, v4, 0x80

    :cond_8
    if-nez v1, :cond_9

    or-int/lit8 v4, v4, 0x2

    :cond_9
    if-eqz v0, :cond_a

    or-int/lit16 v4, v4, 0x100

    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v4, v4, 0x200

    :cond_b
    if-nez v1, :cond_c

    or-int/lit16 v4, v4, 0x400

    :cond_c
    if-eqz v1, :cond_d

    if-nez v2, :cond_d

    or-int/lit8 v4, v4, 0x8

    :cond_d
    if-eqz v1, :cond_e

    or-int/lit16 v4, v4, 0x800

    :cond_e
    if-eqz v0, :cond_f

    or-int/lit16 v4, v4, 0x4000

    :cond_f
    if-eqz v0, :cond_10

    const v6, 0x8000

    or-int/2addr v4, v6

    :cond_10
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v0, :cond_11

    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    :cond_11
    move v7, v4

    goto :goto_0

    :cond_12
    move v0, v7

    goto :goto_1

    :cond_13
    move v1, v7

    goto :goto_2

    :cond_14
    move v5, v7

    goto :goto_3
.end method

.method public getScrollZone()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v1, Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    :cond_0
    if-eqz p2, :cond_1

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->onResetScrollArea()V

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v9, :cond_2

    const-string v0, "DropTarget"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v13, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/HomeController;->approachBorderOnDrag(F)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v12, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/Workspace;->dragPullingPages(F)V

    :cond_5
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_6

    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_c

    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v10

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v10, v0, :cond_8

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    invoke-static {v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iget v4, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_a

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, v11

    move-object v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->forcelyAnimateReturnPages()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_6

    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v10, v3, v5}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-nez v8, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v9, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :goto_3
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$9;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/WorkspaceDragController$9;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v6, v0, v3

    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v0, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :cond_7
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_8
    iput-boolean v5, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto/16 :goto_1

    :cond_9
    const-string v0, "DropTarget"

    const-string v3, "Invalid state: cellLayout == null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto/16 :goto_2
.end method

.method public onEnterScrollArea(III)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    if-nez p3, :cond_2

    const/4 v3, -0x1

    :goto_0
    add-int v1, v5, v3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1f5

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    const/4 v2, 0x1

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    :cond_0
    return v1
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v10

    iget-object v9, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v9, v10}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V

    :cond_2
    return-void
.end method

.method public onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v21

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    move-object/from16 v3, v21

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    const-wide/16 v18, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v5, Ljava/util/ArrayList;

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v15, v2, v4

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v23

    move-wide v12, v6

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnLastItem(Ljava/util/ArrayList;Z)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v21, v20

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v21

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v23

    goto/16 :goto_1

    :cond_4
    move-object/from16 v21, v20

    goto :goto_3

    :cond_5
    move-object/from16 v3, v20

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollLeft()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollRight()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public setDragMode(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V
    .locals 2

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController;-><init>(Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    :cond_0
    if-nez p3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
