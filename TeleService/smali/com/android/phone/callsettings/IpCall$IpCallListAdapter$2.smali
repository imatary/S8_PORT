.class Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

.field final synthetic val$item:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$item:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v2, 0x7f0d063d

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get18(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)V

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->-set12(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get18(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v5}, Lcom/android/phone/callsettings/IpCall;->-set6(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap7(Lcom/android/phone/callsettings/IpCall;Landroid/database/Cursor;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->-set11(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v5}, Lcom/android/phone/callsettings/IpCall;->-set9(Lcom/android/phone/callsettings/IpCall;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-static {v1, v6, v2}, Lcom/android/phone/callsettings/IpCall;->-wrap4(Lcom/android/phone/callsettings/IpCall;ILandroid/widget/ListView;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v6}, Lcom/android/phone/callsettings/IpCall;->-set15(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Lcom/android/phone/callsettings/IpCall;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_6
    return v5
.end method
