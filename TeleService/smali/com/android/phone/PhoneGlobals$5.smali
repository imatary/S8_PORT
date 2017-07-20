.class Lcom/android/phone/PhoneGlobals$5;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneGlobals;->-wrap0(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V

    :cond_0
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneGlobals;->-wrap1(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V

    :cond_1
    return-void
.end method
