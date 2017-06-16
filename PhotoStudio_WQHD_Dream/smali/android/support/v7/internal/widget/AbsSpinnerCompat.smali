.class abstract Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.super Landroid/support/v7/internal/widget/AdapterViewCompat;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;,
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/widget/AdapterViewCompat",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v6, v0, :cond_5

    :goto_0
    iput v6, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v8, v0, :cond_6

    :goto_1
    iput v8, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v7, v0, :cond_7

    :goto_2
    iput v7, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v5, v0, :cond_8

    :goto_3
    iput v5, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->handleDataChanged()V

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v11

    if-ltz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v15}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v15

    if-ge v11, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v15, v11}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v15, v11, v0, v1}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    :cond_1
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v15, v11, v12}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v12, v1, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildHeight(Landroid/view/View;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v9, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildWidth(Landroid/view/View;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    const/4 v4, 0x0

    :cond_3
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v9, v15, v16

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-static {v9, v0, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-static {v10, v0, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mHeightMeasureSpec:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mWidthMeasureSpec:I

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iput-boolean v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    iput-boolean v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncRowId:J

    iget v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncMode:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    iget v3, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v2, v3, v1

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    iput v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldItemCount:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    new-instance v1, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;-><init>(Landroid/support/v7/internal/widget/AdapterViewCompat;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectionInt(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    sub-int v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method
