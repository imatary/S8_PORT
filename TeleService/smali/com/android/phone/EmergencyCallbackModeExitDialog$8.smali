.class Lcom/android/phone/EmergencyCallbackModeExitDialog$8;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "exit_ecm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    return-void
.end method
