.class Lcom/android/phone/VzwVoWiFiCallSettings$2;
.super Ljava/lang/Object;
.source "VzwVoWiFiCallSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwVoWiFiCallSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwVoWiFiCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$2;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    const-string/jumbo v1, "Vowifi switch clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$2;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->-wrap1(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V

    return-void
.end method
