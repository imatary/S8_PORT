.class final Lcom/android/phone/vvm/omtp/OmtpConstants$1;
.super Ljava/util/HashMap;
.source "OmtpConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/OmtpConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "ev"

    sget-object v1, Lcom/android/phone/vvm/omtp/OmtpConstants;->SYNC_TRIGGER_EVENT_VALUES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/vvm/omtp/OmtpConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "t"

    sget-object v1, Lcom/android/phone/vvm/omtp/OmtpConstants;->CONTENT_TYPE_VALUES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/vvm/omtp/OmtpConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "st"

    sget-object v1, Lcom/android/phone/vvm/omtp/OmtpConstants;->PROVISIONING_STATUS_VALUES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/vvm/omtp/OmtpConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rc"

    sget-object v1, Lcom/android/phone/vvm/omtp/OmtpConstants;->RETURN_CODE_VALUES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/vvm/omtp/OmtpConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
