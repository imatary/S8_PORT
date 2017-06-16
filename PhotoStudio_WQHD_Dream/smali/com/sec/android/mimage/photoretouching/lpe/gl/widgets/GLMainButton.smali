.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLMainButton.java"


# instance fields
.field private mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    return-void
.end method


# virtual methods
.method public initChildren()V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->initSizes()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    return-void
.end method

.method public initSizes()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080448

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080446

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080445

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    div-int/lit8 v4, v2, 0x2

    add-int v5, v1, v0

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setSize(IIII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v3, v6, v6, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->initSizes()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setEnabled(Z)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setPressed(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mImageButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButton;->mTextView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLTextView;->setSelected(Z)V

    return-void
.end method
