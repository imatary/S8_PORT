.class Lcom/android/phone/callsettings/IpCall$13;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->editDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$13;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->-get22(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap5(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap3(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
