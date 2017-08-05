.class Lcom/android/phone/callsettings/IpCall$16;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->deleteDialog()V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string/jumbo v2, "AUTO"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->-wrap5(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get5(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap0(Lcom/android/phone/callsettings/IpCall;I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get5(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get20(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v3, 0x7f0d0627

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->-wrap1(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$16;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
