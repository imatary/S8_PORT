.class final synthetic Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_registerIntentReceivers__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/phone/NetworkSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;->val$this:Lcom/android/phone/NetworkSetting;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;->val$this:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkSetting;->-com_android_phone_NetworkSetting_lambda$1(Landroid/content/Intent;)V

    return-void
.end method
