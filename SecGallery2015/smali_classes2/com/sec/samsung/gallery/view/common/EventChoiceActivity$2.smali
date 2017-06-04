.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;
.super Ljava/lang/Object;
.source "EventChoiceActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setStateChageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # setter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIsMultiWindow:Z
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$702(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method
