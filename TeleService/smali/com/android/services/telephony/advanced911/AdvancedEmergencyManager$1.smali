.class Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;
.super Landroid/os/Handler;
.source "AdvancedEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;->this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "EVENT_PLACE_EMERGENCY_CONNECTION"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;->this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

    invoke-static {v1, v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->-wrap0(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x38f
        :pswitch_0
    .end packed-switch
.end method
