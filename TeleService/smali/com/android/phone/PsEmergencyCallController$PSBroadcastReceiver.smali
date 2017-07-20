.class Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PsEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PsEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PSBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PsEmergencyCallController;


# direct methods
.method private constructor <init>(Lcom/android/phone/PsEmergencyCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PsEmergencyCallController;Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;-><init>(Lcom/android/phone/PsEmergencyCallController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBroadcastReceiver.onReceive(): intent.action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
