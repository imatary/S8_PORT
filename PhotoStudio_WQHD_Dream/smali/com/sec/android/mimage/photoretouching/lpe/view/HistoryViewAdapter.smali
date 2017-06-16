.class public Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;
.super Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;
.source "HistoryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;
    }
.end annotation


# static fields
.field public static CARD_VIEW_HEIGHT:I

.field public static CARD_VIEW_WIDTH:I


# instance fields
.field private context:Landroid/content/Context;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private labels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    return-void
.end method

.method private updateLabelFromState(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f07019e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f070323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f070258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f07031d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f0700ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f0700e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f0700c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v1, 0x7f07003c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_5
        0x90000 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCoverFlowItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;

    :goto_0
    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealWidthItem(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealHeightItem(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->requestLayout()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->getHistoryIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getItem(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealWidthItem(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealHeightItem(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;->getHistorylabel()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "sec-roboto-condensed"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCoverFlowLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "#252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter$HistoryItemView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getCoverFlowLabel(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getItem(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMaxHeight()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealHeightItem(I)I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealHeightItem(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getRealHeightItem(I)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getRealHeightItem(I)I
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    int-to-float v5, v5

    div-float v3, v4, v5

    int-to-float v4, v2

    int-to-float v5, v0

    div-float v1, v4, v5

    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    :goto_0
    return v4

    :cond_0
    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    goto :goto_0

    :cond_1
    div-float v4, v6, v1

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    goto :goto_0
.end method

.method public getRealWidthItem(I)I
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    int-to-float v5, v5

    div-float v3, v4, v5

    int-to-float v4, v2

    int-to-float v5, v0

    div-float v1, v4, v5

    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    :goto_0
    return v4

    :cond_0
    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    goto :goto_0

    :cond_1
    div-float v4, v6, v1

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    goto :goto_0
.end method

.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    return-void
.end method

.method public removeData(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSizeItem(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_HEIGHT:I

    return-void
.end method

.method public updateData(Landroid/graphics/Bitmap;II)V
    .locals 6

    const/4 v5, 0x0

    if-ge p2, p3, :cond_0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p2

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v1, v1

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    invoke-static {p1, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->labels:Ljava/util/ArrayList;

    const v2, 0x7f07019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateData([III)V
    .locals 9

    const/4 v2, 0x0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-ge p2, p3, :cond_0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v3, v3

    int-to-float v4, p3

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_1

    :goto_1
    return-void

    :cond_0
    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    int-to-float v1, v1

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->CARD_VIEW_WIDTH:I

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->updateLabelFromState(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
