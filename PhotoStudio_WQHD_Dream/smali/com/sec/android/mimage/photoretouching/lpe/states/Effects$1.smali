.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->initEffectCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isEffectCheckEnable:Z

.field public tempIndex:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->isEffectCheckEnable:Z

    return-void
.end method


# virtual methods
.method public getPreviewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_EFFECTS:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_EFFECTS_CHANGE:Ljava/lang/String;

    const-string v2, "Change effect"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMove(F)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->tempIndex:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    mul-int/2addr v6, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int v5, v3

    :goto_1
    add-int v4, v6, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v1

    cmpg-float v5, p1, v7

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    sub-int v1, v5, v4

    :cond_2
    :goto_2
    int-to-float v5, v4

    int-to-float v6, v1

    mul-float/2addr v6, p1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move v5, v3

    goto/16 :goto_1

    :cond_4
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int v1, v4, v5

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int v6, v5, v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_4
    mul-int/2addr v5, v6

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_6
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_8
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method public onNext()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x102a

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_1
    return-void
.end method

.method public onPrev()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-lez v1, :cond_1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x102a

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_1
    return-void
.end method
