.class public Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.super Ljava/lang/Object;
.source "GlAbsMultiSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;,
        Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;
    }
.end annotation


# static fields
.field private static final IDLE_STATE:I = 0x1

.field private static final MOVE_SCROLL_DETECT_AREA:I = 0x64

.field private static final MOVE_SCROLL_DETECT_AREA_FOR_WVGA:I = 0x1e

.field private static final MOVE_SCROLL_DOWN:I = 0x2

.field private static final MOVE_SCROLL_NONE:I = 0x0

.field private static final MOVE_SCROLL_UP:I = 0x1

.field private static final NONE_STATE:I = 0x0

.field private static final SELECTING_STATE:I = 0x2


# instance fields
.field private SCROLL_VELOCITY:I

.field private mActionBarHeight:F

.field private final mCandidateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field final mCandidates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndPos:Landroid/graphics/PointF;

.field private mEndPosIndex:I

.field mFirstCandidateIndex:I

.field private mFirstIndex:I

.field final mFreeCandidates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFromPenSelection:Z

.field mLastCandidateIndex:I

.field final mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

.field private mPreviousStrongCandidateCount:I

.field private mPreviousStrongCandidateFirstIndex:I

.field private mScreenHeight:F

.field private mScrollDirection:I

.field private mScrollSpeed:F

.field private mScrollableHeight:F

.field mSelectStartItem:I

.field final mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

.field private final mStartPos:Landroid/graphics/PointF;

.field private mState:I

.field private final mStrongCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mTabHeight:F

.field private final mWinners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->SCROLL_VELOCITY:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mState:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollSpeed:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateFirstIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFreeCandidates:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidateComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    return-void
.end method

.method private FindStrongCandidatesByFingerMultiSelection()V
    .locals 11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidateComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    if-gt v9, v10, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    :goto_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    if-le v9, v10, :cond_6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_f

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v9

    if-gt v5, v9, :cond_3

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v9

    if-gt v9, v6, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    goto :goto_2

    :cond_6
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    goto :goto_3

    :cond_7
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    move v5, v6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->isExtendingUpward()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v9, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRealRect(I)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_a

    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_8

    move v5, v3

    goto :goto_3

    :cond_a
    move v5, v3

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v8, -0x1

    :goto_6
    if-ltz v2, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v9, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRealRect(I)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_d

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_d
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_e

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c

    move v6, v3

    goto/16 :goto_3

    :cond_e
    move v6, v3

    goto/16 :goto_3

    :cond_f
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9
.end method

.method private applyWinners()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getRenewalType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v3

    invoke-interface {v2, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectItem(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getRenewalType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectItem(IZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private arrangeWinners()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getRenewalType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private decideWinners()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-ne v1, v0, :cond_0

    if-eq v2, v5, :cond_5

    :cond_0
    if-ne v1, v0, :cond_1

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v6

    if-ne v7, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v6

    if-ge v7, v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private isAlreadyCandidate(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized isSelecting()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private selectWinner()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidateComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidateComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->decideWinners()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->applyWinners()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->arrangeWinners()V

    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateEndPos(FFLcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    instance-of v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->update(Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    goto :goto_0
.end method

.method private updateInvalidCandidatesRect(II)V
    .locals 3

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getRenewalType()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRect(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateInvalidCandidatesType(IILandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRealRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollingUp()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    goto :goto_1
.end method

.method private updateMoveVector(FF)V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mActionBarHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mTabHeight:F

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mActionBarHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mTabHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollableHeight:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->SCROLL_VELOCITY:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollSpeed:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScreenHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollableHeight:F

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->SCROLL_VELOCITY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollSpeed:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollSpeed:F

    goto :goto_0
.end method

.method private updateStartPos(FF)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->update(Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private updateValidCandidatesRect(II)V
    .locals 4

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method FindStrongCandidates()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-eqz v0, :cond_0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->meet(Landroid/graphics/Rect;)Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->FindStrongCandidatesByFingerMultiSelection()V

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method createActiveCandidate(III)V
    .locals 5

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    invoke-static {p1, p3}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v3

    move v2, v1

    :goto_0
    if-gt v2, v3, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isAlreadyCandidate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFreeCandidates:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-direct {v0, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;I)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFreeCandidates:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setIndex(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getScrollSpeed()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollSpeed:F

    return v0
.end method

.method public getSelectRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isActivated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFromPenSelection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingDown()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingUp()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->setState(I)V

    return-void
.end method

.method prepareActiveCandidate()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getFirstItem()I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getLastItem()I

    move-result v7

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v1, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->createActiveCandidate(III)V

    :cond_0
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    if-le v8, v4, :cond_2

    :cond_1
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    :cond_2
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    if-ge v8, v7, :cond_4

    :cond_3
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    :cond_4
    return-void

    :cond_5
    move v0, v1

    :goto_0
    if-gt v0, v2, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getAlbumCount(I)I

    move-result v3

    if-ne v0, v1, :cond_6

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->createActiveCandidate(III)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v0, v10, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->createActiveCandidate(III)V

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v0, v10, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->createActiveCandidate(III)V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->setState(I)V

    :cond_0
    return-void
.end method

.method public scroll(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStartPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateStartPos(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemIndex(II)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mEndPosIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->select(Z)V

    return-void
.end method

.method public select(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->pause()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateCandidatesRect()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->prepareActiveCandidate()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->FindStrongCandidates()V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->selectActiveCandidate(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectComplete(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectComplete(Z)V

    goto :goto_0
.end method

.method selectActiveCandidate(Z)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateCount:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateFirstIndex:I

    if-eq v2, v3, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->selectWinner()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateFirstIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public start(IILcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mPreviousStrongCandidateFirstIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstCandidateIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mLastCandidateIndex:I

    instance-of v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    :cond_0
    :goto_0
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateStartPos(FF)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateEndPos(FFLcom/sec/android/gallery3d/glcore/GlObject;)V

    instance-of v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->resume()V

    return-void

    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFirstIndex:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mWinners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mFreeCandidates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mIsFromPenSelection:Z

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->setState(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mStrongCandidatesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public update(FFLcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateEndPos(FFLcom/sec/android/gallery3d/glcore/GlObject;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateMoveVector(FF)V

    return-void
.end method

.method updateCandidatesRect()V
    .locals 14

    const/4 v13, -0x1

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    if-ne v10, v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollable()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getFirstItem()I

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getLastItem()I

    move-result v7

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getColumn()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getAlbumCount(I)I

    move-result v0

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    sub-int v10, v0, v5

    add-int/lit8 v2, v10, 0x1

    if-gt v1, v2, :cond_2

    move v3, v1

    :goto_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    rem-int v8, v5, v1

    if-nez v8, :cond_3

    move v6, v1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollingUp()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->isExtendingUpward()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int v10, v4, v3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    add-int/lit8 v12, v7, -0x1

    invoke-interface {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    if-eq v10, v13, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    sub-int v11, v7, v6

    if-lt v10, v11, :cond_0

    sub-int v10, v7, v6

    add-int/lit8 v11, v7, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateValidCandidatesRect(II)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    add-int v10, v4, v3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    add-int/lit8 v12, v7, -0x1

    invoke-interface {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v4, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    add-int v10, v4, v3

    invoke-direct {p0, v4, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesRect(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollingDown()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->isExtendingUpward()Z

    move-result v10

    if-eqz v10, :cond_6

    sub-int v10, v7, v6

    add-int/lit8 v11, v7, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v12, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    sub-int v10, v7, v6

    add-int/lit8 v11, v7, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesRect(II)V

    goto/16 :goto_0

    :cond_6
    sub-int v10, v7, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v11, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v10, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    if-eq v10, v13, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectStartItem:I

    add-int v11, v4, v3

    if-ge v10, v11, :cond_0

    add-int v10, v4, v3

    invoke-direct {p0, v4, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateValidCandidatesRect(II)V

    goto/16 :goto_0
.end method

.method public updateScreen(FFFFFLandroid/content/Context;)V
    .locals 2

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScreenHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->setScreenSize(F)V

    invoke-static {p6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWvga(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isUnderWvga(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p2

    div-float/2addr v1, p3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mScrollableHeight:F

    iput p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mTabHeight:F

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mActionBarHeight:F

    cmpg-float v1, p2, p1

    if-gez v1, :cond_2

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->SCROLL_VELOCITY:I

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x64

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->SCROLL_VELOCITY:I

    goto :goto_1
.end method
