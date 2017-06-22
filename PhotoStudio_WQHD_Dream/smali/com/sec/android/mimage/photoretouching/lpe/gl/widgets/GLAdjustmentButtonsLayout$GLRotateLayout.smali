.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLAdjustmentButtonsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRotateLayout"
.end annotation


# instance fields
.field private mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    return-void
.end method


# virtual methods
.method public initChildren()V
    .locals 8

    const/4 v7, 0x0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v3, v7, v7, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mBackground:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->ROTATE_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$600()[I

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->ROTATE_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$600()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->ROTATE_BUTTONS:[I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$600()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-direct {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    aget-object v3, v3, v0

    mul-int v4, v2, v0

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, -0x4

    div-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v7, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    aget-object v3, v3, v0

    mul-int v4, v2, v0

    div-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v7, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v3

    aget-object v3, v3, v0

    mul-int v4, v2, v0

    div-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v2, 0x4

    invoke-virtual {v3, v4, v7, v5, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method
