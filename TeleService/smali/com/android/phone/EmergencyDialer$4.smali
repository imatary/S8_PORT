.class Lcom/android/phone/EmergencyDialer$4;
.super Landroid/database/ContentObserver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "mOnehandEnabledObserver - recreateEmergencyDialer()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-wrap3(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method
