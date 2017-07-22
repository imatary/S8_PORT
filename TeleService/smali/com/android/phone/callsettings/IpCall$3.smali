.class Lcom/android/phone/callsettings/IpCall$3;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->addDialog()V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$3;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string/jumbo v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->-wrap2(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$3;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->-wrap3(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$3;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
