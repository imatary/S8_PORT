.class Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$700(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$800(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->isOnPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$800(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->disconnectWithPlayDevice()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->dismiss()V

    return-void
.end method
