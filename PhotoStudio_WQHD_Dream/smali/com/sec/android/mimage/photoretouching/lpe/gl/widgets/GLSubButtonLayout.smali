.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLSubButtonLayout.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# instance fields
.field private clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

.field private effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

.field private mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mCachedButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;",
            ">;"
        }
    .end annotation
.end field

.field private mIconBottomMargin:I

.field private mIconHeight:I

.field private mIconSideMargin:I

.field private mIconTopMargin:I

.field private mIconWidth:I

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mState:I

.field private mTextHeight:I

.field private mThumbnailHeight:I

.field private mThumbnailMargin:I

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mTextHeight:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;IIII)V
    .locals 6

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mTextHeight:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    return v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080474

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080471

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080472

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconSideMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconBottomMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080473

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconTopMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailMargin:I

    return-void
.end method


# virtual methods
.method public declared-synchronized draw()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->draw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayoutHeight(I)I
    .locals 3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x800

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconHeight:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconTopMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconBottomMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mTextHeight:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailHeight:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutWidth()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080441

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    goto :goto_0
.end method

.method public initChildren()V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    return-void
.end method

.method public onEffectThumbsUpdated()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    and-int/lit16 v0, v0, -0x100

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->reloadThumbs()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChange(II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x1000

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->clearSelection()V

    :cond_0
    const/16 v0, 0x809

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x80000

    if-ne p2, v0, :cond_3

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->setSelection(I)V

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-nez v0, :cond_6

    and-int/lit16 v0, p2, -0x100

    if-eq v0, v2, :cond_4

    const/16 v0, 0x100

    if-ne p2, v0, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->updateUI(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->updateUI(I)V

    goto :goto_0
.end method

.method public onSurfaceChanged()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->onSurfaceChanged()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->onSurfaceChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mChildren:Ljava/util/Vector;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->onSurfaceChanged()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    and-int/lit16 v0, v0, -0x100

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reloadEffects()V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setState(IZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public declared-synchronized removeAllViews()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    return-void
.end method

.method public setState(IZ)V
    .locals 33

    move/from16 v0, p1

    and-int/lit16 v0, v0, -0x100

    move/from16 v26, v0

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    and-int/lit16 v6, v6, -0x100

    move/from16 v0, v26

    if-eq v0, v6, :cond_7

    :cond_0
    sparse-switch v26, :sswitch_data_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    if-ne v6, v8, :cond_8

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setSelected(Z)V

    goto :goto_1

    :sswitch_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mChildren:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLeft()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLeft()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getTop()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getTop()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getHeight()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLeft()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getTop()F

    move-result v12

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->startAnimation()V

    goto :goto_0

    :sswitch_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    sget-boolean v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v0, v26

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrder(ILandroid/content/Context;)[I

    move-result-object v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconSideMargin:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mIconWidth:I

    add-int v17, v6, v7

    move/from16 v16, v17

    if-nez v18, :cond_3

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, v18

    array-length v6, v0

    mul-int v30, v17, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLayoutWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v0, v26

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrder(ILandroid/content/Context;)[I

    move-result-object v15

    if-eqz v15, :cond_2

    array-length v0, v15

    move/from16 v25, v0

    mul-int v6, v17, v25

    sub-int v6, v23, v6

    div-int/lit8 v28, v6, 0x2

    move/from16 v20, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    sub-int v29, v6, v20

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v0, v28

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v29

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getHeight()F

    move-result v10

    add-float/2addr v9, v10

    move/from16 v0, v29

    int-to-float v10, v0

    move/from16 v0, v28

    int-to-float v11, v0

    move/from16 v0, v29

    int-to-float v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->startAnimation()V

    new-instance v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mId:I

    invoke-direct {v13, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v13, v6, v7, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    const/4 v6, -0x1

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v6, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    aget v7, v18, v21

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    aget v7, v18, v21

    new-instance v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    aget v10, v18, v21

    invoke-direct {v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v19, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mCachedButtons:Landroid/util/SparseArray;

    aget v7, v18, v21

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {v14, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    mul-int v24, v17, v21

    const/16 v29, 0x0

    move/from16 v32, v17

    move/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v32

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->setSize(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    if-nez v19, :cond_5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->initChildren()V

    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :sswitch_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v0, v26

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrder(ILandroid/content/Context;)[I

    move-result-object v18

    mul-int/lit8 v6, v27, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mThumbnailWidth:I

    add-int v17, v6, v7

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int v30, v17, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLayoutWidth()I

    move-result v23

    move/from16 v0, v30

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLayoutHeight(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getLayoutWidth()I

    move-result v6

    sub-int v6, v6, v30

    div-int/lit8 v28, v6, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    sub-int v29, v6, v22

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move/from16 v0, v22

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v0, v28

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v29

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->getHeight()F

    move-result v10

    add-float/2addr v9, v10

    move/from16 v0, v29

    int-to-float v10, v0

    move/from16 v0, v28

    int-to-float v11, v0

    move/from16 v0, v29

    int-to-float v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setDuration(I)V

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    if-nez v6, :cond_6

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->clickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    move/from16 v8, v26

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILandroid/graphics/Bitmap;ILcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->initChildren()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->effectThumbs:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->init(Landroid/graphics/Bitmap;I)V

    goto :goto_4

    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setVisible(Z)V

    return-void
.end method

.method public updateUI(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setState(IZ)V

    return-void
.end method
