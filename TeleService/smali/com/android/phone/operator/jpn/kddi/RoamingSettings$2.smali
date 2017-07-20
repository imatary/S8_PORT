.class Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;
.super Landroid/database/ContentObserver;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->finish()V

    :cond_0
    return-void
.end method
