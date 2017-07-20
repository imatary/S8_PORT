.class Lcom/android/services/telephony/TelecomAccountRegistry$3;
.super Landroid/telephony/PhoneStateListener;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$3;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$3;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get4(Lcom/android/services/telephony/TelecomAccountRegistry;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "service changed, re-registering phone accounts."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$3;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->-wrap2(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$3;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->-wrap1(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$3;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v1, v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->-set1(Lcom/android/services/telephony/TelecomAccountRegistry;I)I

    return-void
.end method
