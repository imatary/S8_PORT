.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;
.super Ljava/lang/Object;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetainRect"
.end annotation


# instance fields
.field cropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 6

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public fliph()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v3, v4, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public flipv()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v5, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public rotate()V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, v4, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v3, v4, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$RetainRect;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
