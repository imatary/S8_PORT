.class final Lcom/android/phone/PhoneUtilsIMS$1;
.super Ljava/lang/Object;
.source "PhoneUtilsIMS.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const-string/jumbo v0, "PhoneUtilsIMS"

    const-string/jumbo v1, "onConnected mImsManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const-string/jumbo v0, "PhoneUtilsIMS"

    const-string/jumbo v1, "onDisconnected mImsManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIMS;->-set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    return-void
.end method
