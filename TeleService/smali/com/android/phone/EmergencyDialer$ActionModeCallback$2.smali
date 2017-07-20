.class Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    return-void
.end method
