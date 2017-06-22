.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z
    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)Z

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setActionBarEnable(Z)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0805f1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    mul-int/2addr v6, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    neg-int v3, v2

    :goto_1
    add-int v0, v6, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    add-int/2addr v3, v2

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v3, v6

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v6, 0x7f02026f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iput-boolean v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->isEffectCheckEnable:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->tempIndex:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    const/16 v7, 0x1001

    if-eq v3, v7, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->showApplyCancel(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v2

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    add-int v6, v3, v2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_4
    mul-int/2addr v3, v6

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    add-int/2addr v3, v2

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v3, v6

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_6
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto :goto_3
.end method
