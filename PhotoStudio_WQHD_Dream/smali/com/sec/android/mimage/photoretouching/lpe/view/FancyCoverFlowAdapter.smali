.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;
.super Landroid/widget/BaseAdapter;
.source "FancyCoverFlowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCoverFlowItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getCoverFlowLabel(I)Ljava/lang/String;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    move-object v0, p3

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlow;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->removeAllViews()V

    :goto_0
    invoke-virtual {p0, p1, v2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;->getCoverFlowItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "getCoverFlowItem() was expected to return a view, but null was returned."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowAdapter;->getCoverFlowLabel(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/FancyCoverFlowItemWrapper;->label:Ljava/lang/String;

    return-object v1
.end method
