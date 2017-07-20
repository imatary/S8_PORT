.class Lcom/android/phone/VzwAdvancedCallingSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "VzwAdvancedCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$2;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, " Enabling back Advanced Calling Settings UI in call idle state"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$2;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap6(Lcom/android/phone/VzwAdvancedCallingSettings;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, " Disabling Advanced Calling Settings UI in In-Call state"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$2;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap6(Lcom/android/phone/VzwAdvancedCallingSettings;Z)V

    goto :goto_0
.end method
