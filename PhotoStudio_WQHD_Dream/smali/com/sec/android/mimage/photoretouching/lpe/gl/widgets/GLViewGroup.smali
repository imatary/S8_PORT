.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
.source "GLViewGroup.java"


# instance fields
.field protected mChildren:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;",
            ">;"
        }
    .end annotation
.end field

.field private touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParent(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParentAnim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public cleanUp()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->cleanUp()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearTouch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    :cond_0
    return-void
.end method

.method public declared-synchronized draw()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public abstract initChildren()V
.end method

.method protected onAnimationEnd()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onAnimationEnd()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParentAnim(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onAnimationStart()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParentAnim(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public onSurfaceChanged()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onSurfaceChanged()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onSurfaceChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    if-eqz v0, :cond_6

    :goto_2
    move v3, v2

    goto :goto_0

    :pswitch_0
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->performClick()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v0, v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized removeAllViews()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public removeView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->cleanUp()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    return-void
.end method

.method protected setParentAnim(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParentAnim(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setParentAnim(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSize(IIII)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setSize(IIIIZ)V

    return-void
.end method

.method public declared-synchronized setSize(IIIIZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setSize(IIII)V

    if-eqz p5, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setSize(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
