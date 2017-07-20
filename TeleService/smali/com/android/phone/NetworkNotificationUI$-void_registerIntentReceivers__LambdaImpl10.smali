.class final synthetic Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_registerIntentReceivers__LambdaImpl10"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;->val$this:Lcom/android/phone/NetworkNotificationUI;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;->val$this:Lcom/android/phone/NetworkNotificationUI;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->-com_android_phone_NetworkNotificationUI_lambda$11(Landroid/content/Intent;)V

    return-void
.end method
