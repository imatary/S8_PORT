.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLSubButton.java"


# instance fields
.field private mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public initChildren()V
    .locals 11

    const/4 v10, 0x0

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mId:I

    invoke-direct {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mId:I

    invoke-direct {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080474

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080471

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080473

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080470

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080472

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08047b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v6, v2, v3, v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->getWidth()F

    move-result v7

    float-to-int v7, v7

    mul-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->getHeight()F

    move-result v8

    float-to-int v8, v8

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6, v5, v5, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mId:I

    invoke-direct {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    add-int v8, v1, v3

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8, v10, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setSize(IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

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

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mSelectedBg:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
