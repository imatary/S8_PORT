.class Lcom/android/phone/operator/usa/DataRoamingGuard$2;
.super Landroid/telephony/PhoneStateListener;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$2;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$2;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    :cond_1
    return-void
.end method
