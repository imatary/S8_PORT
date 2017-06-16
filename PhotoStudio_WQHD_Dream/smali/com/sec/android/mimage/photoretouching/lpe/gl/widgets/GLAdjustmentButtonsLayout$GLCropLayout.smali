.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLAdjustmentButtonsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLCropLayout"
.end annotation


# instance fields
.field private cropHeight:I

.field private cropWidth:I

.field private iconBottomMargin:I

.field private mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mSelectedState:I

.field private mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mSelectionMargin:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    return-void
.end method


# virtual methods
.method public initChildren()V
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    invoke-virtual {v1, v6, v6, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/16 v2, 0x7f

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/16 v2, 0x40

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onPressed(I)V
    .locals 7

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectedState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v1

    aget v1, v1, v0

    if-ge v0, v1, :cond_0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v1

    aget v1, v1, v0

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    goto :goto_1
.end method

.method public onReleased()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mHighLight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    return-void
.end method

.method public setSelection(I)V
    .locals 7

    const/4 v0, 0x0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectedState:I

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v1

    aget v1, v1, v0

    if-ge v0, v1, :cond_0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$300()[I

    move-result-object v1

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelection:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropWidth:I

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->cropHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->iconBottomMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->mSelectionMargin:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    goto :goto_1
.end method
