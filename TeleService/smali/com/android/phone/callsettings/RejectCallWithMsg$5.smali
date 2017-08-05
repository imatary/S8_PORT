.class Lcom/android/phone/callsettings/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "softkeyLeftRunm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v7, v7, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fragment finished. We ignore deleteRejectMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get18(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap0(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get17(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get18(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get19(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap5(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runrun : isDeleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0d0a5f

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap1(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap5(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get16(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v5

    if-ne v5, v8, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v5, v10}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set0(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_5
    return-void
.end method
