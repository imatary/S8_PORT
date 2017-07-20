.class final synthetic Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_registerIntentReceivers__LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/phone/NotificationMgr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;->val$this:Lcom/android/phone/NotificationMgr;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;->val$this:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->-com_android_phone_NotificationMgr_lambda$2(Landroid/content/Intent;)V

    return-void
.end method
