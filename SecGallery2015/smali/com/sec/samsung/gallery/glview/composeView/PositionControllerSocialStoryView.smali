.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;
.source "PositionControllerSocialStoryView.java"


# instance fields
.field private mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 6

    const/4 v5, 0x0

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updatePos(I)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iput v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    iput v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    return-void

    :cond_2
    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v6, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v7, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v5, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v3, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapW:F

    add-int/lit8 v10, v4, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    int-to-float v9, v4

    div-float v2, v8, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height:I

    :goto_0
    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->convY(I)F

    move-result v1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapH:F

    add-float v0, v1, v8

    iput v0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lez v8, :cond_0

    aput v12, v6, v11

    aput v12, v7, v11

    aput v2, v5, v11

    aput v1, v3, v11

    aget v8, v6, v11

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    aget v8, v7, v11

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    aget v8, v5, v11

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    aget v8, v3, v11

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    :cond_0
    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    return v8

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v8, v8, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height_land:I

    goto :goto_0
.end method

.method fitToLine()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, v0

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v5, :cond_0

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v4, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    add-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    sub-float v4, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-boolean v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mUseParentThumbTouchAnim:Z

    const v2, 0x3f7c28f6    # 0.985f

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setThumbPressScale(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getGernericMotionHLVideoIconListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setHLVGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iput-boolean v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iput-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    return-void
.end method

.method public resetAttributes(Z)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryViewDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v4, v4, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_gap:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapWPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v4, v4, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_gap:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapHPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v4, v4, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_top_margin:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraMarginTopPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraMarginTopPixel:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->getNotificationHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMarginTopPixel:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMarginLeftPixel:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMarginRightPixel:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->resetValues(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->GRID_COLCNT_PORT:[I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mLevel:I

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapW:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemW:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v4, v4, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->convY(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemH:F

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mSpaceWidth:F

    neg-float v4, v4

    div-float/2addr v4, v8

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargLeft:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemW:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemSx:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mEventItemPositions:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v7, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->GRID_COLCNT_LAND:[I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mLevel:I

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->convX(I)F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    int-to-float v5, v5

    div-float v1, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidW:F

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDimen:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget v4, v4, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height_land:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->convY(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemH:F

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public resetPosition()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupCount:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-le v4, v7, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    rem-int v4, v1, v4

    if-nez v4, :cond_2

    :cond_1
    add-float/2addr v3, v2

    iput v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    :goto_2
    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemGapW:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    rem-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollableMax:F

    :goto_3
    return-void

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollableMax:F

    goto :goto_3
.end method

.method protected resetValues(Z)V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->resetValues(Z)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->GRID_COLCNT_PORT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->GRID_COLCNT_LAND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method public setVisibleRange()V
    .locals 18

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupCount:I

    add-int/lit8 v10, v15, -0x1

    move v9, v10

    move v7, v10

    move v6, v10

    move v5, v10

    move v14, v10

    move v13, v10

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupCount:I

    if-ge v4, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v4

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    move/from16 v16, v0

    sub-float v11, v15, v16

    if-ge v4, v6, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraTop:F

    cmpg-float v15, v15, v11

    if-gtz v15, :cond_0

    move v6, v4

    :cond_0
    if-ge v4, v9, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargTop:F

    neg-float v15, v15

    cmpg-float v15, v15, v11

    if-gtz v15, :cond_1

    move v9, v4

    :cond_1
    if-ge v4, v14, :cond_2

    const/4 v15, 0x0

    cmpg-float v15, v15, v11

    if-gtz v15, :cond_2

    move v14, v4

    :cond_2
    if-ne v7, v10, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargBtm:F

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v15, v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mIsTablet:Z

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int/2addr v15, v4

    add-int/lit8 v7, v15, 0x1

    :goto_1
    if-le v7, v10, :cond_3

    move v7, v10

    :cond_3
    if-ne v13, v10, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v15, v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mIsTablet:Z

    if-eqz v15, :cond_7

    add-int/lit8 v13, v4, 0x1

    :goto_2
    if-le v13, v10, :cond_4

    move v13, v10

    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraBtm:F

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v9

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargTop:F

    neg-float v15, v15

    cmpl-float v15, v2, v15

    if-lez v15, :cond_9

    const/4 v8, 0x0

    :goto_3
    invoke-static {v9, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpActiveStart:I

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpVisibleStart:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v7

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargBtm:F

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_b

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpActiveEnd:I

    invoke-static {v13, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpVisibleEnd:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v6

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraTop:F

    cmpl-float v15, v2, v15

    if-lez v15, :cond_e

    const/4 v8, 0x0

    :goto_5
    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v15, v5

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mScrollable:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraBtm:F

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_10

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_6
    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGrpContentEnd:I

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int v7, v4, v15

    goto/16 :goto_1

    :cond_7
    move v13, v4

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargTop:F

    add-float/2addr v15, v2

    neg-float v12, v15

    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gtz v15, :cond_a

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_a
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mTitleH:F

    move/from16 v16, v0

    add-float v15, v15, v16

    div-float v15, v12, v15

    float-to-int v8, v15

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v8, v15

    goto/16 :goto_3

    :cond_b
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mValidH:F

    move/from16 v16, v0

    sub-float v16, v2, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mMargBtm:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    sub-float v12, v15, v16

    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gtz v15, :cond_c

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v15, v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v15, :cond_d

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v12, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    :goto_7
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v15, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_4

    :cond_d
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v12, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/lit8 v8, v15, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraTop:F

    sub-float v12, v15, v2

    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gtz v15, :cond_f

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_f
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v12, v15

    float-to-int v8, v15

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v8, v15

    goto/16 :goto_5

    :cond_10
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mExtraBtm:F

    move/from16 v16, v0

    sub-float v16, v2, v16

    sub-float v12, v15, v16

    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gtz v15, :cond_11

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v15, v15, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v15, :cond_12

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v12, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    :goto_8
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v15, v8

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_6

    :cond_12
    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v15, v12, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    add-int/lit8 v8, v15, 0x1

    goto :goto_8
.end method

.method updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v1, v0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-le v1, v3, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-le v1, v5, :cond_3

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-le v1, v3, :cond_4

    if-ne v0, v3, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-le v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-le v1, v3, :cond_5

    if-ne v0, v5, :cond_5

    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    if-le v1, v3, :cond_6

    if-ne v0, v4, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroupLineCount:I

    sub-int/2addr v0, v1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateHLVideoIcon(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateChannelViewHLPlayIcon(II)V

    goto :goto_0
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 8

    const/4 v3, 0x0

    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v6, v0, v1

    iget v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v4, v4, v3

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v3

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mDisplaySelectedCount:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v4, -0x1

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setAlbumWidth(F)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {p1, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    const/4 v3, 0x1

    goto :goto_0
.end method
