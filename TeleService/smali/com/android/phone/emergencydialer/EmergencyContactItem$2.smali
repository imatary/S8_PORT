.class Lcom/android/phone/emergencydialer/EmergencyContactItem$2;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->updateCheck()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->notifyCheckChanged()V

    :cond_0
    return-void
.end method
