.class Lcom/android/phone/callsettings/IpCall$11;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->-set2(Lcom/android/phone/callsettings/IpCall;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Fragment finished. We ignore updateRejectMessage."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$11;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->-wrap9(Lcom/android/phone/callsettings/IpCall;)V

    return-void
.end method
