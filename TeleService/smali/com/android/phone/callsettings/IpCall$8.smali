.class Lcom/android/phone/callsettings/IpCall$8;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get5(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap0(Lcom/android/phone/callsettings/IpCall;I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v5}, Lcom/android/phone/callsettings/IpCall;->-get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v11}, Lcom/android/phone/callsettings/IpCall;->-wrap5(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v6, "IPCL"

    const-string/jumbo v7, "DELETE"

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get12()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Lcom/android/phone/callsettings/IpCall;->-set5(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get5(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v9}, Lcom/android/phone/callsettings/IpCall;->-wrap10(Lcom/android/phone/callsettings/IpCall;Z)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v10}, Lcom/android/phone/callsettings/IpCall;->-wrap10(Lcom/android/phone/callsettings/IpCall;Z)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0d0a5f

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/callsettings/IpCall;->-wrap1(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v5}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v10}, Lcom/android/phone/callsettings/IpCall;->-wrap10(Lcom/android/phone/callsettings/IpCall;Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get21(Lcom/android/phone/callsettings/IpCall;)I

    move-result v4

    if-ne v4, v10, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get7(Lcom/android/phone/callsettings/IpCall;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->-get7(Lcom/android/phone/callsettings/IpCall;)Landroid/view/ActionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$8;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v4, v11}, Lcom/android/phone/callsettings/IpCall;->-set0(Lcom/android/phone/callsettings/IpCall;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_5
    return-void
.end method
