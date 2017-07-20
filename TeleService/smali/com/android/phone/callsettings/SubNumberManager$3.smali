.class Lcom/android/phone/callsettings/SubNumberManager$3;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SubNumberManager;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap0(Lcom/android/phone/callsettings/SubNumberManager;I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get19(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get18(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap4(Lcom/android/phone/callsettings/SubNumberManager;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const v4, 0x7f0d05c3

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SubNumberManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap1(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetInvalidated()V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v3}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap4(Lcom/android/phone/callsettings/SubNumberManager;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$3;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2, v6}, Lcom/android/phone/callsettings/SubNumberManager;->-set0(Lcom/android/phone/callsettings/SubNumberManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_4
    return-void
.end method
