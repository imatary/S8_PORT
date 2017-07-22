.class final Lcom/android/phone/utils/SoftPhoneUtils$1;
.super Ljava/lang/Object;
.source "SoftPhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/utils/SoftPhoneUtils;->makeDialog(Lcom/android/services/telephony/TelephonyConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conn:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/utils/SoftPhoneUtils$1;->val$conn:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/utils/SoftPhoneUtils$1;->val$conn:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/utils/SoftPhoneUtils$1;->val$conn:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    const-string/jumbo v1, "SoftPhoneUtils"

    const-string/jumbo v2, "click cancelTransferCall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelTransferCall()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const-string/jumbo v1, "SoftPhoneUtils"

    const-string/jumbo v2, "conn == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
