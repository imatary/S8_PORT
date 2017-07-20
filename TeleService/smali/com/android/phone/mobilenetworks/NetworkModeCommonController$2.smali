.class Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;
.super Ljava/lang/Object;
.source "NetworkModeCommonController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "mLteOnlyWarningAlertDialogListener: onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get2(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get2(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
