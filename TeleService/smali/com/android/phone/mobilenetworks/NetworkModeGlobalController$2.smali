.class Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;
.super Ljava/lang/Object;
.source "NetworkModeGlobalController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showRebootDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iput p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->val$networkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "showRebootDialog: positive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->val$networkType:I

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateGlobalSummary(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->val$networkType:I

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setPreferredNetworkTypeRequest(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
