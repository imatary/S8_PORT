.class Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;
.super Ljava/lang/Object;
.source "NetworkModeMultiSimController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setSelectedItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getPreferredNetworkTypeRequest()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
