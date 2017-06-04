.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;
.source "PositionControllerListAlbum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;-><init>()V

    return-void
.end method

.method private calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 11

    const/4 v8, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    iget-object v5, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v6, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    move v1, v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumThumbMarg:F

    mul-float/2addr v7, v10

    add-float v0, v1, v7

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lez v7, :cond_1

    aput v8, v5, v9

    aput v8, v6, v9

    aput v2, v4, v9

    aput v1, v3, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargRight:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mCheckW:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    :goto_0
    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_0

    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    neg-float v7, v7

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    :cond_0
    aget v7, v6, v9

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargRight:F

    add-float/2addr v7, v8

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    :cond_1
    iget v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    return v7

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargRight:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mCheckW:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumMargRight:F

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargRight:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iput v7, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    goto :goto_0
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method protected applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->setThumbObjectCanvas(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTexCoords(FFFF)V

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAlbumRoundRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAlbumRoundRadius:F

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundRadius(F)V

    :cond_2
    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    iput-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderEnable:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelectEnable:Z

    iput-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectEnable:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    iput v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    :cond_3
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-boolean v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectEnable:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(F)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_2
.end method

.method public getCenteredScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v0, p1, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    goto :goto_0
.end method

.method public isListAlbumLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resetAttributes(Z)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b031b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mExtraMarginTopPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mExtraMarginTopPixel:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getNotificationHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v2

    :goto_1
    add-int/2addr v2, v4

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginTopPixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mExtraMarginTopPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginBottomPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b030f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginLeftPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0312

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginRightPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0318

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAlbumTitleTextMarginLeftPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0313

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumThumbMarginPixel:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupVGapPixel:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->isVisibleSelectionBuffer()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginTopPixel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMarginTopPixel:I

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v2, :cond_8

    const v1, 0x7f0b004a

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleTextMarginBottom:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemGapWPixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemGapWPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemGapHPixel:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->resetValues(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->GRID_COLCNT:[I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mPhotoLineCount:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getGroupLineCount(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0b0314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->convX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumThumbMarg:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListH:F

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumMargRight:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mSpaceWidth:F

    neg-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumTitleMargLeft:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mCheckW:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemSx:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mCheckW:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    :goto_3
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemSx:F

    neg-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemSx:F

    :cond_6
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mSpaceHeight:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemH:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListAlbumThumbMarg:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemSy:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListH:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->rConvX(F)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleWidthPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsW:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->rConvY(F)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleHeightPixel:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsH:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAlbumRoundRadius:F

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_1

    :cond_8
    const v1, 0x7f0b005a

    goto/16 :goto_2

    :cond_9
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mSpaceWidth:F

    neg-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMargLeft:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemSx:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    goto :goto_3
.end method

.method public resetNewPosition()V
    .locals 11

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b032d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->convY(I)F

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v9

    add-float/2addr v9, v3

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v7, v1

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iput v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v7

    if-lt v1, v7, :cond_2

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v10

    sub-float/2addr v9, v10

    add-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v7, v1, v7

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    add-int/lit8 v9, v9, -0x1

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_4

    :cond_3
    add-float/2addr v6, v5

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    add-float/2addr v4, v5

    :cond_4
    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v9, v1, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v9, v1, v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_6
    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    sub-int v2, v7, v9

    if-gtz v2, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->isHideAlbumMode()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_8
    move v7, v8

    :goto_2
    sub-float v7, v9, v7

    add-float/2addr v6, v7

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v7

    if-nez v7, :cond_a

    sub-float/2addr v6, v4

    :cond_a
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidH:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_c

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    :goto_3
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v7

    goto :goto_2

    :cond_c
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidH:F

    sub-float v7, v6, v7

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemGapH:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    goto :goto_3
.end method

.method public resetPosition()V
    .locals 11

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mResource:Landroid/content/res/Resources;

    const v9, 0x7f0b032d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->convY(I)F

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v9

    add-float/2addr v9, v3

    iput v9, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v7, v1

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v5

    iput v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v7

    if-lt v1, v7, :cond_2

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v10

    sub-float/2addr v9, v10

    add-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v7, v1, v7

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    add-int/lit8 v9, v9, -0x1

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_4

    :cond_3
    add-float/2addr v6, v5

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    add-float/2addr v4, v5

    :cond_4
    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v9, v1, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupLineCount:I

    rem-int v9, v1, v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_6
    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroupCount:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v9

    sub-int v2, v7, v9

    if-gtz v2, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->isHideAlbumMode()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v9, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_8
    move v7, v8

    :goto_2
    sub-float v7, v9, v7

    add-float/2addr v6, v7

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v7

    if-nez v7, :cond_a

    sub-float/2addr v6, v4

    :cond_a
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidH:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_c

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    :goto_3
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getAlbumDividerY()F

    move-result v7

    goto :goto_2

    :cond_c
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mValidH:F

    sub-float v7, v6, v7

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemGapH:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mScrollableMax:F

    goto :goto_3
.end method

.method public setToCurrentCtrl()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->setToCurrentCtrl()V

    return-void
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 12

    iget v11, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v10, v0, v1

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v3, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v3, v3, v2

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v3, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v3, v3, v2

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAlbumTitleTextMarginLeftPixel:I

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleLeftMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mDisplaySelectedCount:Z

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->rConvX(F)I

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->rConvY(F)I

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->rConvY(F)I

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsListAlbumLayout:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsCheckMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemH:F

    invoke-virtual {p1, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTitleVisible:Z

    if-eqz v0, :cond_7

    iget-object v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsH:I

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    invoke-virtual {v8, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    add-float/2addr v0, v3

    neg-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v5, -0x1

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    if-nez v9, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mItemW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleW:F

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mListH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsW:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->mTitleCanvsH:I

    invoke-virtual {v9, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setSize(II)V

    const/4 v0, 0x2

    const/4 v3, 0x2

    invoke-virtual {v9, v0, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setAlign(II)V

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
