.class Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;
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


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "showRebootDialog: negative"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-get2(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateGlobalSummary(I)V

    return-void
.end method
