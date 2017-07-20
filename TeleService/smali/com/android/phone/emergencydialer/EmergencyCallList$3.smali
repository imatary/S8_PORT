.class Lcom/android/phone/emergencydialer/EmergencyCallList$3;
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

.field final synthetic val$showEmergencyVideoCallBtn:Z


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/EmergencyCallList;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iput-boolean p2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->val$showEmergencyVideoCallBtn:Z

    iput-object p3, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->val$showEmergencyVideoCallBtn:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->val$number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$3;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->-wrap0(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
