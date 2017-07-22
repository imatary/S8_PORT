.class final Lcom/android/phone/operator/usa/TelephonyExtension$3;
.super Ljava/lang/Object;
.source "TelephonyExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/TelephonyExtension;->onEmergencyCallbackModeChanged(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ecmIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtension$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/operator/usa/TelephonyExtension$3;->val$ecmIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtension$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/operator/usa/TelephonyExtension$3;->val$ecmIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v1, "TelephonyExtension"

    const-string/jumbo v2, "EmergencyCallbackMode Activity is started!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TelephonyExtension"

    const-string/jumbo v2, "EmergencyCallbackMode Activity is not available!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
