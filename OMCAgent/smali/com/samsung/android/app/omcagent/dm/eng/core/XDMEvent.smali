.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEvent;
.super Ljava/lang/Object;
.source "XDMEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XDMSetEvent(Ljava/lang/Object;I)V
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    const/4 v2, 0x0

    move v0, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
