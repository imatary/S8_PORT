.class Lcom/android/phone/emergencydialer/EmergencyCallList$5;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$5;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$5;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->-wrap1(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$5;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$5;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->-wrap0(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList$5;->this$0:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
