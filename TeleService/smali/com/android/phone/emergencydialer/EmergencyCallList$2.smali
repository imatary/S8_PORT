.class Lcom/android/phone/emergencydialer/EmergencyCallList$2;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/EmergencyCallList;->showEmergencyCallsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$2;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->-wrap0(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$2;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
