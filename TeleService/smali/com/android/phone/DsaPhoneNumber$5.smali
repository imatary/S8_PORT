.class Lcom/android/phone/DsaPhoneNumber$5;
.super Landroid/content/BroadcastReceiver;
.source "DsaPhoneNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaPhoneNumber;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaPhoneNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaPhoneNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaPhoneNumber$5;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/android/phone/DsaPhoneNumber;->-wrap0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$5;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-virtual {v0}, Lcom/android/phone/DsaPhoneNumber;->finish()V

    :cond_0
    return-void
.end method
