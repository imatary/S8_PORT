.class Lcom/android/phone/emergencydialer/EmergencyContactItem$6;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItem;->placeCall()V
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

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$6;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$6;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finish()V

    return-void
.end method
