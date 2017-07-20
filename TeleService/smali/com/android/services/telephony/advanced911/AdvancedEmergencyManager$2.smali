.class Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;
.super Ljava/lang/Object;
.source "AdvancedEmergencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCallThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;->this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    iput-object p2, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "laaserManagerCallThread - command : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;->this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;->val$command:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->-wrap1(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Ljava/lang/String;)V

    return-void
.end method
