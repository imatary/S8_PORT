.class Lcom/android/phone/nwservice/CallForwarding$21;
.super Ljava/lang/Object;
.source "CallForwarding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallForwarding;->alertdialogCallForwardingVoicemailSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallForwarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallForwarding$21;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$21;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallForwarding;->-wrap7(Lcom/android/phone/nwservice/CallForwarding;Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
