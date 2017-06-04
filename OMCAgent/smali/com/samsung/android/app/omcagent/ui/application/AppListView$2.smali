.class Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;ILjava/util/LinkedHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$000(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # invokes: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->calCntOfSelectedItems()V
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$100(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$300(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$400(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v3

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I
    invoke-static {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$700(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/common/util/GeneralUtils;->getNumWithRTL(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v3

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
