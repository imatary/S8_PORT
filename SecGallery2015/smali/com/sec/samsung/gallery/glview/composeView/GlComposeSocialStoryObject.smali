.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeSocialStoryObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;
    }
.end annotation


# instance fields
.field private mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mDividerColor:I

.field private mDividerHeight:F

.field private mGapSizePixel:I

.field private mIconSizePixel:I

.field private mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)V
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setEmptyFill(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setUseTouchEvent(Z)V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIndex:I

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->initChildren(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->initDimension()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)V

    return-void
.end method

.method private convX(I)F
    .locals 2

    int-to-float v1, p1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private convY(I)F
    .locals 2

    int-to-float v1, p1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private initChildren(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private initDimension()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryDetailDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    move-result-object v0

    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_divider_size:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_divider_color:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerColor:I

    return-void
.end method

.method private updateCommentCount(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->getWidth(Z)F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private updateLastComment(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLastCommentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private updateLikeByMe(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v1

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeByMe:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createLikeCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->getWidth(Z)F

    move-result v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createUnLikeCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    goto :goto_0
.end method

.method private updateLikeCount(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mLikeCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->getWidth(Z)F

    move-result v3

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mCommentCountObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private updateOwnerInfo(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 6

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mOwnerInfoObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convX(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->getWidth(Z)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method


# virtual methods
.method update(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setSize(FF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerColor:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setEmptyFillColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mIconSizePixel:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mGapSizePixel:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->convY(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->mDividerHeight:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v3, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setPos(FFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->updateOwnerInfo(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->updateCommentCount(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->updateLikeCount(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->updateLikeByMe(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->updateLastComment(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    :cond_0
    return-void
.end method
