.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupControl"
.end annotation


# static fields
.field private static final MAX_ALBUM_GROUP:I = 0xc8

.field private static final MAX_GROUP:I = 0x14

.field private static final MAX_GROUP_SMART_CLUSTERING:I = 0x5a

.field private static final MAX_GROUP_TABLET:I = 0x1c


# instance fields
.field final mActiveObject:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mCount:I

.field private final mGroupObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

.field private final mInactiveObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mCount:I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FEATURE_IS_J2MODEL:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2500()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mCount:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->createGroupObject()[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mGroupObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->createSearchBgObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->clearActiveGroup()V

    return-void

    :cond_1
    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsTablet:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->activateGroup(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->clearActiveGroup()V

    return-void
.end method

.method private activateGroup(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PositionControllerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is no inactive group : active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setVisibility(Z)V

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1102(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;I)I

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :cond_2
    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(ZI)V

    goto :goto_0
.end method

.method private clearActiveGroup()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mGroupObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    aget-object v0, v2, v1

    const/4 v2, -0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1102(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;I)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createGroupObject()[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mCount:I

    new-array v0, v4, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mCount:I

    if-ge v2, v4, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v4, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createSearchBgObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToFirst()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mSearchBgObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method


# virtual methods
.method inActivateGroup(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "PositionControllerBase"

    const-string/jumbo v1, "object inActivateGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PositionControllerBase"

    const-string/jumbo v1, "Active group is already empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlwaysActiveGroupObjectIndex:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->checkAlwaysActiveGroupObjectIndexForAlbumView(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setVisibility(Z)V

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setFocusBorderVisible(Z)V

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mIndex:I
    invoke-static {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1102(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;I)I

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :cond_4
    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mGrpCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    goto :goto_0
.end method
