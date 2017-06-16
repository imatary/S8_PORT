.class public abstract Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;
.super Landroid/widget/LinearLayout;
.source "DefaultButtonFrame.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconView:Landroid/widget/ImageView;

.field private mId:I

.field private mLayout:Landroid/widget/LinearLayout;

.field private mTextId:I

.field private mTextName:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextId:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->init()V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getButtonIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getButtonId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextId:I

    return v0
.end method

.method protected gettGifTextVisibility()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0429

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    const v1, 0x7f0300c6

    invoke-static {v0, v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public initButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mId:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e024f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected setCheckBoxVisibility(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

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

.method protected setGifTextVisibility(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0429

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTouchCallback(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButtonInterface;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->mDefaultButtonListener:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonFrame;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
