.class Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "SyncGroupItemContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->-set0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;Z)Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-wrap2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0271

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;->this$1:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
