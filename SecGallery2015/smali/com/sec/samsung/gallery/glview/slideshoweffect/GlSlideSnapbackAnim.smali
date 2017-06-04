.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlSlideSnapbackAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;
    }
.end annotation


# static fields
.field public static final SNAPBACK_ANIMATION_TIME:I = 0xfa


# instance fields
.field private mCurrentXinSpace:F

.field private mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

.field private mMoveDirection:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

.field private mStartX:F

.field private mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

.field private final mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-void
.end method

.method private onUpdate(F)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideSnapbackAnim$TransitionType:[I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mMoveDirection:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mCurrentXinSpace:F

    mul-float v1, p1, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    sub-float/2addr v3, v0

    add-float/2addr v3, v1

    sget v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->IMAGE_GAP:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    sub-float v3, v1, v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mCurrentXinSpace:F

    mul-float v1, p1, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    neg-float v3, v3

    sub-float v4, v0, v1

    add-float/2addr v3, v4

    sget v4, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->IMAGE_GAP:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    sub-float v3, v0, v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->onUpdate(F)V

    return-void
.end method

.method public setDeltaMoved(F)V
    .locals 4

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mStartX:F

    add-float v1, v2, p1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    mul-float v2, v1, v0

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mCurrentXinSpace:F

    return-void
.end method

.method public setDurationObject(JLcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setDuration(J)V

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mFromGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iput-object p4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mToGlObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    const/16 v0, -0x1a

    if-ne p5, v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mMoveDirection:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mMoveDirection:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    goto :goto_0
.end method

.method public setMoveStartPos(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->mStartX:F

    return-void
.end method
