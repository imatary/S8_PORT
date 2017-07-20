.class Lcom/android/phone/NetworkNotificationUI$8;
.super Landroid/database/ContentObserver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNetworkStatus()I

    move-result v1

    int-to-byte v0, v1

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$8;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v1, v0}, Lcom/android/phone/NetworkNotificationUI;->-wrap3(Lcom/android/phone/NetworkNotificationUI;B)V

    return-void
.end method
