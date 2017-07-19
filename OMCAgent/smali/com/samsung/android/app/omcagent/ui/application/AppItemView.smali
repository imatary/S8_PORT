.class public Lcom/samsung/android/app/omcagent/ui/application/AppItemView;
.super Landroid/widget/LinearLayout;
.source "AppItemView.java"


# instance fields
.field appItem:Lcom/samsung/android/app/omcagent/ui/application/AppItem;

.field cancelClickListener:Landroid/view/View$OnClickListener;

.field mCancelBtn:Landroid/widget/ImageView;

.field mCheckBox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field mIconView:Landroid/widget/ImageView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgressLayout:Landroid/widget/FrameLayout;

.field mSizeStateLayout:Landroid/widget/LinearLayout;

.field mSizeView:Landroid/widget/TextView;

.field mStateView:Landroid/widget/TextView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemView;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemView;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private assignView()V
    .locals 1

    const v0, 0x7f0e000f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mSizeView:Landroid/widget/TextView;

    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mStateView:Landroid/widget/TextView;

    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCancelBtn:Landroid/widget/ImageView;

    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mSizeStateLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mProgressLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method private setVisible(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateView(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->appItem:Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->assignView()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getContentSize()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->calDisplaySize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mStateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->getStateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleInstallingProgress()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getDownloadPercent()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleSizeVisibility()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mStateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleStateVisibility()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mSizeStateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleSizeVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleStateVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mProgressLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleSizeVisibility()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleStateVisibility()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCancelBtn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCancelBtn()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mCancelBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method
