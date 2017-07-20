.class Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;
.super Ljava/lang/Object;
.source "NetworkModeCommonController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->setSelectedItem(I)V
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
