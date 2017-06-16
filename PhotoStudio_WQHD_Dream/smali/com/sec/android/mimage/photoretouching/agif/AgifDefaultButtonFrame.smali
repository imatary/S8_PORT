.class public abstract Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;
.super Landroid/widget/LinearLayout;
.source "AgifDefaultButtonFrame.java"


# instance fields
.field public isAddBtn:Z

.field protected ivRemove:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconView:Landroid/widget/ImageView;

.field private mId:I

.field private mLayout:Landroid/widget/LinearLayout;

.field private mTextId:I

.field private mTextName:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field protected removeFrameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->removeFrameLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->isAddBtn:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->removeFrameLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->isAddBtn:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->removeFrameLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->isAddBtn:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public configurationChanged()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getButtonIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getButtonId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v1, 0x7f030038

    invoke-static {v0, v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextName:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method public initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 4

    const v3, 0x7f0700ce

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mId:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextId:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e024f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->removeFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public keyboardFocusedIndex()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAddIcon()V
    .locals 8

    const v7, 0x7f0700ad

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080525

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v6, 0x7f020455

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e00da

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v5, 0x7f02073c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v6, 0x7f070090

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v6, 0x7f0703a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->isAddBtn:Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCheckBoxVisibility(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0071

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setContentDescriptionForAddButton()V
    .locals 5

    const v4, 0x7f0700ad

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e00da

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v4, 0x7f070090

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v4, 0x7f0703a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentDescriptionForDeleteButton()V
    .locals 4

    const v3, 0x7f0700ce

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentDescriptionForImageIcon()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    const v2, 0x7f0703aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->isSelected()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRemoveButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->ivRemove:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->removeFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setRequestFocus(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchCallback(Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/AgifMyButtonInterface;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener$DefaultTouchInterface;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/agif/DefaultButtonsListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
