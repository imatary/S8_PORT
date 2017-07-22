.class public Lcom/android/phone/VoicemailUtils;
.super Ljava/lang/Object;
.source "VoicemailUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDataChannelState(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, v0}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    return-void
.end method
