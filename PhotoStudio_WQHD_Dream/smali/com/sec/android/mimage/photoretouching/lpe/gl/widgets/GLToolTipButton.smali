.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLToolTipButton.java"


# instance fields
.field private mBGView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public initChildren()V
    .locals 12

    const v10, 0x7f080487

    const/4 v11, 0x0

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mId:I

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mId:I

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mId:I

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mBGView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080473

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080470

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080472

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08047b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v7, v2, v3, v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080488

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mBGView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v7, v11, v11, v6, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->getWidth()F

    move-result v8

    float-to-int v8, v8

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->getHeight()F

    move-result v9

    float-to-int v9, v9

    mul-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v7, v5, v5, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mBGView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v7, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mId:I

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v2

    add-int v9, v1, v3

    add-int/2addr v9, v0

    invoke-virtual {v7, v8, v9, v11, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setSize(IIII)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setPressed(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
