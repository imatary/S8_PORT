.class Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/application/AppListView;
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "appItem is null"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!appItem.isEnableCheckBox() || !appItem.isVisibleCheckBox() position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$300(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$100(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$808(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$800(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$700(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$000(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$400(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$810(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$000(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$000(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$800(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->access$800(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/common/util/GeneralUtils;->getNumWithRTL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
