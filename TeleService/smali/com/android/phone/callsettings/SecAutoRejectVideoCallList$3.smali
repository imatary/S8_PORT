.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;
.super Landroid/database/ContentObserver;
.source "SecAutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->-get4(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->-set1(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Z)Z

    :cond_0
    return-void
.end method
