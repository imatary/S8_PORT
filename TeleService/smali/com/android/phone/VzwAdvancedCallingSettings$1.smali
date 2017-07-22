.class Lcom/android/phone/VzwAdvancedCallingSettings$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange: changed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap4(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$1;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
