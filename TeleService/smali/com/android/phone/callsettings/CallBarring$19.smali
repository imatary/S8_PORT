.class Lcom/android/phone/callsettings/CallBarring$19;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$19;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Send get command after receive error response of set command."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$19;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->-wrap8(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$19;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-wrap3(Lcom/android/phone/callsettings/CallBarring;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$19;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get1(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$19;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/CallBarring;->doCheckStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
