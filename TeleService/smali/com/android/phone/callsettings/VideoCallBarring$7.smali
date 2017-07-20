.class Lcom/android/phone/callsettings/VideoCallBarring$7;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-get14(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-get12(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-get6(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const/4 v4, 0x3

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap2(Lcom/android/phone/callsettings/VideoCallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
